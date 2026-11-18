import type {PoolClient} from 'pg';
/** A shared row lock serializes private writes with canonical account disablement.
 * Call only inside the mutation transaction, before writing private state. */
export async function lockActiveUser(client:Pick<PoolClient,'query'>,tenant:string,user:string):Promise<void>{
 const current=await client.query<{state:string}>(`SELECT state FROM identity.users
  WHERE tenant_id=$1 AND user_id=$2 FOR SHARE`,[tenant,user]);
 if(current.rows[0]?.state!=='active')throw Object.assign(new Error('auth.account_inactive'),
  {status:401,code:'account_inactive'});
}
