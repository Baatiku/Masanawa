import {describe,expect,it,vi} from "vitest";
import {createP2pService,type P2pPool} from "./service.js";
const operator={tenantId:"tenant_verified",userId:"user_operator"};
function subject(row:Record<string,unknown>|undefined){
  const query=vi.fn(async()=>{
    return {rows:row?[row]:[],rowCount:row?1:0};
  });
  const connection={query,release:vi.fn()};
  const service=createP2pService({
    query,connect:async()=>connection,
  } as P2pPool,{
    reserve:async()=>{throw Error("read only");},
    release:async()=>{throw Error("read only");},
    refund:async()=>{throw Error("read only");},
  });
  return {service,query};
}
describe("P2P operator custody audit",()=>{
  it("scopes SQL to independently authorized operator's tenant",async()=>{
    const {service,query}=subject({
      inconsistent_orders:"2",under_reserved_sellers:"1",
      undelivered_dead_letters:"0",
    });
    expect(await service.reconciliationHealth(operator)).toEqual({
      inconsistentOrders:2,underReservedSellers:1,
      undeliveredDeadLetters:0,readOnly:true,
    });
    expect(query).toHaveBeenCalledWith(
      expect.stringContaining("msnw_p2p_reconciliation_counts($1::text)"),
      ["tenant_verified"]);
    expect(query.mock.calls).toHaveLength(1);
  });
  it("rejects impossible, missing and overflow counts instead of displaying clean status",async()=>{
    for(const row of [
      undefined,
      {inconsistent_orders:"-1",under_reserved_sellers:"0",undelivered_dead_letters:"0"},
      {inconsistent_orders:"9007199254740993",under_reserved_sellers:"0",undelivered_dead_letters:"0"},
      {inconsistent_orders:"0",under_reserved_sellers:null,undelivered_dead_letters:"0"},
    ]){
      const {service}=subject(row);
      await expect(service.reconciliationHealth(operator)).rejects.toMatchObject({
        status:503,
      });
    }
  });
});
