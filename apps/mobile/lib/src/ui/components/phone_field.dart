import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../l10n/app_localizations.dart';
import '../../core/phone/country_codes.dart';
import '../../localization/international_digits.dart';
import '../../tokens/masanawa_tokens.dart';
import '../../theme/masanawa_theme.dart';

/// WhatsApp-style phone input with automatic country detection: as the user
/// types an international number (`+233 ...`), the flag + dial code + country
/// name update live. National numbers use the country selected by the user.
class PhoneField extends StatefulWidget {
  const PhoneField({
    super.key,
    required this.controller,
    this.autofocus = false,
    this.onCountryChanged,
    this.enabled = true,
    this.initialCountry = kDefaultCountry,
    this.nationalEntry = false,
  });

  final TextEditingController controller;
  final bool autofocus;
  final ValueChanged<PhoneCountry>? onCountryChanged;
  final bool enabled;
  final PhoneCountry initialCountry;
  /// Present the calling code as a fixed picker prefix and let the person
  /// edit only national digits. The public [controller] still holds E.164.
  final bool nationalEntry;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  PhoneCountry _country = kDefaultCountry;
  final _national = TextEditingController();
  bool _writingCombined = false;

  String _nationalPart(String raw, PhoneCountry country) {
    final trimmed = raw.trim();
    if (trimmed.startsWith('+') || trimmed.startsWith('00')) {
      final international = trimmed.startsWith('00')
          ? '+${trimmed.substring(2)}' : trimmed;
      final prefix = '+${country.dialCode}';
      if (country.dialCode.isNotEmpty && international.startsWith(prefix)) {
        return international.substring(prefix.length).replaceAll(RegExp(r'\D'), '');
      }
    }
    return trimmed.replaceAll(RegExp(r'\D'), '');
  }

  void _writeCombined() {
    if (!widget.nationalEntry) return;
    final digits = _national.text.replaceAll(RegExp(r'\D'), '');
    final combined = _country.dialCode.isEmpty
        ? (digits.isEmpty ? '' : '+$digits')
        : '+${_country.dialCode}$digits';
    if (widget.controller.text == combined) return;
    _writingCombined = true;
    widget.controller.text = combined;
    _writingCombined = false;
  }

  @override
  void initState() {
    super.initState();
    final raw = widget.controller.text.trim();
    final detected=raw.startsWith('+') || raw.startsWith('00')
        ? detectCountry(raw):widget.initialCountry;
    _country=detected.dialCode==widget.initialCountry.dialCode
      ?widget.initialCountry:detected;
    if (widget.nationalEntry) {
      _national.text = _nationalPart(raw, _country);
      _writeCombined();
    }
    widget.controller.addListener(_onControllerChanged);
  }

  @override
  void didUpdateWidget(PhoneField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_onControllerChanged);
      widget.controller.addListener(_onControllerChanged);
      _onControllerChanged();
    }
    if (widget.nationalEntry != oldWidget.nationalEntry) {
      _national.text = _nationalPart(widget.controller.text, _country);
      if (widget.nationalEntry) _writeCombined();
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChanged);
    _national.dispose();
    super.dispose();
  }

  void _onControllerChanged() {
    if (!widget.nationalEntry) {
      _onChanged(widget.controller.text);
      return;
    }
    if (_writingCombined) return;
    final raw = widget.controller.text;
    final detected = detectCountry(raw);
    final country = detected.dialCode == _country.dialCode ? _country : detected;
    if (country.iso != _country.iso) {
      setState(() => _country = country);
      widget.onCountryChanged?.call(country);
    }
    final national = _nationalPart(raw, country);
    if (_national.text != national) _national.text = national;
  }

  void _onChanged(String value) {
    final trimmed = value.trim();
    if (widget.nationalEntry) {
      if (trimmed.startsWith('+') || trimmed.startsWith('00')) {
        final detected = detectCountry(trimmed);
        final selected = detected.dialCode == _country.dialCode
            ? _country : detected;
        if (selected.iso != _country.iso) {
          setState(() => _country = selected);
          widget.onCountryChanged?.call(selected);
        }
        final national = _nationalPart(trimmed, selected);
        _national.value = TextEditingValue(text: national,
          selection: TextSelection.collapsed(offset: national.length));
      }
      _writeCombined();
      return;
    }
    if (!trimmed.startsWith('+') && !trimmed.startsWith('00')) return;
    final detected = detectCountry(value);
    // +1 is shared. Do not undo an explicit Canada/USA selection.
    if(_country.dialCode.isNotEmpty&&detected.dialCode==_country.dialCode)return;
    if (detected.iso != _country.iso ||
        detected.dialCode != _country.dialCode) {
      setState(() => _country = detected);
      widget.onCountryChanged?.call(detected);
    }
  }

  void _selectCountry(PhoneCountry country) {
    final raw = widget.controller.text.trim();
    final previous = _country;
    setState(() => _country = country);
    if (widget.nationalEntry) {
      _writeCombined();
      widget.onCountryChanged?.call(country);
      return;
    }
    widget.onCountryChanged?.call(country);
    if ((raw.startsWith('+') || raw.startsWith('00')) &&
        previous.dialCode.isNotEmpty) {
      final international = normalizeE164(raw);
      final prefix = '+${previous.dialCode}';
      final national = international.startsWith(prefix)
          ? international.substring(prefix.length)
          : '';
      final replacement = '+${country.dialCode}$national';
      widget.controller.value = TextEditingValue(
        text: replacement,
        selection: TextSelection.collapsed(offset: replacement.length),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final u = context.masanawa;
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          key: widget.nationalEntry ? const Key('phone-national-number') : null,
          controller: widget.nationalEntry ? _national : widget.controller,
          enabled: widget.enabled,
          autofocus: widget.autofocus,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            const InternationalDigitsFormatter(),
            FilteringTextInputFormatter.allow(RegExp(r'[0-9+\s]')),
          ],
          onChanged: _onChanged,
          style: TextStyle(
            fontSize: MasanawaTokens.fontSize['md'],
            color: Theme.of(context).colorScheme.onSurface,
          ),
          decoration: InputDecoration(
            prefixIcon: PopupMenuButton<PhoneCountry>(
              key: const Key('phone-country-picker'),
              enabled: widget.enabled,
              tooltip: l10n.countryDialCode(_country.displayCode),
              onSelected: _selectCountry,
              itemBuilder: (_) => [
                for (final country in kPhoneCountries)
                  PopupMenuItem(
                    key: Key('phone-country-${country.iso}'),
                    value: country,
                    child: Text(
                      '${country.flag} ${country.name} ${country.displayCode}',
                    ),
                  ),
              ],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 12),
                  Text(_country.flag, style: const TextStyle(fontSize: 22)),
                  const SizedBox(width: 6),
                  Text(
                    _country.displayCode.isEmpty ? '–––' : _country.displayCode,
                    style: TextStyle(
                      fontSize: MasanawaTokens.fontSize['md'],
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_drop_down, size: 20),
                ],
              ),
            ),
            hintText: widget.nationalEntry
                ? (Localizations.localeOf(context).languageCode == 'ha'
                    ? 'Sauran lambobin wayarka' : 'National phone number')
                : '${_country.displayCode} …',
            hintStyle: TextStyle(color: u.textMuted),
            filled: true,
            fillColor: u.surfaceCard,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MasanawaTokens.radius['md']!),
              borderSide: BorderSide(color: u.structuralBorder),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MasanawaTokens.radius['md']!),
              borderSide: BorderSide(color: u.structuralBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MasanawaTokens.radius['md']!),
              borderSide: BorderSide(color: u.brand, width: 2),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          widget.nationalEntry
              ? (Localizations.localeOf(context).languageCode == 'ha'
                  ? 'Shigar da sauran lambobin wayarka. Za ka iya canja ƙasa.'
                  : 'Enter the rest of your number; country is editable.')
              : _country.displayCode.isEmpty
              ? l10n.unknownCountryDialCode
              : '${_country.flag} ${l10n.countryDialCode(_country.displayCode)}',
          style: TextStyle(
            fontSize: MasanawaTokens.fontSize['xs'],
            color: u.textMuted,
          ),
        ),
      ],
    );
  }
}
