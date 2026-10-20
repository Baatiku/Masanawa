/**
 * Certification and assignment remain owned by Skills. Remembered user
 * statements can aid lexical *discovery* only for a user's explicit resumption
 * request, never granting a Skill or authorizing actions.
 */
export function memoryAwareDiscoveryText(
  userText:string,remembered:readonly string[]|undefined,
):string {
  if(!remembered?.length || userText.length>4000 ||
      !/\b(?:continue|resume|where did we stop|pick up|last lesson|previous lesson)\b/iu.test(userText))
    return userText;
  const evidence=remembered.filter(s=>typeof s==="string" && s.length<=350)
    .slice(0,3).join(" ");
  return evidence ? (userText+" "+evidence).slice(0,5050) : userText;
}
