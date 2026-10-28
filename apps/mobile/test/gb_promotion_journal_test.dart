import 'package:flutter_test/flutter_test.dart';
import 'package:masanawa/src/gb_wallet/gb_promotion_journal.dart';

void main(){
  test('campaign activity distinguishes sponsor spent, reserved and refunded MB',(){
    final model=GbPromotionJournal.read({
      'campaigns':[{'id':'campaign-1','postId':'post-1','kind':'boost',
        'state':'paused','targetViews':10,'deliveredViews':3,'spentMb':3,
        'reservedMb':7,'refundedUnusedMb':0}],
      'sharingEarnings':[{'postId':'post-2','referredQualifiedViews':3,
        'pendingHalfMb':3}],
      'lifecycleNotifications':[{'id':'1','kind':'paused',
        'postId':'post-1','campaignId':'campaign-1',
        'at':'2026-10-28T12:00:00Z'}],
    });
    expect(model.campaigns.single.spentMb,3);
    expect(model.campaigns.single.reservedMb,7);
    expect(model.campaigns.single.isBoost,isTrue);
    expect(model.earnings.single.pendingMbLabel,'1.5 MB pending · not redeemable');
    expect(model.notices.single.label,'Promotion paused');
  });

  test('full 500-character moderation reasons remain visible in private history',(){
    final ordinary={'campaigns':[], 'sharingEarnings':[],
      'lifecycleNotifications':[{'id':'notice-1','kind':'rejected',
        'postId':'post-1','at':'2026-10-28T12:00:00Z'}]};
    final event=(ordinary['lifecycleNotifications'] as List).single as Map;
    event['reason']=List<String>.filled(500,'r').join();
    expect(GbPromotionJournal.read(ordinary).notices.single.reason,hasLength(500));
    event['reason']=String.fromCharCodes([65,10,66]);
    expect(GbPromotionJournal.read(ordinary).notices.single.reason,'A\\nB');
    event['reason']=List<String>.filled(501,'r').join();
    expect(()=>GbPromotionJournal.read(ordinary),throwsFormatException);
  });

  test('empty authoritative campaigns are distinguished from an unavailable read',(){
    expect(GbPromotionJournal.read({'campaigns':[],
      'sharingEarnings':[],'lifecycleNotifications':[]}).campaigns,isEmpty);
    expect(()=>GbPromotionJournal.read({'campaigns':[]}),throwsFormatException);
    expect(()=>GbPromotionJournal.read({'campaigns':[
      {'id':'c','postId':'p','kind':'boost','state':'active',
        'targetViews':5,'deliveredViews':1,'spentMb':3,
        'reservedMb':4,'refundedUnusedMb':0}],
      'sharingEarnings':[],'lifecycleNotifications':[]}),throwsFormatException);
    expect(()=>GbPromotionJournal.read({'campaigns':[],
      'sharingEarnings':[{'postId':'p','referredQualifiedViews':1,
        'pendingHalfMb':100}],
      'lifecycleNotifications':[]}),throwsFormatException);
  });
}
