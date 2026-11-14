/// Curated historical orientation for every distinct Nigerian national leader
/// from independence through the present presidency. These notes distinguish
/// policy decisions from outcomes and do not claim personal credit for every
/// event of a government. They never imply an endorsed or living AI account.
class CivicLeaderDossier {
  const CivicLeaderDossier({
    required this.context,
    required this.background,
    required this.governmentRecord,
    required this.publicAgenda,
    required this.historicalDebates,
    required this.sourceUrl,
  });
  final String context;
  final List<String> background;
  final List<String> governmentRecord;
  final List<String> publicAgenda;
  final List<String> historicalDebates;
  final String sourceUrl;

  /// Structural check only; editorial source review remains independent.
  bool get hasAllProfileSections => context.length >= 80 &&
      background.length >= 2 && governmentRecord.length >= 2 &&
      publicAgenda.isNotEmpty && historicalDebates.isNotEmpty &&
      sourceUrl.startsWith('https://');
}

/// Individual historical-reading references supplement the federal State
/// House tenure chronology (linked from the underlying CivicEntry).
const civicLeaderDossiers = <String, CivicLeaderDossier>{
  'balewa': CivicLeaderDossier(
    context:'Abubakar Tafawa Balewa led Nigeria as prime minister at independence. The First Republic used a parliamentary system: Balewa headed government while the Governor-General, and later the President, was head of state.',
    background:['Born in Tafawa Balewa, in present-day Bauchi State; worked as a teacher before entering politics.',
      'Represented the Northern Peoples Congress in the independence-era federal legislature; became prime minister before independence and continued in the post after 1960.'],
    governmentRecord:['Led the federal government through independence on 1 October 1960 and the transition to a republic in 1963.',
      'Represented Nigeria internationally during the early independence period, including in the formation of the Organisation of African Unity in 1963.',
      'His premiership ended during the January 1966 military coup, in which he was killed.'],
    publicAgenda:['National unity within Nigeria’s federal parliamentary arrangement; a prominent role for independent African states in diplomacy.'],
    historicalDebates:['The First Republic confronted contested federal elections, regional political crises and disputes over political representation.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Abubakar_Tafawa_Balewa'),
  'azikiwe': CivicLeaderDossier(
    context:'Nnamdi Azikiwe was a leading nationalist, Nigeria’s first indigenous Governor-General and its first President after republican status in 1963. The presidency was largely ceremonial in the parliamentary First Republic.',
    background:['Built a career in journalism and nationalist politics, including newspapers used to advocate self-government.',
      'Co-founded the National Council of Nigeria and the Cameroons and served as Premier of the Eastern Region before national head-of-state duties.'],
    governmentRecord:['Became Governor-General after independence and President when Nigeria became a republic on 1 October 1963.',
      'His constitutional presidency ended with the January 1966 military takeover.',
      'His earlier journalism and party organisation helped mobilise support for independence.'],
    publicAgenda:['Nigerian self-government, African political emancipation and national political participation.'],
    historicalDebates:['Political competition between the regions and the limits of the ceremonial presidency shaped the First Republic.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Nnamdi_Azikiwe'),
  'ironsi': CivicLeaderDossier(
    context:'Johnson Aguiyi-Ironsi was the first military Head of State after the January 1966 coup. His short government was an important turning point from parliamentary civilian rule to military government.',
    background:['Career army officer who rose to command the Nigerian Army.',
      'Assumed national leadership after the January 1966 coup and the collapse of First Republic civilian institutions.'],
    governmentRecord:['Introduced a military administration after the 1966 coup.',
      'Promulgated the 1966 Unification Decree, which sought to replace the regional federal public-service structure with a more unitary approach.',
      'Was killed during the July 1966 counter-coup.'],
    publicAgenda:['Stabilisation of government and administrative unification following the coup.'],
    historicalDebates:['The Unification Decree provoked opposition, and the events of 1966 sharpened ethnic and regional tensions.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Johnson_Aguiyi-Ironsi'),
  'gowon': CivicLeaderDossier(
    context:'Yakubu Gowon led Nigeria through the civil war of 1967–1970 and the early post-war reconstruction period. He became Head of State following the July 1966 counter-coup.',
    background:['Military officer whose leadership began amid severe regional and political crisis.',
      'Led the federal government during the Nigerian Civil War and remained in office until 1975.'],
    governmentRecord:['Announced the creation of twelve states in 1967, replacing the previous regional structure.',
      'After the war, adopted the language of reconciliation and the “three Rs”: reconstruction, rehabilitation and reconciliation.',
      'The National Youth Service Corps was established in 1973 during his administration.'],
    publicAgenda:['Preservation of Nigerian unity, post-war reconciliation and national integration.'],
    historicalDebates:['The war involved enormous civilian suffering, including famine, and debate continues over military conduct and reconciliation.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Yakubu_Gowon'),
  'murtala': CivicLeaderDossier(
    context:'Murtala Ramat Mohammed headed Nigeria’s military government for under seven months in 1975–1976. His government announced far-reaching administrative changes and a return-to-civilian-rule timetable.',
    background:['Served in the Nigerian Army and participated in the politics of military government.',
      'Became Head of State after the removal of Yakubu Gowon in July 1975.'],
    governmentRecord:['Announced a transition programme intended to restore civilian government in 1979.',
      'Initiated major civil-service changes and announced the move toward a new federal capital in the Abuja area.',
      'Was assassinated in an attempted military coup in February 1976.'],
    publicAgenda:['Civil-service reform, administrative reorganisation and transition from military rule.'],
    historicalDebates:['Mass civil-service dismissals during the period remain controversial for their impact on institutions and individuals.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Murtala_Mohammed'),
  'obasanjo': CivicLeaderDossier(
    context:'Olusegun Obasanjo is one of two individuals in this chronology who served both as a military Head of State and as an elected civilian President. His terms belong to distinct constitutional eras.',
    background:['Career military officer who succeeded Murtala Mohammed in February 1976.',
      'Won the 1999 presidential election and returned as a civilian president through May 2007.'],
    governmentRecord:['Supervised the 1979 handover to civilian government at the end of the military transition.',
      'During the civilian presidency, telecommunications liberalisation expanded mobile-network licensing.',
      'The Economic and Financial Crimes Commission was established in 2003, and Nigeria obtained major Paris Club debt relief in 2005.'],
    publicAgenda:['Civilian constitutional government, economic reforms, debt management and anti-corruption institutions.'],
    historicalDebates:['His second administration faced criticism over the proposed constitutional amendment that could have enabled a third presidential term.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Olusegun_Obasanjo'),
  'shagari': CivicLeaderDossier(
    context:'Shehu Shagari was Nigeria’s first executive President under the presidential Second Republic, taking office in 1979 after the transition from military government.',
    background:['Long-serving politician and public administrator who held federal cabinet offices before the presidency.',
      'Won the 1979 presidential election and was re-elected in 1983.'],
    governmentRecord:['Led the presidential civilian administration inaugurated on 1 October 1979.',
      'Promoted the Green Revolution agricultural policy and a programme of public housing.',
      'His government was removed by a military coup on 31 December 1983.'],
    publicAgenda:['Agricultural development, housing provision and continuation of civilian federal institutions.'],
    historicalDebates:['The period faced falling oil income, growing debt, allegations of corruption and disputes over the 1983 elections.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Shehu_Shagari'),
  'buhari': CivicLeaderDossier(
    context:'Muhammadu Buhari served first as military Head of State in 1983–1985 and later as elected President from 2015 to 2023. The administrations operated under different systems of government.',
    background:['Army officer who took national office after the December 1983 coup.',
      'Contested several presidential elections before winning the 2015 election; won a second civilian term in 2019.'],
    governmentRecord:['The military administration launched the War Against Indiscipline campaign.',
      'The civilian administration introduced social investment programmes and pursued rail, road and other infrastructure projects.',
      'The 2015 election marked the first defeat of an incumbent Nigerian president by an opposition candidate.'],
    publicAgenda:['Anti-corruption, security and economic recovery were stated priorities of his elected administration.'],
    historicalDebates:['His administrations were criticised over human-rights concerns, insecurity, economic hardship and the handling of protests.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Muhammadu_Buhari'),
  'babangida': CivicLeaderDossier(
    context:'Ibrahim Badamasi Babangida led military government from 1985 until August 1993. His administration was particularly consequential for economic restructuring and Nigeria’s interrupted democratic transition.',
    background:['Career military officer who took power in August 1985.',
      'Oversaw a succession of transition arrangements and state-creation exercises.'],
    governmentRecord:['Introduced the Structural Adjustment Programme in 1986.',
      'Moved the federal seat of government to Abuja in December 1991.',
      'Annulled the 12 June 1993 presidential election and later relinquished power to an interim administration.'],
    publicAgenda:['Economic adjustment and a managed transition to civilian rule were stated government programmes.'],
    historicalDebates:['The economic impact of structural adjustment and the annulment of the 1993 election are central controversies of the era.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Ibrahim_Babangida'),
  'shonekan': CivicLeaderDossier(
    context:'Ernest Shonekan led the Interim National Government for less than three months in 1993, after the end of Babangida’s military presidency. His status and authority were disputed.',
    background:['Business executive who had led the United Africa Company of Nigeria.',
      'Headed the Interim National Government from August until November 1993.'],
    governmentRecord:['Oversaw the interim administration during unresolved national controversy over the annulled June 1993 election.',
      'His government announced economic measures including an increase in petrol prices.',
      'Left office when Sani Abacha took power in November 1993.'],
    publicAgenda:['An interim administrative arrangement and a proposed path back to civilian government.'],
    historicalDebates:['The legality of the interim government and the legitimacy of the 1993 transition remained contested.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Ernest_Shonekan'),
  'abacha': CivicLeaderDossier(
    context:'Sani Abacha ruled Nigeria as a military Head of State from November 1993 until his death in June 1998. The era is associated with intense repression of dissent and international criticism.',
    background:['Army officer involved in successive military administrations.',
      'Took power after the collapse of Ernest Shonekan’s Interim National Government.'],
    governmentRecord:['Established a military governing structure and announced successive transition plans.',
      'The execution of Ken Saro-Wiwa and other Ogoni activists in 1995 drew international condemnation.',
      'Funds linked to the regime have been the subject of subsequent international recovery proceedings.'],
    publicAgenda:['The regime publicly proposed a managed transition while maintaining extensive military control.'],
    historicalDebates:['Human-rights abuses, imprisonment of opponents, corruption and disputed transition plans dominate assessments of his rule.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Sani_Abacha'),
  'abdulsalami': CivicLeaderDossier(
    context:'Abdulsalami Abubakar became military Head of State after Sani Abacha’s death in June 1998. His brief government supervised the transition to the Fourth Republic.',
    background:['Senior military officer and Chief of Defence Staff before succeeding Abacha.',
      'Led a transition government from June 1998 to May 1999.'],
    governmentRecord:['Organised a new electoral and constitutional transition programme.',
      'Oversaw the adoption of the 1999 Constitution as Nigeria entered the Fourth Republic.',
      'Handed power to elected President Olusegun Obasanjo on 29 May 1999.'],
    publicAgenda:['Restoration of elected civilian government on an accelerated timetable.'],
    historicalDebates:['The 1999 Constitution originated under military transition, generating continuing debate about constitutional legitimacy and federal arrangements.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Abdulsalami_Abubakar'),
  'yaradua': CivicLeaderDossier(
    context:'Umaru Musa Yar’Adua was elected President in 2007 and died in office in May 2010. His presidency emphasised rule of law and a seven-point policy agenda.',
    background:['Served two terms as Governor of Katsina State before being elected President.',
      'Entered the presidency in May 2007 with Goodluck Jonathan as Vice President.'],
    governmentRecord:['Announced a seven-point agenda addressing sectors including infrastructure, energy and food security.',
      'Introduced a Niger Delta amnesty initiative in 2009.',
      'Acknowledged problems with the 2007 election and advocated electoral reform.'],
    publicAgenda:['Rule of law, electoral reform, power supply, agriculture and peace in the Niger Delta.'],
    historicalDebates:['Serious illness and prolonged absence raised questions about presidential succession and government transparency.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Umaru_Musa_Yar%27Adua'),
  'jonathan': CivicLeaderDossier(
    context:'Goodluck Ebele Jonathan became President following Yar’Adua’s death in May 2010, then won the 2011 presidential election. He left office after losing the 2015 election.',
    background:['Previously served as deputy governor and governor of Bayelsa State.',
      'Was elected Vice President in 2007 and assumed the presidency in 2010.'],
    governmentRecord:['Promoted the Transformation Agenda and reforms in sectors including agriculture and electricity.',
      'His government convened a National Conference in 2014.',
      'Conceded the 2015 presidential election and oversaw a peaceful transfer to opposition candidate Muhammadu Buhari.'],
    publicAgenda:['Economic transformation, infrastructure, agriculture and governance reform.'],
    historicalDebates:['His tenure faced severe security challenges, including Boko Haram attacks and the Chibok schoolgirls’ abduction.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Goodluck_Jonathan'),
  'tinubu': CivicLeaderDossier(
    context:'Bola Ahmed Tinubu took office as Nigeria’s President on 29 May 2023 after serving as Governor of Lagos State from 1999 to 2007. His presidency and Lagos governorship are distinct roles.',
    background:['Previously worked in accounting and the petroleum sector and served as a senator during the Third Republic.',
      'Governed Lagos during the early Fourth Republic; became a central party organiser before winning the 2023 presidential election.'],
    governmentRecord:['His administration announced removal of the petrol subsidy at his 2023 inauguration.',
      'Exchange-rate reforms and fiscal and tax policy changes became major parts of the economic programme.',
      'As Lagos governor, his government pursued changes to internally generated revenue and urban administration.'],
    publicAgenda:['The Renewed Hope programme emphasises economic reform, infrastructure, security and employment.'],
    historicalDebates:['The effects of subsidy removal, inflation and the cost of living have generated public debate and protests.'],
    sourceUrl:'https://en.wikipedia.org/wiki/Bola_Tinubu'),
};
