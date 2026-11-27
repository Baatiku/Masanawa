import {describe,expect,it} from 'vitest';
import {civicLearningLesson,civicLearningCatalog,gradeCivicLearning} from './civic_learning_rewards.js';
describe('neutral civic learning',()=>{
 it('projects learning content without exposing server answer keys or political engagement',()=>{
  const l=civicLearningLesson();expect(l.questions).toHaveLength(3);
  expect(l.questions.every(q=>!Object.hasOwn(q,'correct'))).toBe(true);
  expect(JSON.stringify(l)).not.toMatch(/characterId|ratingScore|popularityRank/);
 });
 it('rejects malformed or incomplete answers and grades only the versioned neutral lesson',()=>{
  expect(gradeCivicLearning([0,1,2])).toBe(true);
  for(const a of [null,[],[0,1],[0,1,2,3],[0,2,2],['0',1,2],{answers:[0,1,2],rating:5}])expect(gradeCivicLearning(a)).toBe(false);
 });
});

it('offers distinct versioned neutral lessons with no client-supplied reward or political input',()=>{
 const catalog=civicLearningCatalog();expect(catalog).toHaveLength(4);
 expect(new Set(catalog.map(l=>l.id)).size).toBe(4);
 for(const item of catalog){const l=civicLearningLesson(item.id);expect(l.questions).toHaveLength(3);expect(l.questions.every(q=>!Object.hasOwn(q,'correct'))).toBe(true);}
 expect(gradeCivicLearning([1,0,2],'public-services-access-v1')).toBe(true);
 expect(gradeCivicLearning([0,1,2],'public-services-access-v1')).toBe(false);
 expect(()=>civicLearningLesson('political-persona-rating')).toThrow('civic_reward.lesson_unknown');
});
