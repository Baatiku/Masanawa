import {createConfiguredStatusObjectStore} from '@masanawa/providers';
import type {StatusMediaConfiguration} from './media_runtime.js';
export function createConfiguredStatusMedia(env:Readonly<Record<string,string|undefined>>):StatusMediaConfiguration|undefined{
 const configured=createConfiguredStatusObjectStore(env);
 if(!configured)return undefined;
 const {objects}=configured;
 if(!objects.statObject)throw new TypeError('Status media metadata support unavailable');
 return {objects:{presignGet:objects.presignGet,statObject:objects.statObject,
  ...(objects.putObject?{putObject:objects.putObject}:{}),deleteObject:objects.deleteObject},
  approvedDownloadOrigins:configured.approvedDownloadOrigins};
}
