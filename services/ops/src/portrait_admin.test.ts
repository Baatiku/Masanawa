import {describe,it,expect} from 'vitest';
import {deflateSync} from 'node:zlib';
import {checkedPortraitPng} from './portrait_admin.js';
function crc(data:Buffer){let c=0xffffffff;for(const byte of data){c^=byte;for(let i=0;i<8;i++)c=(c>>>1)^((c&1)?0xedb88320:0);}return(c^0xffffffff)>>>0;}
function chunk(type:string,data:Buffer){const b=Buffer.alloc(data.length+12);b.writeUInt32BE(data.length);b.write(type,4);data.copy(b,8);b.writeUInt32BE(crc(b.subarray(4,-4)),b.length-4);return b;}
function png(){const header=Buffer.alloc(13);header.writeUInt32BE(64);header.writeUInt32BE(64,4);header[8]=8;header[9]=6;const pixels=Buffer.alloc(64*(1+64*4));return Buffer.concat([Buffer.from('89504e470d0a1a0a','hex'),chunk('IHDR',header),chunk('IDAT',deflateSync(pixels)),chunk('tEXt',Buffer.from('Attribution\0Authorized source image fixture')),chunk('IEND',Buffer.alloc(0))]);}
describe('portrait upload content boundary',()=>{
 it('accepts a bounded PNG with valid chunks and rejects corruption or appended HTML',()=>{const bytes=png();expect(checkedPortraitPng(bytes.toString('base64'))).toEqual(bytes);const corrupt=Buffer.from(bytes);corrupt[30]=(corrupt[30]??0)^1;expect(()=>checkedPortraitPng(corrupt.toString('base64'))).toThrow();expect(()=>checkedPortraitPng(Buffer.concat([bytes,Buffer.from('<script>')]).toString('base64'))).toThrow();});
 it('rejects SVG, malformed base64 and oversized uploads',()=>{for(const data of [Buffer.from('<svg/>').toString('base64'),'@@@','A'.repeat(700001)])expect(()=>checkedPortraitPng(data)).toThrow();});
});
