import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/providers.dart';
import '../features/home_feed/status_promotion_api.dart';
import '../state/session_state.dart';
import 'gb_wallet_summary.dart';

/// A private read model; campaign reservations and pending half-MB allocations
/// are NOT spendable wallet ledger entries. The authoritative wallet journal
/// remains the sole source for posted MB and NGN transactions.
class GbPromotionJournal {
  const GbPromotionJournal({required this.campaigns,required this.earnings,
    required this.notices});
  final List<GbPromotionCampaignSummary> campaigns;
  final List<GbPromotionPendingEarning> earnings;
  final List<GbPromotionNotice> notices;

  factory GbPromotionJournal.read(Object? raw) {
    if(raw is! Map)throw const FormatException('Unavailable promotion history');
    List<T> rows<T>(String key,int max,T Function(Object?) parse) {
      final value=raw[key];
      if(value is! List||value.length>max)
        throw const FormatException('Unverified promotion history');
      return List<T>.unmodifiable(value.map(parse));
    }
    return GbPromotionJournal(
      campaigns:rows('campaigns',100,GbPromotionCampaignSummary.read),
      earnings:rows('sharingEarnings',100,GbPromotionPendingEarning.read),
      notices:rows('lifecycleNotifications',50,GbPromotionNotice.read));
  }
}

String _reference(Object? raw) {
  if(raw is! String||raw.isEmpty||raw.length>160||
    RegExp(r'[\x00-\x1f\x7f]').hasMatch(raw))
    throw const FormatException('Unverified promotion reference');
  return raw;
}
int _count(Object? raw) {
  if(raw is! int||raw<0||raw>9007199254740991)
    throw const FormatException('Unverified promotion amount');
  return raw;
}

class GbPromotionCampaignSummary {
  const GbPromotionCampaignSummary({required this.id,required this.postId,
    required this.kind,required this.state,required this.targetViews,
    required this.deliveredViews,required this.spentMb,required this.reservedMb,
    required this.refundedUnusedMb});
  final String id,postId,kind,state;
  final int targetViews,deliveredViews,spentMb,reservedMb,refundedUnusedMb;
  bool get isBoost=>kind=='boost';
  factory GbPromotionCampaignSummary.read(Object? raw) {
    if(raw is! Map)throw const FormatException('Unverified campaign');
    final id=_reference(raw['id']),postId=_reference(raw['postId']),
      kind=_reference(raw['kind']),state=_reference(raw['state']),
      target=_count(raw['targetViews']),delivered=_count(raw['deliveredViews']),
      spent=_count(raw['spentMb']),reserved=_count(raw['reservedMb']),
      refunded=_count(raw['refundedUnusedMb']);
    if(target<1||delivered>target||spent!=delivered||
      reserved+refunded>target-delivered||
      !const {'human_primary','boost'}.contains(kind)||
      !const {'active','pending_review','paused','completed','cancelled',
        'rejected','expired'}.contains(state))
      throw const FormatException('Inconsistent campaign receipt');
    return GbPromotionCampaignSummary(id:id,postId:postId,kind:kind,
      state:state,targetViews:target,deliveredViews:delivered,
      spentMb:spent,reservedMb:reserved,refundedUnusedMb:refunded);
  }
}

class GbPromotionPendingEarning {
  const GbPromotionPendingEarning({required this.postId,
    required this.views,required this.pendingHalfMb});
  final String postId;
  final int views,pendingHalfMb;
  String get pendingMbLabel => '${pendingHalfMb~/2}'
    '${pendingHalfMb.isOdd?'.5':''} MB pending · not redeemable';
  factory GbPromotionPendingEarning.read(Object? raw){
    if(raw is! Map)throw const FormatException('Unverified referral');
    final post=_reference(raw['postId']),views=_count(raw['referredQualifiedViews']),
      half=_count(raw['pendingHalfMb']);
    if(half>views)throw const FormatException('Inconsistent referral receipt');
    return GbPromotionPendingEarning(postId:post,views:views,pendingHalfMb:half);
  }
}

class GbPromotionNotice {
  const GbPromotionNotice({required this.id,required this.kind,
    required this.postId,required this.occurredAt,this.reason,this.campaignId});
  final String id,kind,postId;
  final String? campaignId,reason;
  final DateTime occurredAt;
  String get label => switch(kind) {
    'budget_reserved'=>'Promotion submitted',
    'approved'=>'Promotion approved',
    'rejected'=>'Promotion rejected · unused budget released',
    'cancelled'=>'Promotion cancelled · unused budget released',
    'paused'=>'Promotion paused','resumed'=>'Promotion resumed',
    'campaign_completed'=>'Promotion target reached',
    'post_disabled'=>'Post disabled · 72-hour retention started',
    'paid_post_purged'=>'Expired post removed',
    'owner_deleted'=>'Post deleted by owner',
    'moderation_takedown'=>'Post removed by moderation',
    _=>'Promotion updated',
  };
  factory GbPromotionNotice.read(Object? raw) {
    if(raw is! Map)throw const FormatException('Unverified promotion update');
    final id=_reference(raw['id']),post=_reference(raw['postId']),
      kind=_reference(raw['kind']),at=raw['at'],
      campaign=raw['campaignId'],reason=raw['reason'];
    final date=at is String?DateTime.tryParse(at):null;
    if(date==null||!date.isUtc||
      (campaign!=null&&(campaign is! String||campaign.length>160))||
      (reason!=null&&(reason is! String||reason.length>500)))
      throw const FormatException('Invalid promotion update');
    return GbPromotionNotice(id:id,kind:kind,postId:post,
      occurredAt:date,campaignId:campaign as String?,reason:reason as String?);
  }
}

final gbPromotionJournalProvider=FutureProvider.autoDispose.family<
  GbPromotionJournal,GbWalletOwner>((ref,owner) async {
  bool sameOwner(){
    final session=ref.read(sessionProvider);
    return session is SessionSignedIn&&session.user.id==owner.accountId&&
      ref.read(sessionProvider.notifier).authorizationEpoch==owner.authorizationEpoch;
  }
  if(!sameOwner())throw StateError('Promotion account changed');
  final client=ref.watch(apiClientProvider);
  final api=StatusPromotionApi(dio:client.dio,ownerAccount:owner.accountId,
    accessToken:()async=>client.accessToken,
    currentAccount:(){final s=ref.read(sessionProvider);
      return s is SessionSignedIn?s.user.id:null;},
    journal:SecureStatusPromotionJournal(owner.accountId));
  final raw=await api.mine();
  if(!sameOwner())throw StateError('Promotion account changed');
  return GbPromotionJournal.read(raw);
});
