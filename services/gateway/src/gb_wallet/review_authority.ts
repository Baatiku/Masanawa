type Actor={tenantId:string;userId:string};
type Identity=Actor&{profile:{email?:string|null;accountState?:string}};
/** Financial support authority is separate from editorial roles and never grants a money mutation. */
export function createWalletInquiryReviewAuthority(input:{
 sessions:{authorize(request:{authorizationHeader:string|undefined}):Promise<Identity>};
 adminEmails:ReadonlySet<string>;
 linkedEmail(identity:Identity,email:string):Promise<boolean>;
 sessionsFor(identity:Identity,header:string):Promise<readonly {current:boolean;createdAt:string}[]>;
 now?:()=>number;
}){
 const allowed=new Set([...input.adminEmails].map(v=>v.trim().toLowerCase()));
 return async(header:string|undefined,actor:Actor,fresh:boolean):Promise<boolean>=>{
  const identity=await input.sessions.authorize({authorizationHeader:header});
  const email=typeof identity.profile.email==='string'?identity.profile.email.trim().toLowerCase():undefined;
  if(!email||!allowed.has(email)||identity.tenantId!==actor.tenantId||identity.userId!==actor.userId||
   ['suspended','restricted'].includes(identity.profile.accountState??'active'))return false;
  if(!await input.linkedEmail(identity,email))return false;
  if(fresh){
   if(!header)return false;
   const records=await input.sessionsFor(identity,header),current=records.find(s=>s.current);
   const created=current?Date.parse(current.createdAt):NaN,at=(input.now??Date.now)();
   if(!Number.isFinite(at)||!Number.isFinite(created)||created>at||created<at-15*60_000)
    throw Object.assign(new Error('fresh_auth_required'),{status:403,code:'fresh_auth_required'});
  }
  return true;
 };
}
