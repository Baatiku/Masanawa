/// Versioned, attributed civic reference records. These are NOT chat Characters
/// or evidence that a government body operates a Masanawa account.
///
/// Keep people, offices and institutions separate. Never infer a current office
/// from an earlier tenure, and never turn a missing achievement into a claim.
enum CivicKind { person, institution, office, department, jurisdiction }

enum CivicBranch { executive, legislature, judiciary, independent, historic }

class CivicTenure {
  const CivicTenure(this.title, this.from, this.to);
  final String title, from, to;
  bool get ongoing => to == 'present';
}

class CivicEntry {
  const CivicEntry({
    required this.id,
    required this.name,
    required this.kind,
    required this.branch,
    required this.summary,
    required this.sourceUrl,
    this.shortName,
    this.parentId,
    this.sector = 'Governance',
    this.level = 'Federal',
    this.responsibilities = const [],
    this.services = const [],
    this.tenures = const [],
    this.initiatives = const [],
    this.website,
    this.deceased = false,
    this.updatedAt = '2026-11-08',
  });

  final String id, name, summary, sourceUrl, sector, level, updatedAt;
  final String? shortName, parentId, website;
  final CivicKind kind;
  final CivicBranch branch;
  final List<String> responsibilities, services, initiatives;
  final List<CivicTenure> tenures;
  final bool deceased;

  String get category => switch (kind) {
    CivicKind.person => 'People',
    CivicKind.department => 'Directorates',
    CivicKind.office => 'Government',
    CivicKind.jurisdiction => 'Government',
    CivicKind.institution => 'Agencies',
  };

  String get subtitle => shortName == null ? category : '$shortName · $category';

  String get searchable => [
    name,
    shortName ?? '',
    sector,
    level,
    summary,
    ...responsibilities,
    ...services,
    ...tenures.map((t) => t.title),
  ].join(' ').toLowerCase();
}

const _heads = 'https://statehouse.gov.ng/past-heads-of-state-and-presidents/';
const _mdas = 'https://ohcsf.gov.ng/ministries-departments-and-agencies/';
const _senate = 'https://nass.gov.ng/about/item/9';
const _judiciary = 'https://www.supremecourt.gov.ng/court-jurisdiction';

/// Dates are the public tenures given by the State House (not life spans).
/// The office of prime minister is intentionally distinct from president.
const civicHeadsOfGovernment = <CivicEntry>[
  CivicEntry(id:'tinubu',name:'Bola Ahmed Tinubu',kind:CivicKind.person,branch:CivicBranch.executive,
    summary:'President of the Federal Republic of Nigeria since 29 May 2023. Previously Governor of Lagos State.',
    sourceUrl:'https://statehouse.gov.ng/team/bola-ahmed-tinubu/',
    tenures:[CivicTenure('President of Nigeria','29 May 2023','present'),CivicTenure('Governor of Lagos State','29 May 1999','29 May 2007')]),
  CivicEntry(id:'buhari',name:'Muhammadu Buhari',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Former military Head of State and later elected President; died in July 2025.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','29 May 2015','29 May 2023'),CivicTenure('Military Head of State','31 December 1983','27 August 1985')]),
  CivicEntry(id:'jonathan',name:'Goodluck Ebele Jonathan',kind:CivicKind.person,branch:CivicBranch.historic,
    summary:'President during the Fourth Republic, succeeding Umaru Musa Yar’Adua.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','6 May 2010','29 May 2015')]),
  CivicEntry(id:'yaradua',name:'Umaru Musa Yar’Adua',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Elected President of Nigeria in the Fourth Republic.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','29 May 2007','5 May 2010')]),
  CivicEntry(id:'obasanjo',name:'Olusegun Obasanjo',kind:CivicKind.person,branch:CivicBranch.historic,
    summary:'Served as both military Head of State and elected civilian President.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','29 May 1999','29 May 2007'),CivicTenure('Military Head of State','13 February 1976','1 October 1979')]),
  CivicEntry(id:'abdulsalami',name:'Abdulsalami Abubakar',kind:CivicKind.person,branch:CivicBranch.historic,
    summary:'Military Head of State preceding the return to civilian rule in 1999.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','9 June 1998','29 May 1999')]),
  CivicEntry(id:'abacha',name:'Sani Abacha',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Military Head of State between 1993 and 1998.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','17 November 1993','8 June 1998')]),
  CivicEntry(id:'shonekan',name:'Ernest Shonekan',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Head of the Interim National Government in 1993.',sourceUrl:_heads,
    tenures:[CivicTenure('Interim Head of State','26 August 1993','17 November 1993')]),
  CivicEntry(id:'babangida',name:'Ibrahim Badamasi Babangida',kind:CivicKind.person,branch:CivicBranch.historic,
    summary:'Military Head of State between 1985 and 1993.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','27 August 1985','26 August 1993')]),
  CivicEntry(id:'shagari',name:'Shehu Shagari',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Civilian President during the Second Republic.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','1 October 1979','31 December 1983')]),
  CivicEntry(id:'murtala',name:'Murtala Ramat Mohammed',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Military Head of State from July 1975 until February 1976.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','29 July 1975','13 February 1976')]),
  CivicEntry(id:'gowon',name:'Yakubu Gowon',kind:CivicKind.person,branch:CivicBranch.historic,
    summary:'Military Head of State between 1966 and 1975.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','1 August 1966','29 July 1975')]),
  CivicEntry(id:'ironsi',name:'Johnson Aguiyi-Ironsi',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Nigeria’s first military Head of State in 1966.',sourceUrl:_heads,
    tenures:[CivicTenure('Military Head of State','16 January 1966','29 July 1966')]),
  CivicEntry(id:'azikiwe',name:'Nnamdi Azikiwe',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'President of Nigeria during the First Republic.',sourceUrl:_heads,
    tenures:[CivicTenure('President of Nigeria','1 October 1963','16 January 1966')]),
  CivicEntry(id:'balewa',name:'Abubakar Tafawa Balewa',kind:CivicKind.person,branch:CivicBranch.historic,deceased:true,
    summary:'Prime Minister at independence. The prime ministership was distinct from the presidency.',sourceUrl:_heads,
    tenures:[CivicTenure('Prime Minister of Nigeria','1 October 1960','15 January 1966')]),
];

const civicGovernment = <CivicEntry>[
  CivicEntry(id:'executive',name:'Executive arm of government',kind:CivicKind.office,branch:CivicBranch.executive,
    summary:'Implements laws and administers national policies through the Presidency, ministries and agencies.',
    sourceUrl:'https://statehouse.gov.ng/presidency/',responsibilities:['Public administration','Implementing enacted laws','Managing federal executive institutions']),
  CivicEntry(id:'legislature',name:'Legislative arm of government',kind:CivicKind.office,branch:CivicBranch.legislature,
    summary:'Makes federal laws, represents citizens and oversees government spending and activities.',sourceUrl:_senate,
    responsibilities:['Lawmaking','Representation','Oversight of the executive']),
  CivicEntry(id:'judiciary',name:'Judicial arm of government',kind:CivicKind.office,branch:CivicBranch.judiciary,
    summary:'Interprets the law and resolves cases through the courts.',sourceUrl:_judiciary,
    responsibilities:['Adjudication','Constitutional interpretation','Independent administration of justice']),
  CivicEntry(id:'presidency',name:'The Presidency',kind:CivicKind.office,branch:CivicBranch.executive,parentId:'executive',
    summary:'The offices and institutions supporting the President and Vice President of Nigeria.',sourceUrl:'https://statehouse.gov.ng/',
    responsibilities:['Executive coordination','Presidential administration']),
  CivicEntry(id:'national-assembly',name:'National Assembly',shortName:'NASS',kind:CivicKind.institution,branch:CivicBranch.legislature,parentId:'legislature',
    summary:'Nigeria’s bicameral federal legislature comprising the Senate and House of Representatives.',sourceUrl:_senate,
    responsibilities:['Passing federal laws','Federal budget scrutiny','National representation']),
  CivicEntry(id:'senate',name:'Senate of Nigeria',kind:CivicKind.institution,branch:CivicBranch.legislature,parentId:'national-assembly',
    summary:'Upper chamber of Nigeria’s National Assembly.',sourceUrl:_senate,
    responsibilities:['Federal lawmaking','Senatorial representation','Oversight and confirmations']),
  CivicEntry(id:'house',name:'House of Representatives',kind:CivicKind.institution,branch:CivicBranch.legislature,parentId:'national-assembly',
    summary:'Lower chamber of Nigeria’s National Assembly.',sourceUrl:'https://nass.gov.ng/about/item/17',
    responsibilities:['Federal lawmaking','Constituency representation','Oversight and committees']),
  CivicEntry(id:'supreme-court',name:'Supreme Court of Nigeria',kind:CivicKind.institution,branch:CivicBranch.judiciary,parentId:'judiciary',
    summary:'Apex court in the Nigerian judicial system.',sourceUrl:_judiciary,
    responsibilities:['Final appellate jurisdiction','Constitutional cases within its jurisdiction']),
  CivicEntry(id:'court-of-appeal',name:'Court of Appeal',kind:CivicKind.institution,branch:CivicBranch.judiciary,parentId:'judiciary',
    summary:'Appellate court hearing appeals from courts and tribunals as prescribed by law.',sourceUrl:'https://www.courtofappeal.gov.ng/',
    responsibilities:['Hearing appeals','Reviewing lower-court decisions']),
  CivicEntry(id:'federal-high-court',name:'Federal High Court',kind:CivicKind.institution,branch:CivicBranch.judiciary,parentId:'judiciary',
    summary:'Federal trial court with jurisdiction defined by the Constitution and federal laws.',sourceUrl:'https://www.fhc.gov.ng/',
    responsibilities:['Federal matters assigned by law','Judicial dispute resolution']),
  CivicEntry(id:'ohcsf',name:'Office of the Head of the Civil Service of the Federation',shortName:'OHCSF',kind:CivicKind.institution,
    branch:CivicBranch.executive,parentId:'presidency',sourceUrl:'https://ohcsf.gov.ng/',
    summary:'Coordinates policy and standards for Nigeria’s federal civil service.',
    responsibilities:['Civil service management','Service-wide reforms','Civil service records and standards']),
  CivicEntry(id:'osgf',name:'Office of the Secretary to the Government of the Federation',shortName:'OSGF',kind:CivicKind.institution,
    branch:CivicBranch.executive,parentId:'presidency',sourceUrl:'https://www.osgf.gov.ng/',
    summary:'Coordinates government business and executive inter-ministerial processes.',
    responsibilities:['Cabinet and executive coordination','Government communication and policy follow-up']),
  CivicEntry(id:'inec',name:'Independent National Electoral Commission',shortName:'INEC',kind:CivicKind.institution,
    branch:CivicBranch.independent,sector:'Elections',sourceUrl:'https://www.inecnigeria.org/',
    summary:'Constitutional body that organises federal and state elections within its mandate.',
    responsibilities:['Conducting elections','Voter registration','Electoral education'],services:['Check voter registration','Find electoral guidance']),
  CivicEntry(id:'nimc',name:'National Identity Management Commission',shortName:'NIMC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Identity',sourceUrl:'https://nimc.gov.ng/',
    summary:'Manages Nigeria’s national identity system and National Identification Numbers (NIN).',
    responsibilities:['National identity database','Identity registration','NIN assignment'],services:['NIN enrolment guidance','Identity record enquiries']),
  CivicEntry(id:'nafdac',name:'National Agency for Food and Drug Administration and Control',shortName:'NAFDAC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Health',sourceUrl:'https://nafdac.gov.ng/',
    summary:'Regulates the safety and quality of medicines, foods and other products within its mandate.',
    responsibilities:['Product regulation','Safety surveillance','Registration of regulated products']),
  CivicEntry(id:'ncdc',name:'Nigeria Centre for Disease Control and Prevention',shortName:'NCDC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Health',sourceUrl:'https://ncdc.gov.ng/',
    summary:'National public-health body for infectious-disease surveillance and response.',
    responsibilities:['Disease surveillance','Outbreak preparedness and response','Public health guidance']),
  CivicEntry(id:'frsc',name:'Federal Road Safety Corps',shortName:'FRSC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Transport',sourceUrl:'https://frsc.gov.ng/',
    summary:'Federal road-traffic safety and enforcement agency.',
    responsibilities:['Road safety education','Traffic-law enforcement','Road crash prevention']),
  CivicEntry(id:'cac',name:'Corporate Affairs Commission',shortName:'CAC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Business',sourceUrl:'https://www.cac.gov.ng/',
    summary:'Administers registration and statutory records of companies and business names.',
    responsibilities:['Corporate registration','Business-name registration','Statutory filings']),
  CivicEntry(id:'cbn',name:'Central Bank of Nigeria',shortName:'CBN',kind:CivicKind.institution,
    branch:CivicBranch.independent,sector:'Finance',sourceUrl:'https://www.cbn.gov.ng/',
    summary:'Nigeria’s central bank with monetary policy and financial-system responsibilities.',
    responsibilities:['Monetary policy','Currency management','Financial stability']),
  CivicEntry(id:'efcc',name:'Economic and Financial Crimes Commission',shortName:'EFCC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Integrity',sourceUrl:'https://www.efcc.gov.ng/',
    summary:'Investigates and prosecutes economic and financial crimes within its legal remit.',
    responsibilities:['Financial crime investigation','Law-enforcement coordination','Public awareness']),
  CivicEntry(id:'icpc',name:'Independent Corrupt Practices and Other Related Offences Commission',shortName:'ICPC',kind:CivicKind.institution,
    branch:CivicBranch.independent,sector:'Integrity',sourceUrl:'https://icpc.gov.ng/',
    summary:'Investigates corruption and supports corruption prevention and education.',
    responsibilities:['Corruption investigations','Prevention','Public education']),
  CivicEntry(id:'ndlea',name:'National Drug Law Enforcement Agency',shortName:'NDLEA',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Security',sourceUrl:'https://ndlea.gov.ng/',
    summary:'Federal agency responsible for enforcing laws against illicit drug trafficking.',
    responsibilities:['Drug-law enforcement','Trafficking interdiction','Drug prevention education']),
  CivicEntry(id:'nis',name:'Nigeria Immigration Service',shortName:'NIS',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Identity',sourceUrl:'https://immigration.gov.ng/',
    summary:'Manages immigration controls and passport services within its mandate.',
    responsibilities:['Immigration control','Passports','Border administration']),
  CivicEntry(id:'nema',name:'National Emergency Management Agency',shortName:'NEMA',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Emergency',sourceUrl:'https://nema.gov.ng/',
    summary:'Coordinates emergency preparedness, disaster response and relief efforts.',
    responsibilities:['Disaster response coordination','Preparedness','Relief coordination']),
  CivicEntry(id:'ncc',name:'Nigerian Communications Commission',shortName:'NCC',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Technology',sourceUrl:'https://www.ncc.gov.ng/',
    summary:'Regulates telecommunications in Nigeria.',
    responsibilities:['Telecom licensing','Consumer protection in telecoms','Industry regulation']),
  CivicEntry(id:'nitda',name:'National Information Technology Development Agency',shortName:'NITDA',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Technology',sourceUrl:'https://nitda.gov.ng/',
    summary:'Promotes and regulates aspects of information technology development.',
    responsibilities:['IT policy implementation','Digital development','IT standards']),
  CivicEntry(id:'npa',name:'Nigerian Ports Authority',shortName:'NPA',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Transport',sourceUrl:'https://nigerianports.gov.ng/',
    summary:'Manages and regulates port infrastructure and operations under its mandate.',
    responsibilities:['Port infrastructure','Marine services','Port operations']),
  CivicEntry(id:'faan',name:'Federal Airports Authority of Nigeria',shortName:'FAAN',kind:CivicKind.institution,
    branch:CivicBranch.executive,sector:'Transport',sourceUrl:'https://faan.gov.ng/',
    summary:'Provides airport infrastructure and related services at designated airports.',
    responsibilities:['Airport facilities','Airport management','Passenger service facilities']),
];

// Source: OHCSF government ministries directory. Ministry titles and
// parenthood are editable records, not inferred from an agency acronym.
const _ministryRows = <(String, String, String, String)>[
  ('finance','Federal Ministry of Finance','Finance','https://www.finance.gov.ng/'),
  ('health','Federal Ministry of Health and Social Welfare','Health','https://www.health.gov.ng/'),
  ('education','Federal Ministry of Education','Education','https://education.gov.ng/'),
  ('justice','Federal Ministry of Justice','Justice','https://www.justice.gov.ng/'),
  ('interior','Federal Ministry of Interior','Identity','https://interior.gov.ng/'),
  ('defence','Federal Ministry of Defence','Security','https://defence.gov.ng/'),
  ('agriculture','Federal Ministry of Agriculture and Food Security','Agriculture','https://agriculture.gov.ng/'),
  ('works','Federal Ministry of Works','Infrastructure','https://fmw.gov.ng/'),
  ('power','Federal Ministry of Power','Infrastructure','https://power.gov.ng/'),
  ('transportation','Federal Ministry of Transportation','Transport','https://www.transportation.gov.ng/'),
  ('communications','Federal Ministry of Communications, Innovation and Digital Economy','Technology','https://fmcide.gov.ng/'),
  ('foreign-affairs','Ministry of Foreign Affairs','Diplomacy','https://foreignaffairs.gov.ng/'),
  ('women-affairs','Federal Ministry of Women Affairs','Social welfare','https://womenaffairs.gov.ng/'),
  ('environment','Federal Ministry of Environment','Environment','https://environment.gov.ng/'),
  ('labour','Federal Ministry of Labour and Employment','Employment','https://labour.gov.ng/'),
  ('humanitarian','Federal Ministry of Humanitarian Affairs and Poverty Reduction','Social welfare','https://fmhds.gov.ng/'),
  ('information','Federal Ministry of Information and National Orientation','Information','https://fmino.gov.ng/'),
  ('budget','Federal Ministry of Budget and Economic Planning','Finance','https://nationalplanning.gov.ng/'),
  ('blue-economy','Federal Ministry of Marine and Blue Economy','Transport','https://fmmbe.gov.ng/'),
  ('solid-minerals','Ministry of Solid Minerals Development','Natural resources','https://msmd.gov.ng/'),
];

final civicMinistries = List<CivicEntry>.unmodifiable(_ministryRows.map((row) => CivicEntry(
  id: 'ministry-${row.$1}', name: row.$2, kind: CivicKind.institution,
  branch: CivicBranch.executive, parentId:'executive', sector:row.$3,
  summary: 'Federal ministry responsible for ${row.$3.toLowerCase()} policy and administration, through its departments and agencies.',
  sourceUrl:_mdas, website:row.$4,
  responsibilities:['Federal ${row.$3.toLowerCase()} policy','Supervision and coordination within its lawful portfolio'],
)));

const civicDirectorates = <CivicEntry>[
  CivicEntry(id:'ohcsf-hr',name:'Human Resource Management',kind:CivicKind.department,branch:CivicBranch.executive,parentId:'ohcsf',
    summary:'Civil-service personnel management function within OHCSF.',sourceUrl:'https://ohcsf.gov.ng/departments/',
    responsibilities:['Human resource policy and civil service coordination']),
  CivicEntry(id:'ohcsf-records',name:'National Records Centre',kind:CivicKind.department,branch:CivicBranch.executive,parentId:'ohcsf',
    summary:'Service-wide records function within the Office of the Head of the Civil Service.',sourceUrl:'https://ohcsf.gov.ng/department/national-records-center/',
    responsibilities:['Federal civil service staff records','Information services for ministries and agencies']),
  CivicEntry(id:'ohcsf-training',name:'Leadership Management and Succession Planning',kind:CivicKind.department,branch:CivicBranch.executive,parentId:'ohcsf',
    summary:'Civil service leadership and succession-planning department.',sourceUrl:'https://ohcsf.gov.ng/departments/',
    responsibilities:['Leadership development','Succession planning']),
  CivicEntry(id:'nimc-it',name:'Information Technology / Identity Database Department',kind:CivicKind.department,branch:CivicBranch.executive,parentId:'nimc',sector:'Identity',
    summary:'Technical department listed within NIMC’s management structure.',sourceUrl:'https://nimc.gov.ng/nimc-management',
    responsibilities:['Technical support for national identity systems']),
];

const _states = <String>[
 'Abia','Adamawa','Akwa Ibom','Anambra','Bauchi','Bayelsa','Benue','Borno',
 'Cross River','Delta','Ebonyi','Edo','Ekiti','Enugu','Gombe','Imo','Jigawa',
 'Kaduna','Kano','Katsina','Kebbi','Kogi','Kwara','Lagos','Nasarawa','Niger',
 'Ogun','Ondo','Osun','Oyo','Plateau','Rivers','Sokoto','Taraba','Yobe','Zamfara',
];

final civicStates = List<CivicEntry>.unmodifiable([
  for (final state in _states)
    CivicEntry(id:'state-${state.toLowerCase().replaceAll(' ','-')}',name:'$state State Government',
      kind:CivicKind.jurisdiction,branch:CivicBranch.executive,level:'State',sector:'Government',
      summary:'State-level government in $state, with executive, legislative and judicial institutions. Individual officials and ministries require state-specific verification.',
      sourceUrl:'https://www.nigeria.gov.ng/'),
  const CivicEntry(id:'fct',name:'Federal Capital Territory Administration',shortName:'FCTA',kind:CivicKind.jurisdiction,
    branch:CivicBranch.executive,level:'FCT',sector:'Government',
    summary:'Federal Capital Territory administration. The FCT is not a state; its governing arrangements differ from those of states.',
    sourceUrl:'https://fcta.gov.ng/'),
]);

final civicCatalog = List<CivicEntry>.unmodifiable([
  ...civicHeadsOfGovernment,
  ...civicGovernment,
  ...civicMinistries,
  ...civicDirectorates,
  ...civicStates,
]);

CivicEntry? civicById(String id) {
  for (final entry in civicCatalog) {
    if (entry.id == id) return entry;
  }
  return null;
}

List<CivicEntry> civicChildren(String id) => civicCatalog.where((e) => e.parentId == id).toList(growable:false);

List<CivicEntry> searchCivicDirectory({String query = '', String category = 'All', String sector = 'All'}) {
  final needle = query.trim().toLowerCase();
  return civicCatalog.where((e) {
    if (category == 'History' && (e.kind != CivicKind.person || e.branch != CivicBranch.historic)) return false;
    if (category == 'People' && e.kind != CivicKind.person) return false;
    if (category == 'Agencies' && e.kind != CivicKind.institution) return false;
    if (category == 'Government' && e.kind != CivicKind.office && e.kind != CivicKind.jurisdiction) return false;
    if (category == 'Directorates' && e.kind != CivicKind.department) return false;
    if (sector != 'All' && sector != e.sector) return false;
    return needle.isEmpty || e.searchable.contains(needle);
  }).toList(growable:false);
}
