-- Expanded, source-attributed directory. These are published agency contact points,
-- not a guarantee of availability, local emergency dispatch, or station coverage.
INSERT INTO civic_response.agency_contacts
  (id,name,acronym,service_type,scope,state,address,phone,email,website,source_url,verified_at,verification_status,routing_tags,public_notes)
VALUES
 ('ng-police','Nigeria Police Force emergency contact','NPF','security','national',NULL,'Louis Edet House, Force Headquarters, Shehu Shagari Way, Garki, Abuja, Nigeria','08057000001',NULL,'https://police.gov.ng/','https://incb.police.gov.ng/news/details/812',DATE '2026-11-20','verified',ARRAY['security','crime','police'],'NPF-published emergency contact. For an immediate emergency, call 112.'),
 ('ng-police-cru','Nigeria Police Force Complaint Response Unit','NPF CRU','misconduct','national',NULL,NULL,'08057000002',NULL,'https://police.gov.ng/','https://incb.police.gov.ng/news/details/880',DATE '2026-11-20','verified',ARRAY['security','misconduct','police'],'NPF-published complaint contact. Not a substitute for 112.'),
 ('ng-customs','Nigeria Customs Service Helpdesk','NCS','customs','national',NULL,'No. 2 Lake Taal Close, off Tigris Crescent, off Aguiyi Ironsi Street, Maitama, Abuja, Nigeria','07037891156','helpdesk@customs.gov.ng','https://customs.gov.ng/','https://licences.customs.gov.ng/',DATE '2026-11-20','verified',ARRAY['customs','border','public_services'],'Customs enquiries and complaints. Office hours may apply.'),
 ('ng-naptip','National Agency for the Prohibition of Trafficking in Persons','NAPTIP','trafficking','national',NULL,'2028 Dalaba Street, Wuse Zone 5, Abuja, Nigeria','07030000203','info@naptip.gov.ng','https://naptip.gov.ng/','https://naptip.gov.ng/wp-content/uploads/2024/01/NAPTIP-handbook-on-traffiking-in-nigeria-for-jounalists.pdf',DATE '2026-11-20','verified',ARRAY['trafficking','child_protection','gender_violence'],'Trafficking reports. NAPTIP also publishes 627 for MTN subscribers.'),
 ('ng-icpc','Independent Corrupt Practices and Other Related Offences Commission','ICPC','anti_corruption','national',NULL,'Plot 802 Constitution Avenue, Zone A9, Central Area, Abuja, Nigeria','080022554272','info@icpc.gov.ng','https://icpc.gov.ng/','https://icpc.gov.ng/office-locations/',DATE '2026-11-20','verified',ARRAY['corruption','misconduct','public_services'],'Corruption and official misconduct complaints; 0800-CALL-ICPC.'),
 ('ng-efcc','Economic and Financial Crimes Commission','EFCC','financial_crime','national',NULL,'Plot 301/302, Institution and Research Cadastral District, Jabi, Abuja, Nigeria','08093322644','info@efcc.gov.ng','https://efcc.gov.ng/','https://efcc.gov.ng/wantedPersons/halimat-adenike-tejuosho',DATE '2026-11-20','verified',ARRAY['fraud','cybercrime','financial_crime'],'Financial-crime reports and enquiries.'),
 ('ng-nhrc','National Human Rights Commission','NHRC','rights','national',NULL,'Garki, Abuja, Nigeria','08006472428',NULL,'https://nhrc.gov.ng/','https://www.nhrc.gov.ng/complaint-form/',DATE '2026-11-20','verified',ARRAY['rights','gender_violence','misconduct'],'Human-rights complaints and protection.'),
 ('ng-ncdc','Nigeria Centre for Disease Control and Prevention','NCDC','public_health','national',NULL,NULL,'6232',NULL,'https://ncdc.gov.ng/','https://ncdc.gov.ng/contact',DATE '2026-11-20','verified',ARRAY['medical','disease','public_health'],'Toll-free public-health outbreak call centre; not a general ambulance line.'),
 ('ng-immigration','Nigeria Immigration Service','NIS','immigration','national',NULL,'Umar Musa Yar’Adua Expressway, Airport Road, Sauka, Abuja, FCT, Nigeria','09121900655','nis.servicom@nigeriaimmigration.gov.ng','https://immigration.gov.ng/','https://immigration.gov.ng/contact-us/',DATE '2026-11-20','verified',ARRAY['immigration','border','public_services'],'Immigration and travel-document enquiries. Not an emergency dispatch line.'),
 ('ng-lagos-lasema','Lagos State Emergency Management Agency','LASEMA','disaster','state','Lagos',NULL,'767',NULL,'https://lagosstate.gov.ng/','https://lagosstate.gov.ng/services/',DATE '2026-11-20','verified',ARRAY['disaster','fire','medical','road'],'Lagos State emergency helpline. 112 is also published by the state.')
ON CONFLICT (id) DO NOTHING;

-- The police source publishes state command telephone contacts; these are NOT
-- verified street addresses for individual police stations.
INSERT INTO civic_response.agency_contacts
  (id,name,acronym,service_type,scope,state,phone,website,source_url,verified_at,verification_status,routing_tags,public_notes)
SELECT 'ng-police-command-'||slug,'Nigeria Police Force — '||state||' Command','NPF','security','state',state,phone,
  'https://police.gov.ng/','https://police.gov.ng/contact/display',DATE '2026-11-20','verified',ARRAY['police','security','crime'],
  'State command number in the published NPF directory, not a police station address. Call 112 for immediate emergencies.'
FROM (VALUES
 ('abia','Abia','08033826909'),('adamawa','Adamawa','07031963747'),('akwa-ibom','Akwa Ibom','08134999999'),
 ('anambra','Anambra','08034651332'),('bauchi','Bauchi','08035921619'),('bayelsa','Bayelsa','08033594548'),
 ('benue','Benue','08036702395'),('borno','Borno','08067064884'),('cross-river','Cross River','08033486926'),
 ('delta','Delta','08078184594'),('ebonyi','Ebonyi','07034141666'),('edo','Edo','07032165181'),
 ('ekiti','Ekiti','08035007464'),('enugu','Enugu','08033263306'),('fct','FCT','08069702133'),
 ('gombe','Gombe','07038382277'),('imo','Imo','08036015644'),('jigawa','Jigawa','08033455356'),
 ('kaduna','Kaduna','08123448047'),('kano','Kano','08036347211'),('katsina','Katsina','08039241251'),
 ('kebbi','Kebbi','08033492025'),('kogi','Kogi','08081764262'),('kwara','Kwara','08037098886'),
 ('lagos','Lagos','08081779456'),('nasarawa','Nasarawa','08035375475'),('niger','Niger','08035862059'),
 ('ogun','Ogun','08034062773'),('ondo','Ondo','08037147450'),('osun','Osun','07066817429'),
 ('oyo','Oyo','08033459554'),('plateau','Plateau','08033342628'),('rivers','Rivers','08038693339'),
 ('sokoto','Sokoto','08033074906'),('taraba','Taraba','08034767802'),('yobe','Yobe','08037189932'),
 ('zamfara','Zamfara','08033287450')
) AS offices(slug,state,phone)
ON CONFLICT (id) DO NOTHING;

-- ICPC publishes identifiable physical state offices: a first useful layer
-- of source-backed, map-friendly locations beyond the national headquarters.
INSERT INTO civic_response.agency_contacts
  (id,name,acronym,service_type,scope,state,address,phone,email,website,source_url,verified_at,verification_status,routing_tags,public_notes)
SELECT 'ng-icpc-'||slug,'ICPC — '||state||' State Office','ICPC','anti_corruption','state',state,address||', Nigeria',phone,email,
  'https://icpc.gov.ng/','https://icpc.gov.ng/office-locations/',DATE '2026-11-20','verified',ARRAY['corruption','misconduct','public_services'],
  'Published ICPC state office; check opening hours before visiting.'
FROM (VALUES
 ('adamawa','Adamawa','No. 1 Bachure Road, Pufare Layout, Jimeta, Yola, Adamawa State','08033133367','adamawa@icpc.gov.ng'),
 ('anambra','Anambra','No. 10 Nwakpadolu Street, GRA, Agu Awka, Awka, Anambra State','08033145820','anambra@icpc.gov.ng'),
 ('akwa-ibom','Akwa Ibom','Plot 37, G Line, Ewet Housing Estate, Uyo, Akwa Ibom State','08062067670','akwaibom@icpc.gov.ng'),
 ('bauchi','Bauchi','Plot 10946 Yaya Abubakar Link, off Federal Secretariat Road, GRA, Bauchi State','08164402626','bauchi@icpc.gov.ng'),
 ('benue','Benue','No. 26 Jonah Jang Crescent, Nyiman Layout, opposite FIRS Office, Makurdi, Benue State','08036521917','benue@icpc.gov.ng'),
 ('borno','Borno','No. 186, behind NNPC Clinic, Damboa Road, Maiduguri, Borno State','08034403971','borno@icpc.gov.ng'),
 ('delta','Delta','No. 7 Barr. Eugene Uzum Crescent, Eagle Square, off Okpanam Road, Asaba, Delta State','08036190226','delta@icpc.gov.ng'),
 ('edo','Edo','No. 13A Delta Crescent, off Ikpopan, GRA, Benin City, Edo State','08065521925','edo@icpc.gov.ng'),
 ('enugu','Enugu','Plot JQ/4, Bisala Road, Independence Layout, Enugu, Enugu State','08090392021','enugu@icpc.gov.ng'),
 ('imo','Imo','Plot BF/1 Area H, opposite Index Filling Station, off 40-40 Roundabout, New Owerri, Imo State','08097520126','imo@icpc.gov.ng'),
 ('kaduna','Kaduna','No. 7 Wurno Road, Badarawa GRA, Kaduna, Kaduna State','08023220835','kaduna@icpc.gov.ng'),
 ('kano','Kano','No. 31 Usmaniyya Link, Railway Quarters, Abdullahi Bayero Road, Kano State','08036421831','kano@icpc.gov.ng'),
 ('katsina','Katsina','No. 7 Bayajidda Road, off Daura Road, near INEC Office, GRA, Katsina State','08036003741','katsina@icpc.gov.ng'),
 ('kogi','Kogi','500 Units Housing Estate, Ganaja Road, Lokoja, Kogi State','08034188213','kogi@icpc.gov.ng'),
 ('lagos','Lagos','No. 10 Okotie Eboh Street, South-West Ikoyi, Lagos State','08023432419','lagos@icpc.gov.ng'),
 ('niger','Niger','No. 1 Ladi Kwali Street, opposite UK Bello Arts Theatre, off IBB Road, Minna, Niger State','07037248234','niger@icpc.gov.ng'),
 ('ondo','Ondo','GRA Block A, Plot C, Oda Road, Akure, Ondo State','08166814186','ondo@icpc.gov.ng'),
 ('osun','Osun','No. 5 Olu Alabi Road, GRA, Oke-Fia, Osogbo, Osun State','08033260396','osun@icpc.gov.ng'),
 ('oyo','Oyo','Behind CBN Entrepreneurship Skills Acquisition, opposite Aerodrome, Old Airport Road, Samonda, Ibadan, Oyo State','08100167326','oyo@icpc.gov.ng'),
 ('rivers','Rivers','No. 4B Abana Close, off A.K. Horsefall Street, Old GRA, Port Harcourt, Rivers State','08023510484','rivers@icpc.gov.ng'),
 ('sokoto','Sokoto','Plot 2253, opposite WAEC Office, off Tsafe Road, Sokoto State','08023177773','sokoto@icpc.gov.ng')
) AS offices(slug,state,address,phone,email)
ON CONFLICT (id) DO NOTHING;
