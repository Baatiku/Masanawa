part 'country_contact_generated.dart';

/// Phone-number country mapping. The login screen auto-detects the user's
/// country from an explicit international prefix or manual country selection.
///
/// Rule: a leading `+` (or `00`) means "international" and is matched against
/// known dial codes (longest match wins). Shared prefixes such as +1 remain
/// unknown until the person confirms the country in the picker. A national
/// number receives only a locale suggestion, not a residence inference.
class PhoneCountry {
  const PhoneCountry({
    required this.dialCode,
    required this.iso,
    required this.name,
    required this.flag,
  });

  /// Digits only, no `+` (e.g. `234`).
  final String dialCode;
  final String iso;
  final String name;
  final String flag;

  String get displayCode => dialCode.isEmpty ? '' : '+$dialCode';
}

const PhoneCountry kDefaultCountry = PhoneCountry(
  dialCode: '234',
  iso: 'NG',
  name: 'Nigeria',
  flag: '🇳🇬',
);

const PhoneCountry kUnknownCountry = PhoneCountry(
  dialCode: '',
  iso: 'UN',
  name: 'Unknown region',
  flag: '🌍',
);

// The country list and calling codes come from the same versioned registry
// that generates the Gateway's validation data.

/// Detects the country from whatever the user typed. Empty input returns the
/// Nigerian default so the field never looks broken.
PhoneCountry detectCountry(String raw) {
  final trimmed = raw.trim();
  if (trimmed.isEmpty) return kDefaultCountry;
  var digits = trimmed.replaceAll(RegExp(r'\D'), '');
  if (trimmed.startsWith('00')) {
    digits = digits.replaceFirst(RegExp(r'^00'), '');
  }
  final international = trimmed.startsWith('+') || trimmed.startsWith('00');
  if (!international) return kDefaultCountry;
  final dial=internationalCallingCode(trimmed);
  if(dial==null)return kUnknownCountry;
  final matching=kPhoneCountries.where((country)=>country.dialCode==dial).toList();
  return matching.length==1?matching.single:kUnknownCountry;
}

/// Longest known calling code, deliberately not a claim about which country
/// owns a shared numbering plan (US/CA are both +1).
String? internationalCallingCode(String raw){
  final trimmed=raw.trim();
  if(!trimmed.startsWith('+')&&!trimmed.startsWith('00'))return null;
  var digits=trimmed.replaceAll(RegExp(r'\D'),'');
  if(trimmed.startsWith('00'))digits=digits.replaceFirst(RegExp(r'^00'),'');
  for(final country in _byLengthDesc){
    if(digits.startsWith(country.dialCode))return country.dialCode;
  }
  return null;
}

final List<PhoneCountry> _byLengthDesc = [...kPhoneCountries]
  ..sort((a, b) => b.dialCode.length.compareTo(a.dialCode.length));

/// A weak, editable first-signup suggestion from the device's language/region
/// settings. Locale does not establish where a person resides.
PhoneCountry suggestPhoneCountryFromLocale(String? region) {
  if (region == null) return kDefaultCountry;
  final iso = region.trim().toUpperCase();
  for (final country in kPhoneCountries) {
    if (country.iso == iso) return country;
  }
  return kDefaultCountry;
}

/// Normalizes free-typed input to `+`-prefixed E.164.
String normalizeE164(String raw, {PhoneCountry country = kDefaultCountry}) {
  final trimmed = raw.trim();
  if (trimmed.isEmpty) return '';
  final digits = trimmed.replaceAll(RegExp(r'\D'), '');
  if (digits.isEmpty) return '';
  if (trimmed.startsWith('+')) {
    // People may type a national trunk 0 after a prefilled +country prefix.
    // It is not part of most countries' E.164 numbers. Italy keeps its 0.
    final prefix=country.dialCode;
    if(country.iso!='IT'&&prefix.isNotEmpty&&digits.startsWith(prefix)){
      final national=digits.substring(prefix.length);
      if(national.startsWith('0'))return '+$prefix${national.replaceFirst(RegExp(r'^0+'),'')}';
    }
    return '+$digits';
  }
  if (trimmed.startsWith('00')) {
    final rest = digits.replaceFirst(RegExp(r'^00'), '');
    return rest.isEmpty ? '' : normalizeE164('+$rest',country:country);
  }
  // National digits belong to the selected country. Never infer a dial code
  // from a partially typed local number. Italy keeps its significant zero.
  final national = country.iso == 'IT'
      ? digits
      : digits.replaceFirst(RegExp(r'^0+'), '');
  if (national.isEmpty || country.dialCode.isEmpty) return '';
  return '+${country.dialCode}$national';
}

/// Preliminary client plausibility check; the Gateway independently validates
/// full E.164 metadata. Contact is not verified phone authentication.
bool isPlausibleSignupContact(String e164, PhoneCountry country) {
  if (!RegExp(r'^\+[1-9]\d{6,14}$').hasMatch(e164) ||
      country.dialCode.isEmpty ||
      !e164.startsWith('+${country.dialCode}')) return false;
  final national=e164.substring(country.dialCode.length+1);
  // Only a preliminary length guard. The Gateway's maintained metadata is
  // the authority, including newer mobile prefixes in every country.
  return national.length>=6&&national.length<=14;
}
