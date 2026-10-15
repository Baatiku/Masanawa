import {describe,expect,it,vi} from "vitest";
import {sellerConfirmedReceipt} from "./seller_confirmation.js";
import type {P2pService} from "./service.js";
const orderId="e134983a-47d7-4816-a0ec-0bffae6b913f";
const seller={tenantId:"tenant-1",userId:"seller-1"},buyer={tenantId:"tenant-1",userId:"buyer-1"};
const receipt={orderId,fiatKobo:"120000",attestation:"I HAVE RECEIVED PAYMENT"};
const record={order_id:orderId,tenant_id:"tenant-1",seller_id:"seller-1",
 buyer_id:"buyer-1",state:"payment_claimed",fiat_kobo:"120000"};
function service(state=record.state) {
 return {order:vi.fn(async()=>({...record,state}))} as unknown as P2pService;
}
describe("seller-authorized MSNW release",()=>{
 it("accepts an explicit seller attestation bound to exact fiat and order",async()=>{
  await expect(sellerConfirmedReceipt(service(),seller,orderId,receipt)).resolves.toBe(true);
 });
 it("rejects the buyer even if they copy the seller's assertion",async()=>{
  await expect(sellerConfirmedReceipt(service(),buyer,orderId,receipt)).resolves.toBe(false);
 });
 it("rejects screenshots, vague text and amount substitution",async()=>{
  for(const body of [
    {screenshot:"i paid"},{...receipt,fiatKobo:"1"},
    {...receipt,attestation:"I PAID"},{...receipt,orderId:"wrong-id"},
  ]){
   await expect(sellerConfirmedReceipt(service(),seller,orderId,body)).resolves.toBe(false);
  }
 });
 it("rejects receipt when order is not currently awaiting seller confirmation",async()=>{
  await expect(sellerConfirmedReceipt(service("awaiting_payment"),seller,orderId,receipt))
   .resolves.toBe(false);
 });
});
