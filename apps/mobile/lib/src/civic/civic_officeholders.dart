/// Independently verified *officeholder index*, NOT character/persona profiles.
/// The visible state/FCT jurisdiction page may identify its current executive.
/// Individual civic biographies must pass the separate completeness review;
/// a verified name and title are insufficient to publish a person profile.
class CivicOfficeholder {
  const CivicOfficeholder(this.jurisdictionId,this.name,this.office,this.sourceUrl);
  final String jurisdictionId,name,office,sourceUrl;
}

const civicOfficeholderCheckedAt = '2026-11-08';
/// A bundled app snapshot must not claim a *current* officeholder forever.
bool get civicOfficeholderIndexFresh {
  final checked = DateTime.tryParse(civicOfficeholderCheckedAt);
  if (checked == null) return false;
  final now = DateTime.now().toUtc();
  return !now.isBefore(checked.toUtc()) &&
      now.difference(checked.toUtc()).inDays <= 30;
}
const _governorsSource = 'https://nggovernorsforum.org/index.php/ngf-governors';
const _fctSource = 'https://www.fcta.gov.ng/cat_team/minister/';

const civicExecutiveOfficeholders = <CivicOfficeholder>[
  CivicOfficeholder('state-abia','Alex Otti','Governor of Abia State',_governorsSource),
  CivicOfficeholder('state-adamawa','Ahmadu Umaru Fintiri','Governor of Adamawa State',_governorsSource),
  CivicOfficeholder('state-akwa-ibom','Umo Eno','Governor of Akwa Ibom State',_governorsSource),
  CivicOfficeholder('state-anambra','Charles Chukwuma Soludo','Governor of Anambra State',_governorsSource),
  CivicOfficeholder('state-bauchi','Bala Abdulkadir Mohammed','Governor of Bauchi State',_governorsSource),
  CivicOfficeholder('state-bayelsa','Douye Diri','Governor of Bayelsa State',_governorsSource),
  CivicOfficeholder('state-benue','Hyacinth Alia','Governor of Benue State',_governorsSource),
  CivicOfficeholder('state-borno','Babagana Umara Zulum','Governor of Borno State',_governorsSource),
  CivicOfficeholder('state-cross-river','Bassey Edet Otu','Governor of Cross River State',_governorsSource),
  CivicOfficeholder('state-delta','Sheriff Oborevwori','Governor of Delta State',_governorsSource),
  CivicOfficeholder('state-ebonyi','Francis Nwifuru','Governor of Ebonyi State',_governorsSource),
  CivicOfficeholder('state-edo','Monday Okpebholo','Governor of Edo State',_governorsSource),
  CivicOfficeholder('state-ekiti','Abiodun Oyebanji','Governor of Ekiti State',_governorsSource),
  CivicOfficeholder('state-enugu','Peter Mbah','Governor of Enugu State',_governorsSource),
  CivicOfficeholder('state-gombe','Muhammad Inuwa Yahaya','Governor of Gombe State',_governorsSource),
  CivicOfficeholder('state-imo','Hope Uzodinma','Governor of Imo State',_governorsSource),
  CivicOfficeholder('state-jigawa','Umar Namadi','Governor of Jigawa State',_governorsSource),
  CivicOfficeholder('state-kaduna','Uba Sani','Governor of Kaduna State',_governorsSource),
  CivicOfficeholder('state-kano','Abba Kabir Yusuf','Governor of Kano State',_governorsSource),
  CivicOfficeholder('state-katsina','Dikko Umar Radda','Governor of Katsina State',_governorsSource),
  CivicOfficeholder('state-kebbi','Nasir Idris','Governor of Kebbi State',_governorsSource),
  CivicOfficeholder('state-kogi','Ahmed Usman Ododo','Governor of Kogi State',_governorsSource),
  CivicOfficeholder('state-kwara','AbdulRahman AbdulRazaq','Governor of Kwara State',_governorsSource),
  CivicOfficeholder('state-lagos','Babajide Olusola Sanwo-Olu','Governor of Lagos State',_governorsSource),
  CivicOfficeholder('state-nasarawa','Abdullahi Sule','Governor of Nasarawa State',_governorsSource),
  CivicOfficeholder('state-niger','Mohammed Umar Bago','Governor of Niger State',_governorsSource),
  CivicOfficeholder('state-ogun','Dapo Abiodun','Governor of Ogun State',_governorsSource),
  CivicOfficeholder('state-ondo','Lucky Orimisan Aiyedatiwa','Governor of Ondo State',_governorsSource),
  CivicOfficeholder('state-osun','Ademola Adeleke','Governor of Osun State',_governorsSource),
  CivicOfficeholder('state-oyo','Seyi Abiodun Makinde','Governor of Oyo State',_governorsSource),
  CivicOfficeholder('state-plateau','Caleb Manasseh Mutfwang','Governor of Plateau State',_governorsSource),
  CivicOfficeholder('state-rivers','Siminalayi Fubara','Governor of Rivers State',_governorsSource),
  CivicOfficeholder('state-sokoto','Ahmad Aliyu Sokoto','Governor of Sokoto State',_governorsSource),
  CivicOfficeholder('state-taraba','Agbu Kefas','Governor of Taraba State',_governorsSource),
  CivicOfficeholder('state-yobe','Mai Mala Buni','Governor of Yobe State',_governorsSource),
  CivicOfficeholder('state-zamfara','Dauda Lawal','Governor of Zamfara State',_governorsSource),
  CivicOfficeholder('fct','Ezenwo Nyesom Wike','Minister of the Federal Capital Territory',_fctSource),
];

CivicOfficeholder? civicExecutiveFor(String jurisdictionId) {
  for (final holder in civicExecutiveOfficeholders) {
    if (holder.jurisdictionId == jurisdictionId) return holder;
  }
  return null;
}

/// Named National Assembly leadership is a chamber reference, not a claim
/// that the incomplete public member directories establish every occupant.
const civicLegislativeLeadership = <CivicOfficeholder>[
  CivicOfficeholder('senate','Godswill Akpabio','Senate President','https://nass.gov.ng/mps/senators'),
  CivicOfficeholder('senate','Ibrahim Jibrin','Deputy Senate President','https://nass.gov.ng/mps/senators'),
  CivicOfficeholder('house','Tajudeen Abbas','Speaker of the House','https://nass.gov.ng/mps/members'),
  CivicOfficeholder('house','Benjamin Kalu','Deputy Speaker of the House','https://nass.gov.ng/mps/members'),
];

List<CivicOfficeholder> civicLeadersForChamber(String id) =>
    civicLegislativeLeadership.where((leader) => leader.jurisdictionId == id)
      .toList(growable:false);
