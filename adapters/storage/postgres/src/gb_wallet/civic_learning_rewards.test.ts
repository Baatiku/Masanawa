import {describe,expect,it} from 'vitest';
import {civicLearningLesson,gradeCivicLearning} from './civic_learning_rewards.js';
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
