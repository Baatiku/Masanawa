import {describe,it,expect} from 'vitest';
import {validateEnrollmentWav,buildGoogleVoiceEnrollment} from './voice_enrollment.js';
function wav(seconds:number){const b=Buffer.alloc(44+seconds*48000);b.write('RIFF');b.writeUInt32LE(b.length-8,4);b.write('WAVEfmt ',8);b.writeUInt32LE(16,16);b.writeUInt16LE(1,20);b.writeUInt16LE(1,22);b.writeUInt32LE(24000,24);b.writeUInt32LE(48000,28);b.writeUInt16LE(2,32);b.writeUInt16LE(16,34);b.write('data',36);b.writeUInt32LE(b.length-44,40);return b.toString('base64');}
describe('voice enrollment intake',()=>{
 it('validates separate recordings and maps them to Google fields',()=>{const r=buildGoogleVoiceEnrollment({displayName:'Test',sample:wav(10),consent:wav(5),adultSpeakerConfirmed:true});expect(r.voice.replicated.source_audio.data).toBe(wav(10));expect(r.voice.replicated.consent_audio.data).toBe(wav(5));});
 it('rejects short references, corrupt files and duplicate consent',()=>{expect(()=>validateEnrollmentWav(wav(9),'sample')).toThrow();expect(()=>validateEnrollmentWav('AAAA','consent')).toThrow();expect(()=>buildGoogleVoiceEnrollment({displayName:'Test',sample:wav(10),consent:wav(10),adultSpeakerConfirmed:true})).toThrow();});
});
