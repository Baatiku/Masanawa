import {it,expect} from 'vitest';
import {FlutterwaveHttpTransport} from '@masanawa/providers';
import {flutterwaveTransportConfiguration} from './transport_configuration.js';
it('uses the official provider from Railway only when direct mode is explicitly selected',async()=>{
 const env={FLUTTERWAVE_RELAY_URL:'https://old-relay.example',MASANAWA_FLUTTERWAVE_RELAY_TOKEN:'preserved-secret',FLUTTERWAVE_RELAY_PROTOCOL:'dual-header'};
 expect(flutterwaveTransportConfiguration(env)).toEqual({baseUrl:env.FLUTTERWAVE_RELAY_URL,relayToken:env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN,relayProtocol:'dual-header'});
 const config=flutterwaveTransportConfiguration({...env,MASANAWA_FLUTTERWAVE_DIRECT_ENABLED:'true'});
 const requests:Array<{url:string;init:RequestInit|undefined}>=[];
 const transport=new FlutterwaveHttpTransport({...config,fetchImpl:async(url,init)=>{requests.push({url:String(url),init});return Response.json({status:'success',data:[]});}});
 await transport.request({method:'GET',path:'/v3/top-bill-categories',headers:{authorization:'Bearer fixture-key'}});
 expect(requests[0]?.url).toBe('https://api.flutterwave.com/v3/top-bill-categories');
 expect(requests[0]?.init?.headers).toEqual({authorization:'Bearer fixture-key'});
 expect(env.MASANAWA_FLUTTERWAVE_RELAY_TOKEN).toBe('preserved-secret');
 expect(()=>flutterwaveTransportConfiguration({FLUTTERWAVE_RELAY_URL:'https://relay.example'})).toThrow('configured together');
});
