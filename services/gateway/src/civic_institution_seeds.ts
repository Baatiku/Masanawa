/** Canonical web directory institutional cohort, source-reviewed 18 Nov 2026.
 * Retain IDs so the civic directory and these independent AI guides can be
 * linked without matching names at runtime. Detailed claims still require
 * current attributed source evidence. */
export const CIVIC_INSTITUTION_SEEDS = Object.freeze([
  {
    "id": "org-the-presidency",
    "name": "The Presidency",
    "short": "The Presidency",
    "kind": "Institution",
    "topic": "Federal executive leadership, cabinet coordination and national policy direction",
    "source": "https://statehouse.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-national-assembly",
    "name": "National Assembly",
    "short": "National Assembly",
    "kind": "Institution",
    "topic": "Lawmaking, representation, oversight and approval of federal appropriations",
    "source": "https://nass.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-senate-of-nigeria",
    "name": "Senate of Nigeria",
    "short": "Senate of Nigeria",
    "kind": "Institution",
    "topic": "Representation of the states, legislation, appointments review and oversight",
    "source": "https://nass.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-house-of-representatives",
    "name": "House of Representatives",
    "short": "House of Representatives",
    "kind": "Institution",
    "topic": "Constituency representation, bills, public petitions and oversight",
    "source": "https://nass.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-supreme-court-of-nigeria",
    "name": "Supreme Court of Nigeria",
    "short": "Supreme Court of Nigeria",
    "kind": "Institution",
    "topic": "Final appellate adjudication and constitutional interpretation within its jurisdiction",
    "source": "https://supremecourt.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-national-judicial-council",
    "name": "National Judicial Council",
    "short": "National Judicial Council",
    "kind": "Institution",
    "topic": "Judicial appointments recommendations, discipline and administration",
    "source": "https://njc.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-judicial-service-commission",
    "name": "Federal Judicial Service Commission",
    "short": "Federal Judicial Service Commission",
    "kind": "Institution",
    "topic": "Judicial service appointments and employment recommendations",
    "source": "https://fjsconline.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-capital-territory-administration",
    "name": "Federal Capital Territory Administration",
    "short": "Federal Capital Territory Administration",
    "kind": "Institution",
    "topic": "Urban planning, public infrastructure and territory administration",
    "source": "https://fcta.gov.ng/",
    "jurisdiction": "FCT"
  },
  {
    "id": "org-office-of-the-secretary-to-the-government-of-the-federation",
    "name": "Office of the Secretary to the Government of the Federation",
    "short": "Office of the Secretary to the Government of the Federation",
    "kind": "Institution",
    "topic": "Cross-government policy tracking and administrative coordination",
    "source": "https://osgf.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-office-of-the-head-of-the-civil-service-of-the-federation",
    "name": "Office of the Head of the Civil Service of the Federation",
    "short": "Office of the Head of the Civil Service of the Federation",
    "kind": "Institution",
    "topic": "Federal civil-service policy, workforce systems and service reform",
    "source": "https://ohcsf.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-finance",
    "name": "Federal Ministry of Finance",
    "short": "Federal Ministry of Finance",
    "kind": "Ministry",
    "topic": "Federal revenues, fiscal management, treasury policy and budget financing",
    "source": "https://finance.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-education",
    "name": "Federal Ministry of Education",
    "short": "Federal Ministry of Education",
    "kind": "Ministry",
    "topic": "Federal education strategy, standards and tertiary-education coordination",
    "source": "https://education.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-health-and-social-welfare",
    "name": "Federal Ministry of Health and Social Welfare",
    "short": "Federal Ministry of Health and Social Welfare",
    "kind": "Ministry",
    "topic": "Health-system policy, services coordination and public health",
    "source": "https://health.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-agriculture-and-food-security",
    "name": "Federal Ministry of Agriculture and Food Security",
    "short": "Federal Ministry of Agriculture and Food Security",
    "kind": "Ministry",
    "topic": "Agriculture policy, food security and sector development",
    "source": "https://agriculture.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-works",
    "name": "Federal Ministry of Works",
    "short": "Federal Ministry of Works",
    "kind": "Ministry",
    "topic": "Federal roads, engineering standards and infrastructure construction",
    "source": "https://fmw.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-power",
    "name": "Federal Ministry of Power",
    "short": "Federal Ministry of Power",
    "kind": "Ministry",
    "topic": "Energy access, power-sector development and electricity policy",
    "source": "https://power.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-interior",
    "name": "Federal Ministry of Interior",
    "short": "Federal Ministry of Interior",
    "kind": "Ministry",
    "topic": "Internal security-related administration, citizenship and migration policy",
    "source": "https://interior.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-justice",
    "name": "Federal Ministry of Justice",
    "short": "Federal Ministry of Justice",
    "kind": "Ministry",
    "topic": "Federal legal representation, justice policy and legislative drafting",
    "source": "https://justice.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-defence",
    "name": "Federal Ministry of Defence",
    "short": "Federal Ministry of Defence",
    "kind": "Ministry",
    "topic": "Civilian defence policy and oversight of the armed forces",
    "source": "https://defence.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-foreign-affairs",
    "name": "Federal Ministry of Foreign Affairs",
    "short": "Federal Ministry of Foreign Affairs",
    "kind": "Ministry",
    "topic": "International relations, diplomacy and consular coordination",
    "source": "https://foreignaffairs.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-communications-innovation-and-digital-economy",
    "name": "Federal Ministry of Communications, Innovation and Digital Economy",
    "short": "Federal Ministry of Communications, Innovation and Digital Economy",
    "kind": "Ministry",
    "topic": "Telecommunications, digital infrastructure, innovation and technology policy",
    "source": "https://fmcide.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-information-and-national-orientation",
    "name": "Federal Ministry of Information and National Orientation",
    "short": "Federal Ministry of Information and National Orientation",
    "kind": "Ministry",
    "topic": "Federal information dissemination, media policy and civic orientation",
    "source": "https://fmino.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-budget-and-economic-planning",
    "name": "Federal Ministry of Budget and Economic Planning",
    "short": "Federal Ministry of Budget and Economic Planning",
    "kind": "Ministry",
    "topic": "National development plans, budget coordination and economic planning",
    "source": "https://nationalplanning.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-women-affairs",
    "name": "Federal Ministry of Women Affairs",
    "short": "Federal Ministry of Women Affairs",
    "kind": "Ministry",
    "topic": "Women’s development and policies on gender-related social concerns",
    "source": "https://womenaffairs.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-youth-development",
    "name": "Federal Ministry of Youth Development",
    "short": "Federal Ministry of Youth Development",
    "kind": "Ministry",
    "topic": "Youth development, participation and empowerment policy",
    "source": "https://fmyd.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-environment",
    "name": "Federal Ministry of Environment",
    "short": "Federal Ministry of Environment",
    "kind": "Ministry",
    "topic": "Environmental protection, climate policy and conservation",
    "source": "https://environment.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-water-resources-and-sanitation",
    "name": "Federal Ministry of Water Resources and Sanitation",
    "short": "Federal Ministry of Water Resources and Sanitation",
    "kind": "Ministry",
    "topic": "Water resource management, irrigation and sanitation policy",
    "source": "https://waterresources.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-aviation-and-aerospace-development",
    "name": "Federal Ministry of Aviation and Aerospace Development",
    "short": "Federal Ministry of Aviation and Aerospace Development",
    "kind": "Ministry",
    "topic": "Civil aviation and aerospace policy coordination",
    "source": "https://aviation.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-marine-and-blue-economy",
    "name": "Federal Ministry of Marine and Blue Economy",
    "short": "Federal Ministry of Marine and Blue Economy",
    "kind": "Ministry",
    "topic": "Marine economic development, ports and shipping policy",
    "source": "https://fmmbe.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-solid-minerals-development",
    "name": "Federal Ministry of Solid Minerals Development",
    "short": "Federal Ministry of Solid Minerals Development",
    "kind": "Ministry",
    "topic": "Mineral resource policy, mining-sector development and regulation",
    "source": "https://msmd.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-industry-trade-and-investment",
    "name": "Federal Ministry of Industry, Trade and Investment",
    "short": "Federal Ministry of Industry, Trade and Investment",
    "kind": "Ministry",
    "topic": "Industrial competitiveness, trade and investment policy",
    "source": "https://fmiti.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-labour-and-employment",
    "name": "Federal Ministry of Labour and Employment",
    "short": "Federal Ministry of Labour and Employment",
    "kind": "Ministry",
    "topic": "Labour standards, industrial relations and employment policy",
    "source": "https://labour.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-housing-and-urban-development",
    "name": "Federal Ministry of Housing and Urban Development",
    "short": "Federal Ministry of Housing and Urban Development",
    "kind": "Ministry",
    "topic": "Housing policy, urban development and settlement planning",
    "source": "https://fmhud.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-transportation",
    "name": "Federal Ministry of Transportation",
    "short": "Federal Ministry of Transportation",
    "kind": "Ministry",
    "topic": "Rail, road and intermodal transport-sector policy",
    "source": "https://transportation.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-innovation-science-and-technology",
    "name": "Federal Ministry of Innovation, Science and Technology",
    "short": "Federal Ministry of Innovation, Science and Technology",
    "kind": "Ministry",
    "topic": "National science, innovation and applied research policy",
    "source": "https://scienceandtech.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-art-culture-tourism-and-the-creative-economy",
    "name": "Federal Ministry of Art, Culture, Tourism and the Creative Economy",
    "short": "Federal Ministry of Art, Culture, Tourism and the Creative Economy",
    "kind": "Ministry",
    "topic": "Arts, heritage, tourism and creative-industry development",
    "source": "https://fmacce.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-regional-development",
    "name": "Federal Ministry of Regional Development",
    "short": "Federal Ministry of Regional Development",
    "kind": "Ministry",
    "topic": "Regional intervention and development programmes",
    "source": "https://regionaldevelopment.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-steel-development",
    "name": "Federal Ministry of Steel Development",
    "short": "Federal Ministry of Steel Development",
    "kind": "Ministry",
    "topic": "Steel industry and related industrial-policy development",
    "source": "https://msd.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-livestock-development",
    "name": "Federal Ministry of Livestock Development",
    "short": "Federal Ministry of Livestock Development",
    "kind": "Ministry",
    "topic": "Livestock development, animal production and related value chains",
    "source": "https://fmld.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-humanitarian-affairs-and-poverty-reduction",
    "name": "Federal Ministry of Humanitarian Affairs and Poverty Reduction",
    "short": "Federal Ministry of Humanitarian Affairs and Poverty Reduction",
    "kind": "Ministry",
    "topic": "Humanitarian-response coordination and poverty reduction policy",
    "source": "https://fmhds.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-special-duties-and-inter-governmental-affairs",
    "name": "Federal Ministry of Special Duties and Inter-Governmental Affairs",
    "short": "Federal Ministry of Special Duties and Inter-Governmental Affairs",
    "kind": "Ministry",
    "topic": "Special projects and intergovernmental affairs",
    "source": "https://specialduties.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-federal-ministry-of-petroleum-resources",
    "name": "Federal Ministry of Petroleum Resources",
    "short": "Federal Ministry of Petroleum Resources",
    "kind": "Ministry",
    "topic": "Policy and development oversight of petroleum and gas resources",
    "source": "https://petroleumresources.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-national-agency-for-food-and-drug-administration-and-control",
    "name": "National Agency for Food and Drug Administration and Control",
    "short": "National Agency for Food and Drug Administration and Control",
    "kind": "Agency",
    "topic": "Regulate and control food, drugs, cosmetics, medical devices and related products",
    "source": "https://nafdac.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Health and Social Welfare"
  },
  {
    "id": "org-national-health-insurance-authority",
    "name": "National Health Insurance Authority",
    "short": "National Health Insurance Authority",
    "kind": "Agency",
    "topic": "Health insurance and financial risk-protection coverage",
    "source": "https://nhia.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Health and Social Welfare"
  },
  {
    "id": "org-national-primary-health-care-development-agency",
    "name": "National Primary Health Care Development Agency",
    "short": "National Primary Health Care Development Agency",
    "kind": "Agency",
    "topic": "Support primary-healthcare systems and immunization coordination",
    "source": "https://nphcda.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Health and Social Welfare"
  },
  {
    "id": "org-federal-road-safety-corps",
    "name": "Federal Road Safety Corps",
    "short": "Federal Road Safety Corps",
    "kind": "Agency",
    "topic": "Road-safety enforcement, education and crash prevention",
    "source": "https://frsc.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-nigeria-immigration-service",
    "name": "Nigeria Immigration Service",
    "short": "Nigeria Immigration Service",
    "kind": "Agency",
    "topic": "Immigration administration, border controls and passport services",
    "source": "https://immigration.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-nigerian-correctional-service",
    "name": "Nigerian Correctional Service",
    "short": "Nigerian Correctional Service",
    "kind": "Agency",
    "topic": "Custodial and non-custodial corrections administration",
    "source": "https://corrections.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-nigerian-security-and-civil-defence-corps",
    "name": "Nigerian Security and Civil Defence Corps",
    "short": "Nigerian Security and Civil Defence Corps",
    "kind": "Agency",
    "topic": "Protection of critical assets and civil-defence duties",
    "source": "https://nscdc.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-federal-fire-service",
    "name": "Federal Fire Service",
    "short": "Federal Fire Service",
    "kind": "Agency",
    "topic": "Fire prevention, response and public safety information",
    "source": "https://fedfire.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-national-identity-management-commission",
    "name": "National Identity Management Commission",
    "short": "National Identity Management Commission",
    "kind": "Agency",
    "topic": "National identity enrolment, NIN management and verification systems",
    "source": "https://nimc.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-nigerian-communications-commission",
    "name": "Nigerian Communications Commission",
    "short": "Nigerian Communications Commission",
    "kind": "Agency",
    "topic": "Regulate communications services, spectrum and consumer protection",
    "source": "https://ncc.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Communications, Innovation and Digital Economy"
  },
  {
    "id": "org-national-information-technology-development-agency",
    "name": "National Information Technology Development Agency",
    "short": "National Information Technology Development Agency",
    "kind": "Agency",
    "topic": "National IT development, standards and digital skills policy",
    "source": "https://nitda.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Communications, Innovation and Digital Economy"
  },
  {
    "id": "org-national-broadcasting-commission",
    "name": "National Broadcasting Commission",
    "short": "National Broadcasting Commission",
    "kind": "Agency",
    "topic": "Broadcast licensing and broadcast-sector oversight",
    "source": "https://nbc.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Information and National Orientation"
  },
  {
    "id": "org-national-orientation-agency",
    "name": "National Orientation Agency",
    "short": "National Orientation Agency",
    "kind": "Agency",
    "topic": "Public civic-awareness and national-orientation programmes",
    "source": "https://noa.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Information and National Orientation"
  },
  {
    "id": "org-nigerian-ports-authority",
    "name": "Nigerian Ports Authority",
    "short": "Nigerian Ports Authority",
    "kind": "Agency",
    "topic": "Manage and develop designated seaports",
    "source": "https://nigerianports.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Marine and Blue Economy"
  },
  {
    "id": "org-nigerian-maritime-administration-and-safety-agency",
    "name": "Nigerian Maritime Administration and Safety Agency",
    "short": "Nigerian Maritime Administration and Safety Agency",
    "kind": "Agency",
    "topic": "Merchant-shipping safety, maritime administration and seafarer development",
    "source": "https://nimasa.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Marine and Blue Economy"
  },
  {
    "id": "org-federal-airports-authority-of-nigeria",
    "name": "Federal Airports Authority of Nigeria",
    "short": "Federal Airports Authority of Nigeria",
    "kind": "Agency",
    "topic": "Airport infrastructure and operational services",
    "source": "https://faan.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Aviation and Aerospace Development"
  },
  {
    "id": "org-nigerian-civil-aviation-authority",
    "name": "Nigerian Civil Aviation Authority",
    "short": "Nigerian Civil Aviation Authority",
    "kind": "Agency",
    "topic": "Civil-aviation safety and economic regulation",
    "source": "https://ncaa.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Aviation and Aerospace Development"
  },
  {
    "id": "org-national-emergency-management-agency",
    "name": "National Emergency Management Agency",
    "short": "National Emergency Management Agency",
    "kind": "Agency",
    "topic": "Coordinate disaster preparedness and emergency response",
    "source": "https://nema.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-national-drug-law-enforcement-agency",
    "name": "National Drug Law Enforcement Agency",
    "short": "National Drug Law Enforcement Agency",
    "kind": "Agency",
    "topic": "Enforce drug-control laws and support prevention and rehabilitation programmes",
    "source": "https://ndlea.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-economic-and-financial-crimes-commission",
    "name": "Economic and Financial Crimes Commission",
    "short": "Economic and Financial Crimes Commission",
    "kind": "Agency",
    "topic": "Investigate and prosecute financial and economic crimes within its statutory authority",
    "source": "https://efcc.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-independent-corrupt-practices-and-other-related-offences-commission",
    "name": "Independent Corrupt Practices and Other Related Offences Commission",
    "short": "Independent Corrupt Practices and Other Related Offences Commission",
    "kind": "Agency",
    "topic": "Investigate corruption offences and support prevention and education",
    "source": "https://icpc.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-independent-national-electoral-commission",
    "name": "Independent National Electoral Commission",
    "short": "Independent National Electoral Commission",
    "kind": "Agency",
    "topic": "Organize and supervise federal and state elections within its mandate",
    "source": "https://inecnigeria.org/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-central-bank-of-nigeria",
    "name": "Central Bank of Nigeria",
    "short": "Central Bank of Nigeria",
    "kind": "Agency",
    "topic": "Monetary policy, financial-system stability and currency management",
    "source": "https://cbn.gov.ng/",
    "jurisdiction": "Federal"
  },
  {
    "id": "org-national-bureau-of-statistics",
    "name": "National Bureau of Statistics",
    "short": "National Bureau of Statistics",
    "kind": "Agency",
    "topic": "Produce and disseminate official national statistics",
    "source": "https://nigerianstat.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Budget and Economic Planning"
  },
  {
    "id": "org-budget-office-of-the-federation",
    "name": "Budget Office of the Federation",
    "short": "Budget Office of the Federation",
    "kind": "Directorate",
    "topic": "Prepare federal budget documentation and monitor budget implementation",
    "source": "https://budgetoffice.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Budget and Economic Planning"
  },
  {
    "id": "org-federal-government-press",
    "name": "Federal Government Press",
    "short": "Federal Government Press",
    "kind": "Directorate",
    "topic": "Government printing, gazettes and public documents",
    "source": "https://fmino.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Information and National Orientation"
  },
  {
    "id": "org-national-archives-of-nigeria",
    "name": "National Archives of Nigeria",
    "short": "National Archives of Nigeria",
    "kind": "Directorate",
    "topic": "Preserve public archival holdings and facilitate historical access",
    "source": "https://fmino.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Information and National Orientation"
  },
  {
    "id": "org-citizenship-and-business-department",
    "name": "Citizenship and Business Department",
    "short": "Citizenship and Business Department",
    "kind": "Directorate",
    "topic": "Administer prescribed citizenship and expatriate-related government processes",
    "source": "https://interior.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Federal Ministry of Interior"
  },
  {
    "id": "org-public-service-reforms-department",
    "name": "Public Service Reforms Department",
    "short": "Public Service Reforms Department",
    "kind": "Directorate",
    "topic": "Coordinate public-service reform policies and implementation support",
    "source": "https://ohcsf.gov.ng/",
    "jurisdiction": "Federal",
    "parentName": "Office of the Head of the Civil Service of the Federation"
  }
] as const);
