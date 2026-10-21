import {createReplayObjectStore} from './s3_object_store.js';
/** One explicit Status/creator store configuration for Gateway and Worker. */
export function createConfiguredStatusObjectStore(env:Readonly<Record<string,string|undefined>>){
 const names=['S3_ENDPOINT','S3_REGION','S3_BUCKET','S3_ACCESS_KEY','S3_SECRET_KEY','DOWNLOAD_ORIGIN'] as const;
 const values=names.map(n=>env['MASANAWA_STATUS_MEDIA_'+n]?.trim());
 if(values.every(v=>!v))return undefined;
 if(values.some(v=>!v))throw new TypeError('Status media storage configuration incomplete');
 const [endpoint,region,bucket,accessKey,secret,origin]=values as [string,string,string,string,string,string];
 const url=new URL(origin);if(url.protocol!=='https:'||url.origin!==origin||url.username||url.password)throw new TypeError('Status media origin invalid');
 return {objects:createReplayObjectStore({endpoint,region,bucket,accessKey,secret,maxObjectBytes:30*1024*1024}),approvedDownloadOrigins:[origin]};
}
