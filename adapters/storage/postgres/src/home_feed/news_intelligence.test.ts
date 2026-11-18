import {describe,it,expect} from 'vitest';
import {classifyNigeriaNews,classifyPublicInterest,nearDuplicateNews,newsTokens,recentNewsTimestamp,NEWS_MAX_AGE_MS,NIGERIA_STATES} from './news_intelligence.js';

describe('Nigeria information intelligence gates',()=>{
 it('requires an actual Nigerian impact location, not international popularity',()=>{
  expect(classifyNigeriaNews('Davido spotted abroad','Celebrity photographs').confident).toBe(false);
  expect(classifyNigeriaNews('Flood alert issued for Osun and Oyo','Residents of Osogbo and Ibadan advised').states).toEqual(['osun','oyo']);
  expect(classifyNigeriaNews('Flood warning for all states across Nigeria','Emergency authority notice').nationwide).toBe(true);
  expect(classifyNigeriaNews('Niger coup update','Niamey international report').states).toEqual([]);
  expect(classifyNigeriaNews('Road restrictions near Abuja','Kuje residents should plan ahead').states).toEqual(['fct']);
  expect(NIGERIA_STATES).toHaveLength(37);
 });
 it('rejects stale, absent and future publisher timestamps at seven days',()=>{
  const now=Date.parse('2026-11-18T12:00:00Z');
  expect(recentNewsTimestamp(new Date(now-NEWS_MAX_AGE_MS).toISOString(),now)).toBe(true);
  expect(recentNewsTimestamp(new Date(now-NEWS_MAX_AGE_MS-1).toISOString(),now)).toBe(false);
  expect(recentNewsTimestamp('invalid',now)).toBe(false);
  expect(recentNewsTimestamp(new Date(now+6*60000).toISOString(),now)).toBe(false);
 });
 it('admits essential public interest while suppressing celebrity and sport chatter',()=>{
  expect(classifyPublicInterest('Flood warning for Osun residents','State emergency notice').category).toBe('environment');
  expect(classifyPublicInterest('Lagos hospital launches malaria vaccination','Health ministry alert').relevant).toBe(true);
  expect(classifyPublicInterest('Davido spotted in Lagos','Celebrity gossip').relevant).toBe(false);
  expect(classifyPublicInterest('Football transfer in Kano','Premier League coverage').relevant).toBe(false);
  expect(classifyPublicInterest('Osun festival pictures','Concert selfies').relevant).toBe(false);
 });
 it('merges close duplicates but preserves distinct locations and changed amounts',()=>{
  const pub='2026-11-18T08:00:00Z';
  const a={title:'Osun government announces 45 flood prevention projects',publishedAt:pub,states:['osun']};
  expect(nearDuplicateNews(a,{title:'Government in Osun announces 45 flood prevention projects',publishedAt:pub,states:['osun']})).toBe(true);
  expect(nearDuplicateNews(a,{title:'Oyo government announces 45 flood prevention projects',publishedAt:pub,states:['oyo']})).toBe(false);
  expect(nearDuplicateNews(a,{title:'Osun government announces 46 flood prevention projects',publishedAt:pub,states:['osun']})).toBe(false);
  expect(newsTokens('Flood ALERT! In Osun, Osun State').filter(x=>x==='osun')).toEqual(['osun']);
 });
});
