/** Reviewed institutional references shared with Masanawa-Web's civic catalogue.
 * These are evidence excerpts with attributed URLs, not real-time government
 * records or authority to speak for an agency. Keep provenance on every claim. */
type InstitutionEvidence = {
  url: string;
  label: string;
  responsibilities: string[];
  history?: string[];
  services?: string[];
  name?: string;
};

export const institutionEvidence: Readonly<Record<string, InstitutionEvidence>> = {
  "org-nigeria-centre-for-disease-control-and-prevention": {
    url: "https://www.ncdc.gov.ng/about/ncdc",
    label: "NCDC — national public health institute and mandate",
    responsibilities: [
      "Lead national preparedness, detection and response to infectious-disease outbreaks and public-health emergencies.",
      "Coordinate public-health surveillance and emergency response with relevant partners.",
    ],
    history: ["Established in 2011 from existing public-health programmes and placed on a statutory footing by the NCDC Establishment Act, 2018."],
  },
  "org-corporate-affairs-commission": {
    url: "https://www.cac.gov.ng/about",
    label: "CAC — corporate registry, history and functions",
    responsibilities: [
      "Register and regulate companies, business names, incorporated trustees and other registered entities under the Companies and Allied Matters Act.",
      "Maintain corporate records and oversee statutory compliance and post-incorporation filings.",
    ],
    history: ["The Commission was established under the Companies and Allied Matters Act of 1990, succeeding the former company registry."],
  },
  "org-senate-of-nigeria": {
    url: "https://www.nass.gov.ng/themes/newnass/senate.html",
    label: "National Assembly — Senate",
    responsibilities: [
      "Consider federal bills and appropriations alongside the House of Representatives.",
      "Review nominations for federal offices that require Senate confirmation.",
      "Oversee government functions through Senate committees.",
    ],
    services: ["Access Senate business and proceedings through the National Assembly."],
  },
  "org-house-of-representatives": {
    url: "https://nass.gov.ng/themes/newnass/reps.html",
    label: "National Assembly — House of Representatives",
    responsibilities: [
      "Represent 360 federal constituencies.",
      "Consider bills and federal appropriations, and exercise oversight through committees.",
    ],
    services: ["Access House business and proceedings through the National Assembly."],
  },
  "org-federal-judicial-service-commission": {
    url: "https://www.fjsc.gov.ng/composition-functions.php",
    label: "Federal Judicial Service Commission — composition and functions",
    responsibilities: [
      "Advise the National Judicial Council on nominees for judicial office in the superior federal courts.",
      "Recommend a qualified legal practitioner to serve as Secretary of the National Judicial Council.",
      "Appoint and exercise disciplinary control over specified federal judicial staff under the Constitution.",
    ],
    history: ["Established under Section 153 of the 1999 Constitution. Its functions are set out in the Third Schedule."],
  },
  "org-federal-capital-territory-administration": {
    url: "https://www.fcta.gov.ng/about/",
    label: "FCT Administration — history and mandate",
    responsibilities: [
      "Administer the Federal Capital Territory through the Minister and its secretariats.",
      "Coordinate territory services and infrastructure with the Federal Capital Development Authority and other FCT bodies.",
    ],
  },
  "org-federal-ministry-of-regional-development": {
    url: "https://regionaldev.gov.ng/about-us/",
    label: "Ministry of Regional Development — mandate",
    responsibilities: [
      "Develop and implement federal regional development plans.",
      "Oversee regional development commissions and coordinate programmes with communities and development partners.",
    ],
    history: ["The Ministry of Niger Delta Development was renamed the Ministry of Regional Development on 23 October 2024."],
  },
  "org-federal-ministry-of-steel-development": {
    url: "https://steel.gov.ng/",
    label: "Federal Ministry of Steel Development",
    responsibilities: ["Develop federal steel-sector policy and oversee initiatives to improve domestic steel production."],
  },
  "org-federal-ministry-of-humanitarian-affairs-and-poverty-reduction": {
    url: "https://fmhapr.gov.ng/",
    label: "Federal Ministry of Humanitarian Affairs and Poverty Reduction",
    responsibilities: ["Coordinate humanitarian response and federal poverty reduction programmes."],
  },
  "org-federal-ministry-of-special-duties-and-inter-governmental-affairs": {
    url: "https://www.fmsdiga.gov.ng/about/",
    label: "Ministry of Special Duties and Inter-Governmental Affairs — departments",
    responsibilities: [
      "Coordinate assigned special projects and intergovernmental activities.",
      "Monitor implementation of government decisions through the ministry's policy monitoring department.",
    ],
    history: ["Re-established in 2019. Its work previously sat within the Office of the Secretary to the Government of the Federation."],
  },
  "org-federal-ministry-of-innovation-science-and-technology": {
    url: "https://fmist.gov.ng/",
    label: "Federal Ministry of Innovation, Science and Technology",
    responsibilities: ["Coordinate federal policy and programmes for science, technology and innovation."],
  },
  "org-national-primary-health-care-development-agency": {
    url: "https://nphcda.gov.ng/brief-history-mandate/",
    label: "NPHCDA — history and mandate",
    responsibilities: [
      "Support the development of primary healthcare services across Nigeria.",
      "Provide technical and programme support to states and local governments, including on immunization.",
    ],
    history: ["Established under Decree 29 of 1992."],
  },
  "org-nigerian-correctional-service": {
    url: "https://corrections.gov.ng/storage/report/NCoS_act_2019.pdf",
    label: "Nigerian Correctional Service Act, 2019",
    responsibilities: [
      "Administer custodial centres and arrangements for people lawfully committed to custody.",
      "Implement court-ordered non-custodial measures, including community service and probation.",
    ],
    history: ["The Nigerian Correctional Service Act, 2019 replaced the Prisons Act."],
  },
  "org-nigerian-ports-authority": {
    url: "https://nigerianports.gov.ng/history/our-mandate/",
    label: "Nigerian Ports Authority — mandate",
    responsibilities: [
      "Develop and manage designated port infrastructure.",
      "Provide marine services and coordinate safe navigation within port limits.",
    ],
  },
  "org-independent-national-electoral-commission": {
    url: "https://www.inecnigeria.org/about",
    label: "INEC — constitutional functions",
    responsibilities: [
      "Organize and supervise federal and applicable state elections.",
      "Register voters and maintain the voters register.",
      "Register political parties and monitor their operations under the law.",
    ],
    services: ["Find election dates, candidate lists and voter registration information on the INEC website."],
  },
  "org-national-identity-management-commission": {
    url: "https://nimc.gov.ng/press-releases/president-tinubu-signs-nimc-act-2026-into-law",
    label: "NIMC — National Identity Management Commission Act, 2026",
    responsibilities: [
      "Operate the national identity system and issue National Identification Numbers.",
      "Serve as the root certification authority for Nigeria’s national public key infrastructure under the 2026 Act.",
    ],
    history: ["The National Identity Management Commission Act, 2026 was signed on 26 June 2026."],
  },
  "org-federal-government-press": {
    url: "https://fmino.gov.ng/departments/federal-government-press/",
    label: "Information Ministry — Federal Government Press",
    responsibilities: ["Print official gazettes, laws, statutory instruments and other federal government publications."],
  },
  "org-national-archives-of-nigeria": {
    url: "https://fmino.gov.ng/departments/national-archives/",
    label: "Information Ministry — National Archives of Nigeria",
    responsibilities: [
      "Acquire, preserve and provide access to federal government archives and other historical records covered by the National Archives Act.",
    ],
    history: ["The National Archives Act of 1992 sets out the federal archival mandate."],
    services: ["Consult the National Archives for access to public historical records."],
  },
  "org-citizenship-and-business-department": {
    url: "https://candb.interior.gov.ng/wp-content/uploads/2025/05/CB-Business-HANDBOOK.pdf",
    label: "Ministry of Interior — Citizenship and Business handbook",
    responsibilities: [
      "Process citizenship requests, business permits and expatriate quotas.",
      "Administer federal marriage registries and license places of worship for statutory marriages.",
    ],
    services: ["The Ministry of Interior’s eCitiBiz service handles applications for the department’s public services."],
  },
  "org-public-service-reforms-department": {
    name: "Reform Coordination and Service Improvement Department",
    url: "https://ohcsf.gov.ng/departments/",
    label: "Head of the Civil Service — departments",
    responsibilities: ["Coordinate reform and service-improvement work within the Office of the Head of the Civil Service."],
  },
};
