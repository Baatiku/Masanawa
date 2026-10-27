/** Closed public vocabulary shared by JSON and streaming reply responses. */
export function replyWalletFailure(error:unknown):{code:string;status:number;message:string}|null {
 if(!(error instanceof Error))return null;
 if(error.message==='gb.wallet.insufficient_mb')return {code:'gb.wallet.insufficient_mb',status:409,
  message:'Not enough data MB for a reply. Add data and try again.'};
 if(error.message==='gb.wallet.account_frozen')return {code:'gb.wallet.account_frozen',status:403,
  message:'This wallet is restricted. Contact support before trying again.'};
 return null;
}
