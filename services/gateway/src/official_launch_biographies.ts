/** Attributed first-launch biographies reviewed 29 October 2026. Short original
 * summaries, not article copies. checkedAt is a reference-check date, not a
 * publication date. Stable character IDs bind each text to its actual subject.
 * Self biographies and opinion articles remain identified in the summary. */
import type {MasanaBiographicalFacts} from '@masanawa/masana';
export interface OfficialLaunchBiography {readonly characterId:string;readonly officialName:string;
 readonly displayName:string;readonly sourceUrl:string;readonly checkedAt:string;
 readonly summary:string;readonly biographicalFacts?:MasanaBiographicalFacts;}
export const OFFICIAL_LAUNCH_BIOGRAPHIES:readonly OfficialLaunchBiography[]=Object.freeze([
  {
    "displayName": "Bola Ahmed Tinubu",
    "sourceUrl": "https://en.wikipedia.org/wiki/Bola_Tinubu",
    "summary": "Bola Ahmed Tinubu became president of Nigeria on 29 May 2023. Earlier, he governed Lagos State from 1999 to 2007 and represented Lagos West in the Senate during the Third Republic. He studied accounting at Chicago State University and worked at Mobil Nigeria before entering national politics. After the military dissolved the Senate in 1993, he went into exile and participated in the movement for a return to civilian rule. His administration announced the removal of the petrol subsidy in 2023; the ensuing price rises prompted labour protests and negotiations.",
    "biographicalFacts": {
      "dateOfBirth": "1952-03-29",
      "birthPlace": "Lagos"
    },
    "characterId": "character_01a189e8-72e3-7257-bbba-33aa50b111d1",
    "officialName": "Bola Ahmed Tinubu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Atiku Abubakar",
    "sourceUrl": "https://en.wikipedia.org/wiki/Atiku_Abubakar",
    "summary": "Atiku Abubakar served as Nigeria’s vice president under Olusegun Obasanjo from 1999 to 2007. Born in Jada, he attended school in Adamawa, studied at Ahmadu Bello University’s Institute of Administration and joined the Nigeria Customs Service in 1969. He spent about twenty years in Customs before moving into business and politics. His business interests have included logistics, agriculture and education, including the American University of Nigeria in Yola. As vice president he chaired the National Economic Council and the National Council on Privatization. His public career also includes presidential campaigns and a public disagreement over the proposed third-term constitutional changes.",
    "biographicalFacts": {
      "dateOfBirth": "1946-11-25",
      "birthPlace": "Jada, Adamawa"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-09f3ad6bb782",
    "officialName": "Atiku Abubakar",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Peter Gregory Obi",
    "sourceUrl": "https://en.wikipedia.org/wiki/Peter_Obi",
    "summary": "Peter Obi is a businessman and former governor of Anambra State. His governorship began in 2006 and included court-ordered returns to office before a second term ending in 2014. He attended Christ the King College in Onitsha and the University of Nigeria, Nsukka, and worked in banking before full-time politics. He was Atiku Abubakar’s running mate in the 2019 presidential election and contested the presidency for the Labour Party in 2023. The reviewed record describes later party changes before his 2027 NDC candidacy.",
    "biographicalFacts": {
      "dateOfBirth": "1961-07-19",
      "birthPlace": "Onitsha, Anambra"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-1297b5bd6c48",
    "officialName": "Peter Gregory Obi",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Sandy Ojang Onor",
    "sourceUrl": "https://en.wikipedia.org/wiki/Sandy_Ojang_Onor",
    "summary": "Sandy Ojang Onor is a historian, author and former senator for Cross River Central, serving from 2019 to 2023. Born in Ikom, he studied history at the University of Calabar and completed a doctorate in 1993. He chaired Etung Local Government Council from 1999 to 2002 and later held state appointments, including the agriculture and environment portfolios. His published work includes writing on local governance, the Ejagham people and Nigerian history. The reviewed record identifies him with the PDP and the 2027 presidential contest.",
    "biographicalFacts": {
      "dateOfBirth": "1966-02-14",
      "birthPlace": "Ikom, Cross River"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-1867c028137d",
    "officialName": "Sandy Ojang Onor",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Aishatu Dahiru Ahmed",
    "sourceUrl": "https://en.wikipedia.org/wiki/Aishatu_Dahiru_Ahmed",
    "summary": "Aishatu Dahiru Ahmed, widely known as Aisha Binani, is an entrepreneur and politician. She represented Adamawa Central in the Senate from 2019 to 2023 and previously represented Yola North, Yola South and Girei in the House of Representatives from 2011 to 2015. She was born in Kaduna and attended school in Kaduna and Yola before studying electrical and electronics engineering at Federal Polytechnic, Mubi.",
    "biographicalFacts": {
      "dateOfBirth": "1971-08-11",
      "birthPlace": "Kaduna"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-50810a0b2665",
    "officialName": "Dahiru Aishatu Ahmed",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "John James Akpan Udo-Edehe",
    "sourceUrl": "https://en.wikipedia.org/wiki/John_James_Akpan_Udo-Edehe",
    "summary": "John James Akpan Udo-Edehe represented Akwa Ibom North-East in the Senate from 1999 to 2003. He also served as Minister of State for the Federal Capital Territory from July 2007 to October 2008. Born in Afaha Offot in Uyo, he studied sociology and anthropology at the University of Uyo and later development sociology at the University of Calabar. His career includes business leadership and local-government service in Uyo.",
    "biographicalFacts": {
      "dateOfBirth": "1963-11-09",
      "birthPlace": "Afaha Offot, Uyo"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-62b3cc3f9db5",
    "officialName": "John James Akpanudoedehe",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Umo Bassey Eno",
    "sourceUrl": "https://en.wikipedia.org/wiki/Umo_Eno",
    "summary": "Umo Bassey Eno became governor of Akwa Ibom State on 29 May 2023. A clergyman and businessman, he previously served as state Commissioner for Lands and Water Resources. He was born in Ikot Ekpene Udo in Nsit-Ubium and studied public administration at the University of Uyo. Before public office, his working life included banking and business management, and he founded Royalty Groups and All Nations Christian Ministry International.",
    "biographicalFacts": {
      "dateOfBirth": "1964-04-24",
      "birthPlace": "Ikot Ekpene Udo, Akwa Ibom"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-6baacea1c96f",
    "officialName": "Eno Umo Bassey",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Michael Okon Enyong",
    "sourceUrl": "https://en.wikipedia.org/wiki/Michael_Enyong",
    "summary": "Michael Okon Enyong is a politician associated with Uyo in Akwa Ibom State. He was elected in 2015 to represent the Uyo, Uruan, Nsit Atai and Ibesikpo Asutan federal constituency in the National Assembly. Before his legislative career he chaired the Akwa Ibom State Tourism Board. The biographical reference records education at the University of Uyo and a birth year of 1969, without a verified full birth date.",
    "biographicalFacts": {
      "birthPlace": "Uyo"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-732180ec6e9a",
    "officialName": "Enyong Michael Okon",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Halliru Dauda Jika",
    "sourceUrl": "https://en.wikipedia.org/wiki/Halliru_Dauda_Jika",
    "summary": "Halliru Dauda Jika is a businessman and former legislator from Bauchi State, also known as Dokaji. He represented Bauchi Central in the Senate from 2019 to 2023. His earlier career included the Bauchi State House of Assembly, where he served as speaker, and the federal House of Representatives. The reference records schooling at Sardauna Memorial College and civil-engineering studies at Kaduna Polytechnic. It supplies a birth year of 1976 rather than a complete verified birthday; no exact date is invented here.",
    "characterId": "character_01a189e8-72ea-7004-8490-80ddcad550b1",
    "officialName": "Halliru Dauda Jika",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Herman Iorwase Hembe",
    "sourceUrl": "https://en.wikipedia.org/wiki/Herman_Hembe",
    "summary": "Herman Iorwase Hembe is a lawyer and politician from Konshisha Local Government Area of Benue State. Born in Zaria, he attended Mount Saint Gabriel’s Secondary School in Makurdi and studied law at Benue State University, graduating in 2001. He attended the Nigerian Law School and was called to the Bar in 2003. His public career includes representing Vandeikya and Konshisha in the federal House of Representatives and contesting the 2023 Benue governorship election for the Labour Party.",
    "biographicalFacts": {
      "dateOfBirth": "1975-06-22",
      "birthPlace": "Zaria, Kaduna"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-a316b75d4676",
    "officialName": "Hembe Iorwase Herman",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Hyacinth Iormem Alia",
    "sourceUrl": "https://en.wikipedia.org/wiki/Hyacinth_Alia",
    "summary": "Hyacinth Iormem Alia is a Catholic cleric and politician who became governor of Benue State on 29 May 2023. He was born in Mbangur, Mbadede, in Vandeikya Local Government Area. His education included St. James Minor Seminary in Makurdi and St. Augustine’s Major Seminary in Jos, followed by studies in religious education at Fordham University and biomedical ethics at Duquesne University.",
    "biographicalFacts": {
      "dateOfBirth": "1966-05-15",
      "birthPlace": "Mbangur, Vandeikya, Benue"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-a8e943879b65",
    "officialName": "Alia Hyacinth Iormem",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Terhemba Shija",
    "sourceUrl": "https://en.wikipedia.org/wiki/Terhemba_Shija",
    "summary": "Terhemba Shija is a teacher, writer, literary critic and politician. Born in Gboko in Benue State, he is associated with Nyumangbagh, Mbaduku, in Vandeikya. He served in the federal House of Representatives in 1992 and later as Benue Commissioner for Local Government and Chieftaincy Affairs under Governor George Akume, resigning in December 2002. His academic work has included teaching at Nasarawa State University, Keffi. His publications span fiction, poetry, biography and criticism, including Whispers of Distant Drums, The Siege, The Saga and Cantos for the Benue.",
    "biographicalFacts": {
      "dateOfBirth": "1960-11-23",
      "birthPlace": "Gboko, Benue"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-b0f9b4451f9d",
    "officialName": "Shija Terhemba",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Michael Kaase Aondoakaa",
    "sourceUrl": "https://en.wikipedia.org/wiki/Michael_Aondoakaa",
    "summary": "Michael Kaase Aondoakaa is a lawyer and former Attorney General of the Federation and Minister of Justice. He held that federal office from July 2007 until February 2010. Born in Benue State, he attended Mount Saint Gabriel’s Secondary School in Makurdi and studied law at the University of Maiduguri. His earlier career included many years in private legal practice. As minister he participated in work on electoral reform following the Uwais committee report.",
    "biographicalFacts": {
      "dateOfBirth": "1962-06-12",
      "birthPlace": "Benue State"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-bae43276b327",
    "officialName": "Aondoakaa Michael Kaase",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Bassey Edet Otu",
    "sourceUrl": "https://en.wikipedia.org/wiki/Bassey_Otu",
    "summary": "Bassey Edet Otu became governor of Cross River State on 29 May 2023. He previously represented Calabar Municipal and Odukpani in the House of Representatives from 2003 to 2011 and Cross River South in the Senate from 2011 to 2015. Born in Calabar, he is associated with Adiabo in Odukpani and studied social sciences at the University of Calabar.",
    "biographicalFacts": {
      "dateOfBirth": "1959-10-18",
      "birthPlace": "Calabar, Cross River"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-e009892070b8",
    "officialName": "Otu Bassey Edet",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Arthur Javis Archibong",
    "sourceUrl": "https://www.premiumtimesng.com/regional/south-south-regional/903183-2027-cross-river-pdp-governorship-candidate-vows-to-do-single-term-if-elected.html",
    "summary": "Arthur Javis Archibong is a Cross River politician. Premium Times reported in August 2026 that, as the PDP governorship candidate, he pledged to serve a single term if elected in 2027. He connected that pledge to the Southern Senatorial District’s tenure and called for visits to communities beyond Calabar, closer supervision of projects and greater local-government autonomy. These are attributed campaign commitments, not findings that his programme has already been implemented.",
    "characterId": "character_01a189e8-72ea-7004-8490-eb3aaa49e8bb",
    "officialName": "Archibong Arthur Javis",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Great Ovedje Ogboru",
    "sourceUrl": "https://en.wikipedia.org/wiki/Great_Ogboru",
    "summary": "Great Ovedje Ogboru is a businessman and long-standing Delta State governorship contender. Born in Port Harcourt, he attended Government College, Ughelli, and later studied marketing, business administration and international relations in the United Kingdom. He worked in the fishing industry before founding Fiogret in 1987. His electoral history includes Delta governorship campaigns under different parties in 2003, 2007, 2015 and 2019. These candidacies are distinct from holding the office of governor.",
    "biographicalFacts": {
      "dateOfBirth": "1958-04-10",
      "birthPlace": "Port Harcourt"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-f13c87fac82a",
    "officialName": "Ogboru Ovedje Great",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Sheriff Francis Oborevwori",
    "sourceUrl": "https://en.wikipedia.org/wiki/Sheriff_Oborevwori",
    "summary": "Sheriff Francis Orohwedor Oborevwori became governor of Delta State on 29 May 2023. Before that, he represented Okpe in the Delta State House of Assembly and served as speaker from 2017 to 2023. He was born in Osubi in Okpe Local Government Area. His education includes political-science studies at Ambrose Alli University and Delta State University, followed by executive leadership programmes. His public experience therefore spans state legislation, legislative leadership and executive administration.",
    "biographicalFacts": {
      "dateOfBirth": "1963-06-19",
      "birthPlace": "Osubi, Delta"
    },
    "characterId": "character_01a189e8-72ea-7004-8490-fb967c7acfaf",
    "officialName": "Oborevwori Sheriff Francis Orohwedor",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Francis Ogbonna Nwifuru",
    "sourceUrl": "https://en.wikipedia.org/wiki/Francis_Nwifuru",
    "summary": "Francis Ogbonna Nwifuru became governor of Ebonyi State on 29 May 2023. He previously represented Izzi West in the state legislature from 2011 to 2023 and served as speaker from 2015 to 2023. From Oferekpe Agbaja in Izzi, he also served as deputy chief whip and chaired a committee dealing with land, survey, urban development and the environment. The reference records his move from the PDP to the APC in 2020.",
    "biographicalFacts": {
      "dateOfBirth": "1975-02-25",
      "birthPlace": "Oferekpe Agbaja, Ebonyi"
    },
    "characterId": "character_01a189e8-72ea-7004-8491-1b029975a1e2",
    "officialName": "Nwifuru Ogbonna Francis",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Paulinus Igwe Nwagu",
    "sourceUrl": "https://en.wikipedia.org/wiki/Paulinus_Igwe_Nwagu",
    "summary": "Paulinus Igwe Nwagu is a politician whose public career includes local government and the National Assembly. He served as a councillor in Ezza North from 1990 to 1993 and local-government chairman from 1999 to 2002. He was elected to represent Ezza North and Ishielu in the House of Representatives in 2007 and won election to the Senate for Ebonyi Central in 2011. His House work included rural-development and other parliamentary committees. Older party and office descriptions are historical records rather than proof of a current term.",
    "biographicalFacts": {
      "dateOfBirth": "1959-06-12",
      "birthPlace": "Ebonyi State"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-2ed68a5e816b",
    "officialName": "Igwe Nwagu Paulinus",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Ifeanyi Chukwuma Odii",
    "sourceUrl": "https://en.wikipedia.org/wiki/Ifeanyi_Odii",
    "summary": "Ifeanyi Chukwuma Odii is a businessman, philanthropist and politician from Isu in Onicha Local Government Area of Ebonyi State. He founded Orient Global Group and contested the 2023 Ebonyi governorship election as the PDP candidate. He attended schools in Isu and studied business administration at the National Open University of Nigeria, with further executive education at Lagos Business School. His public record combines business leadership, charitable activities and participation in state politics.",
    "biographicalFacts": {
      "dateOfBirth": "1975-04-17",
      "birthPlace": "Onicha, Ebonyi"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-36e0933f17c9",
    "officialName": "Chukwuma Odii Ifeanyi",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Peter Ndubuisi Mbah",
    "sourceUrl": "https://en.wikipedia.org/wiki/Peter_Mbah",
    "summary": "Peter Ndubuisi Mbah became governor of Enugu State on 29 May 2023. A lawyer and businessman from Owo in Nkanu East, he founded Pinnacle Oil and Gas. He studied law at the University of East London, attended the Nigerian Law School and pursued further maritime and commercial-law studies at Lagos State University. His education also includes an MBA at IESE Business School. This background precedes his state executive role and provides context for documented questions about business and public administration.",
    "biographicalFacts": {
      "dateOfBirth": "1972-03-17",
      "birthPlace": "Enugu"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-44b2bfdcb6c9",
    "officialName": "Mbah Peter Ndubuisi",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Chinyeaka Ohaa",
    "sourceUrl": "https://guardian.ng/opinion/columnists/transformational-leadership-between-ohaa-and-carpetbaggers-in-enugu/",
    "summary": "Chinyeaka Christian Ohaa is a former public administrator associated with Obuoffia Awkunanaw in Nkanu West, Enugu State. An April 2026 Guardian opinion article traces his work from the Enugu State Education Commission to the office of state Accountant General, which it dates to 1999–2006. It also describes service as agriculture commissioner, a move to the federal civil service and his resignation from the governing council of Enugu State University of Science and Technology in February 2026. These career details come from an opinion article; its praise is not adopted as an independent judgment.",
    "characterId": "character_01a189e8-72ec-70ed-be47-4d2d090222d6",
    "officialName": "Ohaa Chinyeaka Christian",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Uche Nnaji",
    "sourceUrl": "https://en.wikipedia.org/wiki/Uche_Nnaji",
    "summary": "Uche Nnaji served as Nigeria’s Minister of Innovation, Science and Technology after his appointment in August 2023. He left that office in October 2025 amid a publicly reported dispute about educational and national-service documents. He contested the allegations and described his resignation as respecting due process. The disagreement, the resignation and any judicial outcome are separate facts: this biography does not treat disputed allegations as a criminal conviction. His documented ministerial role concerns federal science, innovation and technology administration.",
    "characterId": "character_01a189e8-72ec-70ed-be47-5544158ddfc0",
    "officialName": "Nnaji Uchechukwu Geoffrey",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Jamil Isyaku Gwamna",
    "sourceUrl": "https://www.jamilgwamna.org/about",
    "summary": "Jamil Isyaku Gwamna is an economist and businessman from Gombe. His published biography describes accounting studies at Ahmadu Bello University, postgraduate economics and finance study, and a doctorate in economics at London Metropolitan University. It records leadership at Kano Electricity Distribution Company and a chairmanship at the Gombe State Water Corporation. The account is his own biography; promotional claims about business results are not treated as independently verified performance measures.",
    "characterId": "character_01a189e8-72ec-70ed-be47-641e53f858e7",
    "officialName": "Gwamna Jamil Isyaku",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Sabo Mohammed Nakudu",
    "sourceUrl": "https://en.wikipedia.org/wiki/Mohammed_Sabo_Nakudu",
    "summary": "Sabo Mohammed Nakudu is a politician associated with Jigawa South-West. His legislative career includes two terms in the federal House of Representatives, from 2007 to 2015, followed by service in the Senate. In the Ninth Senate he chaired the downstream petroleum committee and an ad-hoc committee working on the Petroleum Industry Bill, which passed the Senate in July 2021. He also served on the governing board of the Federal University of Technology, Minna, and received the Commander of the Order of the Niger honour in 2022.",
    "biographicalFacts": {
      "dateOfBirth": "1960-01-11"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-74728a25ebc2",
    "officialName": "Sabo Mohammed Nakudu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Umar Namadi",
    "sourceUrl": "https://en.wikipedia.org/wiki/Umar_Namadi",
    "summary": "Umar Namadi is an accountant who became governor of Jigawa State on 29 May 2023. He had served as deputy governor from 2019 to 2023 under Badaru Abubakar. Born in Kafin Hausa, he studied accounting at Bayero University, Kano, and later obtained an MBA there. He qualified as a chartered accountant in 1993 and founded Namadi, Umar and Company. His professional experience includes management accounting and work with the Dangote Group before his state political career.",
    "biographicalFacts": {
      "dateOfBirth": "1963-04-07",
      "birthPlace": "Kafin Hausa, Jigawa"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-7f3dc8131e3a",
    "officialName": "Namadi Umar A.",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Mustapha Sule Lamido",
    "sourceUrl": "https://www.premiumtimesng.com/news/top-news/890251-analysis-2027-fragmented-opposition-gives-ruling-apc-upper-hand-in-jigawa.html",
    "summary": "Mustapha Sule Lamido is a Jigawa politician from Birnin Kudu and a son of former governor Sule Lamido. Premium Times describes his 2019 run for the Jigawa Southwest Senate seat and his second-place finish in the 2023 governorship election. Its 2026 analysis reports his emergence as the PDP governorship candidate for 2027. This record establishes his electoral experience; it does not establish a policy position on every issue.",
    "characterId": "character_01a189e8-72ec-70ed-be47-8e785439a7cd",
    "officialName": "Sule Mustapha Lamido",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Isa Ashiru",
    "sourceUrl": "https://www.premiumtimesng.com/news/more-news/867962-isa-ashiru-dumps-pdp-for-adc.html",
    "summary": "Isa Ashiru is a former federal lawmaker and was the PDP governorship candidate in Kaduna State in 2023. His challenge to that election result ended with the Supreme Court upholding Uba Sani’s victory. Premium Times reported in March 2026 that Ashiru had resigned from the PDP and confirmed joining the ADC. That report is the basis for this account of his party change; it does not establish positions on unrelated policy questions.",
    "characterId": "character_01a189e8-72ec-70ed-be47-97a57294ae70",
    "officialName": "Isa Mohammed Ashiru",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Uba Sani",
    "sourceUrl": "https://en.wikipedia.org/wiki/Uba_Sani",
    "summary": "Uba Sani became governor of Kaduna State on 29 May 2023, after representing Kaduna Central in the Senate from 2019 to 2023. Born in Zaria, he trained in engineering and attended Kaduna Polytechnic, the University of Abuja and the University of Calabar. His earlier public work included advisory appointments during the Obasanjo administration and in Kaduna State, including political and intergovernmental affairs under Nasir El-Rufai. His career connects advocacy, federal legislative experience and state executive administration.",
    "biographicalFacts": {
      "dateOfBirth": "1970-12-31",
      "birthPlace": "Zaria, Kaduna"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-9db9fa6008ed",
    "officialName": "Sani Uba",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Usman Shehu Bawa",
    "sourceUrl": "https://en.wikipedia.org/wiki/Usman_Shehu_Bawa",
    "summary": "Usman Shehu Bawa, known as Shehu ABG, represented Kaduna North in the House of Representatives from 2011 to 2015. Born in Kaduna, he attended schools there and completed a geography degree at Ahmadu Bello University in 1999. His business career included work at ABG Communications and involvement in telecommunications, consultancy and agriculture. He entered elective federal politics in 2011, after these private-sector activities.",
    "biographicalFacts": {
      "dateOfBirth": "1973-04-17",
      "birthPlace": "Kaduna"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-a5cf5fff840b",
    "officialName": "Bawa Shehu Usman",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Abba Kabir Yusuf",
    "sourceUrl": "https://en.wikipedia.org/wiki/Abba_Kabir_Yusuf",
    "summary": "Abba Kabir Yusuf became governor of Kano State on 29 May 2023. Earlier, he served as Kano Commissioner for Works, Housing and Transport from 2011 to 2015 during Rabiu Kwankwaso’s administration. He was born in Gaya and studied at institutions including Federal Polytechnic, Mubi, Kaduna Polytechnic and Bayero University, Kano. The reviewed reference records his move from the NNPP to the APC in 2026. His historical works portfolio and later governorship are distinct offices with separate responsibilities.",
    "biographicalFacts": {
      "dateOfBirth": "1963-01-05",
      "birthPlace": "Gaya, Kano"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-b723e667a5c6",
    "officialName": "Yusuf Abba Kabir",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Mohammed Abacha",
    "sourceUrl": "https://en.wikipedia.org/wiki/Mohammed_Abacha",
    "summary": "Mohammed Abacha is a Nigerian politician and the eldest surviving son of former military ruler Sani Abacha and Maryam Abacha. The reviewed reference identifies him with the PDP’s 2027 Kano governorship candidacy. His public history also includes legal proceedings and asset-recovery matters associated with the Abacha administration. The reference does not provide a consistent exact date of birth, so no birthday is supplied here. Any account of legal matters needs its dated proceedings and actual outcomes, rather than an assumption that every allegation is a conviction.",
    "characterId": "character_01a189e8-72ec-70ed-be47-beabdb899b6d",
    "officialName": "Abacha Muhammed Sani",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Ahmad Babba Kaita",
    "sourceUrl": "https://en.wikipedia.org/wiki/Ahmad_Babba_Kaita",
    "summary": "Ahmad Babba Kaita represented Kankia, Ingawa and Kusada in the House of Representatives from 2011 to 2018 and Katsina North in the Senate from 2018 to 2023. He studied sociology at Bayero University, Kano, graduating in 1992, and later worked in the oil-and-gas sector before elective politics. He entered the Senate through a 2018 by-election after the death of Mustapha Bukar. The biographical reference contains conflicting birth-date entries, so this profile deliberately omits an exact birthday.",
    "characterId": "character_01a189e8-72ec-70ed-be47-c7772306d42e",
    "officialName": "Ahmad Babba Kaita",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Dikko Umar Radda",
    "sourceUrl": "https://en.wikipedia.org/wiki/Dikko_Umar_Radda",
    "summary": "Dikko Umar Radda became governor of Katsina State in May 2023. An economist and politician, he previously led the Small and Medium Enterprises Development Agency of Nigeria and chaired Charanchi Local Government Area from 2003 to 2008. He was born in Hayin Gada in Dutsin-Ma. His education includes teacher training, agricultural economics and extension at Abubakar Tafawa Balewa University, and postgraduate study at Ahmadu Bello University.",
    "biographicalFacts": {
      "dateOfBirth": "1969-09-10",
      "birthPlace": "Hayin Gada, Dutsin-Ma"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-cdea55d776e1",
    "officialName": "Umaru Dikko Radda",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Garba Yakubu Lado",
    "sourceUrl": "https://en.wikipedia.org/wiki/Garba_Yakubu_Lado",
    "summary": "Garba Yakubu Lado, also called Danmarke, is a businessman and former legislator from Katsina State. He chaired a local-government council from 1999 to 2002, served in the House of Representatives from 2003 to 2007 and represented Katsina South in the Senate from 2007 to 2011. He studied management and finance at Kaduna Polytechnic. His Senate work included water resources, sports and land transport, and he chaired the land-transport committee. The source records a birth year of 1961 but not a verified full date.",
    "biographicalFacts": {
      "birthPlace": "Danmarke, Katsina"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-dc807f570537",
    "officialName": "Garba Yakubu Lado",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Abubakar Malami",
    "sourceUrl": "https://en.wikipedia.org/wiki/Abubakar_Malami",
    "summary": "Abubakar Malami is a lawyer who served as Attorney General of the Federation and Minister of Justice under Muhammadu Buhari from November 2015 to May 2023. Born in Birnin Kebbi, he studied law at Usmanu Danfodiyo University and was called to the Bar in 1992. He later studied public administration at the University of Maiduguri. His earlier legal career included practice, state counsel and magistrate roles in Kebbi. He also served as national legal adviser to the Congress for Progressive Change before its merger into the APC.",
    "biographicalFacts": {
      "dateOfBirth": "1967-04-17",
      "birthPlace": "Birnin Kebbi"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-e5001ac9141f",
    "officialName": "Malami Abubakar",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Nasir Idris",
    "sourceUrl": "https://en.wikipedia.org/wiki/Nasir_Idris",
    "summary": "Nasir Idris became governor of Kebbi State on 29 May 2023. A teacher and trade unionist, he previously led the Nigeria Union of Teachers nationally and served as deputy president of the Nigeria Labour Congress. He was born in Birnin Kebbi and studied at institutions including the local polytechnic and Usmanu Danfodiyo University. He was elected national president of the teachers’ union in 2018, after earlier leadership of its Kebbi chapter.",
    "biographicalFacts": {
      "dateOfBirth": "1965-08-06",
      "birthPlace": "Birnin Kebbi"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-ed4d3b468f70",
    "officialName": "Idris Nasir",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Salihu Yakubu-Danladi",
    "sourceUrl": "https://en.wikipedia.org/wiki/Salihu_Yakubu-Danladi",
    "summary": "Salihu Yakubu-Danladi is an engineer and politician who became speaker of the Kwara State House of Assembly in 2019 and was re-elected in 2023. He represents Ilesha-Gwanara in Baruten. Born in Gwanara, he studied electrical and electronic engineering at Kaduna Polytechnic and the Federal University of Technology, Minna. His earlier political activities included youth and campaign coordination. The reviewed reference also records his emergence as the APC’s 2027 Kwara governorship candidate in May 2026.",
    "biographicalFacts": {
      "dateOfBirth": "1985-05-31",
      "birthPlace": "Gwanara, Kwara"
    },
    "characterId": "character_01a189e8-72ec-70ed-be47-fe335d806620",
    "officialName": "Yakubu Danladi Salihu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Gbadebo Rhodes-Vivour",
    "sourceUrl": "https://en.wikipedia.org/wiki/Gbadebo_Rhodes-Vivour",
    "summary": "Gbadebo Patrick Chinedu Rhodes-Vivour is an architect, entrepreneur and politician, commonly called GRV. Born on Lagos Island, he studied architecture at the University of Nottingham and the Massachusetts Institute of Technology, with further public-policy study at the University of Lagos. He contested the 2019 Lagos West senatorial election and was the Labour Party’s Lagos governorship candidate in 2023, finishing as runner-up. His work outside electoral politics includes architectural practice and civic advocacy.",
    "biographicalFacts": {
      "dateOfBirth": "1983-03-08",
      "birthPlace": "Lagos Island"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-14b563717724",
    "officialName": "Gbadebo Rhodes Vivour",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Kadri Obafemi Hamzat",
    "sourceUrl": "https://en.wikipedia.org/wiki/Femi_Hamzat",
    "summary": "Kadri Obafemi Hamzat is an engineer and politician who became deputy governor of Lagos State in May 2019 under Governor Babajide Sanwo-Olu. Born in Lagos, he comes from a family associated with public service: his father served in the Lagos State House of Assembly and as a state commissioner. The reviewed reference records Hamzat’s emergence as the APC’s 2027 Lagos governorship candidate on 21 May 2026. His deputy-governor role and his campaign candidacy are separate parts of the public record.",
    "biographicalFacts": {
      "dateOfBirth": "1964-09-19",
      "birthPlace": "Lagos"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-1fac70b181ae",
    "officialName": "Hamzat Kadri Obafemi",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Funso Doherty",
    "sourceUrl": "https://funsodoherty.org/biography",
    "summary": "Funso Doherty is an accountant and investment manager. His published biography says he grew up in Yaba, studied accounting at the University of Lagos and began his professional career at Arthur Andersen. He joined Asset & Resource Management in 1994, later earned an MBA at Harvard Business School and worked in the United States before returning to Nigeria. He was the founding managing director of ARM Pension Managers. These career details are attributed to his own biography.",
    "biographicalFacts": {
      "dateOfBirth": "1968-06-16",
      "birthPlace": "Lagos"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-27b7a62b0e49",
    "officialName": "Doherty Olufunso Adeshina",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Adedeji Doherty",
    "sourceUrl": "https://guardian.ng/news/doherty-unveils-10-point-agenda-vows-to-challenge-apcs-dominance-in-lagos/",
    "summary": "Adedeji Doherty is a Lagos politician and engineer. The Guardian reported in June 2026 on his presentation of a ten-point development agenda as the PDP governorship candidate. That report identifies his opposition candidacy and his stated intention to challenge the APC’s dominance in Lagos. Campaign proposals remain attributed promises rather than proof of completed public projects.",
    "characterId": "character_01a189e8-72ec-70ed-be48-2c5a03819ed5",
    "officialName": "Doherty Adedeji Olugbemiga",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Ahmed Aliyu Wadada",
    "sourceUrl": "https://en.wikipedia.org/wiki/Ahmed_Wadada",
    "summary": "Ahmed Aliyu Wadada entered the Senate for Nasarawa West in June 2023 after earlier service in the House of Representatives for Keffi, Karu and Kokona from 2003 to 2011. He is associated with Keffi in Nasarawa State. The historical reference describes his move from the APC to the SDP before the 2023 Senate election and records that he won that contest. Older party descriptions belong to those particular elections; his later governorship ticket has its own dated source.",
    "biographicalFacts": {
      "birthPlace": "Keffi, Nasarawa"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-3c277c415618",
    "officialName": "Aliyu Ahmed Wadada",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "David Emmanuel Ombugadu",
    "sourceUrl": "https://en.wikipedia.org/wiki/David_Ombugadu",
    "summary": "David Emmanuel Ombugadu represented Akwanga, Wamba and Nasarawa Eggon in the federal House of Representatives from 2011 to 2019. He contested the Nasarawa governorship elections for the PDP in 2019 and 2023. His education included Government College, Keffi, an economics degree at the University of Jos in 2001 and later postgraduate study at Rivers State University of Science and Technology. His parliamentary work included public accounts, rules and business, and privatization and commercialization.",
    "biographicalFacts": {
      "dateOfBirth": "1978-01-10"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-47016a9ae377",
    "officialName": "Emmanuel David Ombugadu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Mohammed Umaru Bago",
    "sourceUrl": "https://en.wikipedia.org/wiki/Mohammed_Umar_Bago",
    "summary": "Mohammed Umaru Bago became governor of Niger State on 29 May 2023. He had represented Chanchaga in the House of Representatives from 2011 to 2023. Born in Minna, he attended Federal Government College, Jos, and studied political science and business-related subjects at Nigerian universities. Before elective office he worked in banking, including roles at UBA, FCMB and Afribank. His public career combines that private-sector experience with federal legislative and state executive roles.",
    "biographicalFacts": {
      "dateOfBirth": "1974-02-22",
      "birthPlace": "Minna, Niger"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-5502f4282469",
    "officialName": "Mohammed Umaru Bago",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Muhammad Mamman Nami",
    "sourceUrl": "https://en.wikipedia.org/wiki/Muhammad_Mamman_Nami",
    "summary": "Muhammad Mamman Nami is an accountant and tax administrator who chaired the Federal Inland Revenue Service from 2019 to September 2023. Born in Nami village in Agaie Local Government Area of Niger State, he studied sociology at Bayero University, Kano, and business administration at Ahmadu Bello University. His professional career began at PKF International in 1993 and included tax management, auditing, advisory work and business leadership before his federal revenue appointment.",
    "biographicalFacts": {
      "dateOfBirth": "1968-02-02",
      "birthPlace": "Nami, Agaie, Niger"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-663446ad32f9",
    "officialName": "Muhammad Mamman Nami",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Jimi Adebisi Lawal",
    "sourceUrl": "https://www.citypeopleonline.com/how-i-set-up-alpha-merchant-bank-in-my-20s-jimi-lawal-reveals-his-success-story/",
    "summary": "Jimi Lawal is a banker and businessman. In an April 2020 interview with City People, he discussed growing up in Ijebu-Ode and establishing Alpha Merchant Bank while in his twenties. That interview supplies a limited account of his background and banking career. It is a self-reported career account and does not provide a basis for inventing his views on current policy.",
    "biographicalFacts": {
      "birthPlace": "Ijebu-Ode"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-6ea1a1029d96",
    "officialName": "Lawal Jimi Adebisi",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Solomon Olamilekan Adeola",
    "sourceUrl": "https://en.wikipedia.org/wiki/Solomon_Adeola",
    "summary": "Solomon Olamilekan Adeola, known as Yayi, is an accountant and legislator. He began representing Ogun West in the Senate in June 2023, after representing Lagos West from 2015 to 2023. He also served in the House of Representatives from 2011 to 2015, where he chaired the public-accounts committee. Born in Lagos, he studied accounting at the institution now known as Rufus Giwa Polytechnic. The reviewed reference identifies him as the APC’s 2027 Ogun governorship candidate.",
    "biographicalFacts": {
      "dateOfBirth": "1969-08-10",
      "birthPlace": "Lagos Island"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-76ecbdea7cec",
    "officialName": "Adeola Solomon Olamilekan",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Sharafadeen Abiodun Alli",
    "sourceUrl": "https://en.wikipedia.org/wiki/Sharafadeen_Alli",
    "summary": "Sharafadeen Abiodun Alli is a lawyer and politician who entered the Senate for Oyo South in June 2023. Born in Ibadan, he studied law at the University of Ibadan, graduating in 1986, and attended the Nigerian Law School the following year. He later pursued further legal and legislative studies. His public career includes legal practice, state and community service, and federal legislative work. The reviewed reference records his APC governorship bid in Oyo State.",
    "biographicalFacts": {
      "dateOfBirth": "1963-04-20",
      "birthPlace": "Ibadan, Oyo"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-85ce71e07400",
    "officialName": "Alli Sharafadeen Abiodun",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Hazeem Gbolarumi",
    "sourceUrl": "https://en.wikipedia.org/wiki/Hazeem_Gbolarumi",
    "summary": "Hazeem Gbolarumi served as deputy governor of Oyo State between January and December 2006 under Adebayo Alao-Akala. Born and raised in Ibadan, he attended Timi Agbale Grammar School and later studied law at the University of Ibadan, with further legal study in the United Kingdom. He previously held a personnel role at the University of Ibadan and founded Gasab Continental Nigeria Limited in 1987. His public record also includes leadership in the Oyo PDP.",
    "biographicalFacts": {
      "dateOfBirth": "1957-03-04",
      "birthPlace": "Ibadan, Oyo"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-97a627424814",
    "officialName": "Gbolarumi Hazeem Ola",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Caleb Manasseh Mutfwang",
    "sourceUrl": "https://en.wikipedia.org/wiki/Caleb_Mutfwang",
    "summary": "Caleb Manasseh Mutfwang is a lawyer who became governor of Plateau State on 29 May 2023. He previously chaired Mangu Local Government Area. Born in Wussasa, Zaria, he attended schools in Mangu and Gindiri before studying at the University of Jos from 1984 to 1988 and then the Nigerian Law School. He was called to the Bar in December 1989. His earlier working life included the Federal Office of Statistics and the Nigerian Bank for Commerce and Industry.",
    "biographicalFacts": {
      "dateOfBirth": "1965-03-12",
      "birthPlace": "Wussasa, Zaria"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-a52633aaf7cd",
    "officialName": "Mutfwang Caleb Manasseh",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Gabriel Baritulem Pidomson",
    "sourceUrl": "https://en.wikipedia.org/wiki/Gabriel_Pidomson",
    "summary": "Gabriel Baritulem Pidomson is a quantity surveyor, entrepreneur and politician. He represented Gokana in the Rivers State House of Assembly from 2003 to 2007 and chaired its health committee. In 2007 he served as Secretary to the Rivers State Government under Celestine Omehia. Born in Port Harcourt, he studied quantity surveying at Rivers State University of Science and Technology, graduating in 1994. His professional background also includes project management and management-systems consulting.",
    "biographicalFacts": {
      "dateOfBirth": "1970-05-22",
      "birthPlace": "Port Harcourt"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-bf31679a2384",
    "officialName": "Pidomson Gabriel Baritulem",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Kingsley Ogundu Chinda",
    "sourceUrl": "https://en.wikipedia.org/wiki/Kingsley_Chinda",
    "summary": "Kingsley Ogundu Chinda is a lawyer and federal legislator associated with Elelenwo in Obio/Akpor, Rivers State. He represents Obio/Akpor in the House of Representatives. His education includes Rivers State University of Science and Technology and the Nigerian Law School, and he was called to the Bar in 1995. His legal practice has included human rights, environmental matters and class actions. The reviewed reference records his emergence as the APC’s Rivers governorship flagbearer in May 2026.",
    "biographicalFacts": {
      "dateOfBirth": "1966-03-24"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-c42560540a0f",
    "officialName": "Chinda Kingsley Ogundu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Dumo Lulu-Briggs",
    "sourceUrl": "https://dumolulu-briggs.org/about-dlb/",
    "summary": "Dumo Lulu-Briggs is a lawyer and businessman associated with Abonnema in Rivers State. His published biography describes law studies at Ahmadu Bello University, postgraduate study at the London School of Economics and admission to the Nigerian Bar in 1986. It records private legal practice followed by business interests in oil, gas and marine services, including executive work at Moni Pulo. It also lists board roles at the Maritime Academy in Oron and the Federal Medical Centre in Owerri. These details are attributed to his own biographical account.",
    "characterId": "character_01a189e8-72ec-70ed-be48-cf41cd6f3772",
    "officialName": "Lilu-Briggs Dumo Owukori",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Manir Muhammad Dan Iya",
    "sourceUrl": "https://en.wikipedia.org/wiki/Manir_Dan_Iya",
    "summary": "Manir Muhammad Dan Iya served as deputy governor of Sokoto State under Aminu Tambuwal from November 2018 to May 2023. He is from Kware Local Government Area. His education includes economics education at Usmanu Danfodiyo University and additional accounting, finance, audit and administration qualifications. His earlier career included work in local-government administration and accounts in Sokoto, before entering higher political office.",
    "biographicalFacts": {
      "birthPlace": "Kware, Sokoto"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-dfba0a618072",
    "officialName": "Manir Muhammad Dan'Iya",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Ahmad Aliyu Sokoto",
    "sourceUrl": "https://en.wikipedia.org/wiki/Ahmad_Aliyu",
    "summary": "Ahmad Aliyu Sokoto became governor of Sokoto State on 29 May 2023. He had served as deputy governor under Aminu Tambuwal from 2015 until resigning in 2018. Born in Sokoto, he worked in cashier, audit and accounting roles and held local-government finance posts before serving as a commissioner. He was also the first executive secretary of the Police Trust Fund. The reference records completion of a business-administration doctorate at Nasarawa State University in 2023.",
    "biographicalFacts": {
      "dateOfBirth": "1970-01-01",
      "birthPlace": "Tudun Wada, Sokoto"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-e66c4cf301c4",
    "officialName": "Aliyu Ahmed Sokoto",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Abubakar Umar Tutare",
    "sourceUrl": "https://en.wikipedia.org/wiki/Abubakar_Umar_Tutare",
    "summary": "Abubakar Umar Tutare represented Taraba Central in the Senate from 2011 to 2015. Born in Gassol, he previously served two terms in the Taraba State House of Assembly. His state executive experience includes commissioner appointments covering finance, commerce and works and service as Secretary to the State Government. His move into the Senate followed a contested party-primary process in 2011.",
    "biographicalFacts": {
      "dateOfBirth": "1965-02-13",
      "birthPlace": "Gassol, Taraba"
    },
    "characterId": "character_01a189e8-72ec-70ed-be48-fc982d679657",
    "officialName": "Abubakar Umar Tutare",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Agbu Kefas",
    "sourceUrl": "https://en.wikipedia.org/wiki/Agbu_Kefas",
    "summary": "Agbu Kefas is a retired Nigerian Army lieutenant colonel who became governor of Taraba State on 29 May 2023. Born in Wukari, he studied at the Nigerian Defence Academy and later pursued security-related and public-administration studies at the University of Ibadan and Delta State University. After twenty-one years in the Army, he chaired the governing board of NIMASA from 2013 to 2015. He also served on the Presidential Committee on the North-East Initiative before full-time elective politics.",
    "biographicalFacts": {
      "dateOfBirth": "1970-11-12",
      "birthPlace": "Wukari, Taraba"
    },
    "characterId": "character_01a189e8-72ec-70ed-be49-07da91abd99f",
    "officialName": "Kefas Agbu",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Emmanuel Bwacha",
    "sourceUrl": "https://en.wikipedia.org/wiki/Emmanuel_Bwacha",
    "summary": "Emmanuel Bwacha represented Taraba South in the Senate from 2011 to 2023 and served as deputy Senate minority leader during part of the Ninth Assembly. Earlier, he represented Donga, Ussa and Takum in the House of Representatives from 2003 to 2007 and chaired its police-affairs committee. He was Taraba Commissioner for Agriculture from 1999 to 2003. Born in Donga, he studied public administration at the University of Calabar.",
    "biographicalFacts": {
      "dateOfBirth": "1962-12-15",
      "birthPlace": "Donga, Taraba"
    },
    "characterId": "character_01a189e8-72ec-70ed-be49-15ee34f98c62",
    "officialName": "Bwacha Emmanuel",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Dauda Lawal",
    "sourceUrl": "https://en.wikipedia.org/wiki/Dauda_Lawal",
    "summary": "Dauda Lawal is a banker who became governor of Zamfara State on 29 May 2023. Born in Gusau, he studied political science at Ahmadu Bello University and later business administration at Usmanu Danfodiyo University. His professional experience includes diplomatic service in Washington and a banking career at First Bank of Nigeria, where he became executive director for Public Sector North. He entered the governorship after winning the 2023 election against the incumbent, Bello Matawalle.",
    "biographicalFacts": {
      "dateOfBirth": "1965-09-02",
      "birthPlace": "Gusau, Zamfara"
    },
    "characterId": "character_01a189e8-72ec-70ed-be49-44531a75eaa5",
    "officialName": "Lawal Dauda",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Kabir Garba Marafa",
    "sourceUrl": "https://en.wikipedia.org/wiki/Kabir_Garba_Marafa",
    "summary": "Kabir Garba Marafa represented Zamfara Central in the Senate from 2011 to 2019. Born in Yandoton Daji in Tsafe, he studied at Kaduna Polytechnic and later attended executive education at Harvard’s Kennedy School. His parliamentary work included leadership and membership of petroleum-resources committees and advocacy for petroleum-sector legislation. The historical reference also records his role in advocating the establishment of Federal University Gusau. His former APC membership and subsequent party changes must be understood through dated records rather than assumed to be permanent.",
    "biographicalFacts": {
      "dateOfBirth": "1960-09-16",
      "birthPlace": "Yandoton Daji, Zamfara"
    },
    "characterId": "character_01a189e8-72ec-70ed-be49-4ec908b2fa77",
    "officialName": "Marafa Kabiru Garba",
    "checkedAt": "2026-10-29"
  },
  {
    "displayName": "Ibrahim Shehu Gusau",
    "sourceUrl": "https://www.nseph.org/docs/e-newsletter/121st%20Edition.pdf",
    "summary": "Ibrahim Shehu Gusau is an engineer and former federal legislator associated with Zamfara State. A November 2011 newsletter of the Nigerian Society of Engineers, Port Harcourt branch, interviewed him as the representative for Gusau and Tsafe and chairman of the House of Representatives committee on information and communication technology. This dated professional record identifies the engineer and legislator; he should not be confused with other public figures who share the Gusau name.",
    "characterId": "character_01a189e8-72ec-70ed-be49-54d6085a9a42",
    "officialName": "Shehu-Gusau Ibrahim",
    "checkedAt": "2026-10-29"
  }
]);
