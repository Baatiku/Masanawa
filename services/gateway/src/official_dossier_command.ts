/** Explicit operator-only argument parsing; preview is the default. */
export function parseOfficialDossierCommand(args:readonly string[]){
 const [file,...options]=args;if(!file||file.startsWith('--'))throw Error('invalid_arguments');
 let apply=false,reviewer:string|undefined;
 for(let i=0;i<options.length;i++){
  const option=options[i];
  if(option==='--apply'&&!apply){apply=true;continue;}
  if(option==='--reviewer'&&reviewer===undefined){
   reviewer=options[++i];if(!reviewer||reviewer.startsWith('--')||reviewer.length>160)throw Error('invalid_arguments');continue;
  }
  throw Error('invalid_arguments');
 }
 if(apply&&!reviewer)throw Error('reviewer_required');
 return {file,apply,...(reviewer?{reviewer}:{})};
}
