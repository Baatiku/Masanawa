.class public final Lteam/opay/pay/payment/betting/BettingTopupViewModel;
.super Lteam/opay/pay/payment/ServiceViewModel;
.source "BettingTopupViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/betting/BettingTopupViewModel$Companion;,
        Lteam/opay/pay/payment/betting/BettingTopupViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 )2\u00020\u00012\u00020\u0002:\u0002\u00d4\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u001f\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ9\u0010#\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u001e2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u000e0 \u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010&\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020%\u00a2\u0006\u0004\u0008&\u0010\'J\u0015\u0010(\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020%\u00a2\u0006\u0004\u0008(\u0010\'J\r\u0010)\u001a\u00020\u000e\u00a2\u0006\u0004\u0008)\u0010\u0010J\u001f\u0010,\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020%2\u0008\u0008\u0002\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u0013\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.\u00a2\u0006\u0004\u00080\u00101J\u0015\u00104\u001a\u00020*2\u0006\u00103\u001a\u000202\u00a2\u0006\u0004\u00084\u00105J\u0017\u00106\u001a\u0004\u0018\u00010\u00112\u0006\u00103\u001a\u000202\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u000e2\u0008\u00108\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u00089\u0010:J%\u0010>\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0006\u0012\u0004\u0018\u00010\u00110=2\u0008\u0010<\u001a\u0004\u0018\u00010;\u00a2\u0006\u0004\u0008>\u0010?J\u0017\u0010@\u001a\u00020*2\u0008\u0010<\u001a\u0004\u0018\u00010;\u00a2\u0006\u0004\u0008@\u0010AJ\u001d\u0010E\u001a\u00020*2\u0006\u0010C\u001a\u00020B2\u0006\u0010D\u001a\u00020B\u00a2\u0006\u0004\u0008E\u0010FJ\u0015\u0010H\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\u0011\u00a2\u0006\u0004\u0008H\u0010IJ\u0013\u0010K\u001a\u0008\u0012\u0004\u0012\u00020J0.\u00a2\u0006\u0004\u0008K\u00101J\u0017\u0010M\u001a\u0004\u0018\u00010\u001b2\u0006\u0010L\u001a\u00020\u0011\u00a2\u0006\u0004\u0008M\u0010NR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0014\u0010V\u001a\u00020S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR$\u0010[\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010\u0013\"\u0004\u0008Z\u0010IR\u0017\u0010a\u001a\u00020\\8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`R$\u0010L\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR(\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\u00110h8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u00101\"\u0004\u0008l\u0010mR\u001c\u0010p\u001a\u0008\u0012\u0004\u0012\u00020J0h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010jR(\u0010x\u001a\u0008\u0012\u0004\u0012\u00020*0q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008r\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR$\u0010~\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010:R\'\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u007f\u0010z\u001a\u0005\u0008\u0080\u0001\u0010|\"\u0005\u0008\u0081\u0001\u0010:R(\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010z\u001a\u0005\u0008\u0084\u0001\u0010|\"\u0005\u0008\u0085\u0001\u0010:R,\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R#\u0010\u0094\u0001\u001a\t\u0012\u0004\u0012\u00020*0\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R#\u0010\u0097\u0001\u001a\t\u0012\u0004\u0012\u00020\u001b0\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0095\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0093\u0001R#\u0010\u009a\u0001\u001a\t\u0012\u0004\u0012\u00020*0\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u0093\u0001R&\u0010\u009e\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u009b\u00010\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009c\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u0093\u0001R&\u0010\u00a1\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u009b\u00010\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009f\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u00a0\u0001\u0010\u0093\u0001R,\u0010\u00a5\u0001\u001a\u0012\u0012\r\u0012\u000b\u0012\u0006\u0012\u0004\u0018\u00010!0\u00a2\u00010\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a3\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u0093\u0001R#\u0010\u00a8\u0001\u001a\t\u0012\u0004\u0012\u0002020\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a6\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u0093\u0001R#\u0010\u00ab\u0001\u001a\t\u0012\u0004\u0012\u0002020\u008f\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a9\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u00aa\u0001\u0010\u0093\u0001R!\u0010\u00b1\u0001\u001a\u00030\u00ac\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R%\u0010\u00b4\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00b2\u00010\u008f\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008,\u0010\u0091\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u0093\u0001R\'\u0010\u00b9\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0007\u0012\u0005\u0018\u00010\u00b6\u00010\u00b5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R%\u0010\u00bc\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008&\u0010z\u001a\u0005\u0008\u00ba\u0001\u0010|\"\u0005\u0008\u00bb\u0001\u0010:R(\u0010\u00c2\u0001\u001a\u00020*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u00bd\u0001\u0010\u0012\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\"\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R*\u0010\u00c8\u0001\u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u000f\u0010\u00c3\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00c5\u0001\"\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R\u0019\u0010\u00ca\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00110.8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c9\u0001\u00101R\u0017\u0010\u00cd\u0001\u001a\u00030\u00cb\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008b\u0010\u00cc\u0001R\u0017\u0010\u00d0\u0001\u001a\u00030\u00ce\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008i\u0010\u00cf\u0001R\u0019\u0010\u00d3\u0001\u001a\u0005\u0018\u00010\u00d1\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008W\u0010\u00d2\u0001\u00a8\u0006\u00d5\u0001"
    }
    d2 = {
        "Lteam/opay/pay/payment/betting/BettingTopupViewModel;",
        "Lteam/opay/pay/payment/ServiceViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/payment/betting/BettingRepository;",
        "bettingRepository",
        "<init>",
        "(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/betting/BettingRepository;)V",
        "Lteam/opay/core/api/graphql/BettingCalculateRsp;",
        "result",
        "t0",
        "(Lteam/opay/core/api/graphql/BettingCalculateRsp;)Lteam/opay/core/api/graphql/BettingCalculateRsp;",
        "",
        "J",
        "()V",
        "Lteam/opay/core/api/graphql/BettingInfo;",
        "Z",
        "()Lteam/opay/core/api/graphql/BettingInfo;",
        "d0",
        "Lteam/opay/pay/android/BaseShowAdActivity;",
        "act",
        "Lteam/opay/odialog/net/AdDataItem;",
        "ad",
        "w0",
        "(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V",
        "",
        "userId",
        "providerId",
        "Landroidx/fragment/app/FragmentActivity;",
        "lifecycleOwner",
        "Lkotlin/Function1;",
        "Lteam/opay/core/api/BettingAccount;",
        "next",
        "L",
        "(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "Lag8;",
        "H",
        "(Lag8;)V",
        "P",
        "K",
        "",
        "forceFetch",
        "F",
        "(Lag8;Z)V",
        "",
        "Lteam/opay/pay/payment/betting/BettingBundle;",
        "U",
        "()Ljava/util/List;",
        "Lteam/opay/pay/api/QueryVoucherItem;",
        "voucher",
        "r0",
        "(Lteam/opay/pay/api/QueryVoucherItem;)Z",
        "p0",
        "(Lteam/opay/pay/api/QueryVoucherItem;)Lteam/opay/core/api/graphql/BettingInfo;",
        "payAmount",
        "v0",
        "(Ljava/lang/String;)V",
        "Landroid/content/Intent;",
        "intent",
        "Lkotlin/Pair;",
        "W",
        "(Landroid/content/Intent;)Lkotlin/Pair;",
        "q0",
        "(Landroid/content/Intent;)Z",
        "Lteam/opay/core/android/money/MoneyAmount;",
        "minAmount",
        "maxAmount",
        "s0",
        "(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;)Z",
        "provider",
        "x0",
        "(Lteam/opay/core/api/graphql/BettingInfo;)V",
        "Lteam/opay/core/api/graphql/BettingOutInfo;",
        "V",
        "bettingInfo",
        "i0",
        "(Lteam/opay/core/api/graphql/BettingInfo;)Ljava/lang/String;",
        "j",
        "Landroid/app/Application;",
        "k",
        "Lteam/opay/pay/payment/betting/BettingRepository;",
        "Ltd8;",
        "l",
        "Ltd8;",
        "lifeApiService",
        "m",
        "Lteam/opay/core/api/graphql/BettingInfo;",
        "k0",
        "setSelectedProvider",
        "selectedProvider",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "n",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "getAmount",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "amount",
        "o",
        "Lteam/opay/core/api/graphql/BettingCalculateRsp;",
        "S",
        "()Lteam/opay/core/api/graphql/BettingCalculateRsp;",
        "setBettingInfo",
        "(Lteam/opay/core/api/graphql/BettingCalculateRsp;)V",
        "",
        "p",
        "Ljava/util/List;",
        "O",
        "setBetPlatforms",
        "(Ljava/util/List;)V",
        "betPlatforms",
        "q",
        "showServiceList",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "r",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "h0",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "setPaymentSuccessEvent",
        "(Lteam/opay/pay/util/SingleLiveEvent;)V",
        "paymentSuccessEvent",
        "s",
        "Ljava/lang/String;",
        "f0",
        "()Ljava/lang/String;",
        "setParaOperatorId",
        "paraOperatorId",
        "t",
        "g0",
        "setParaUserId",
        "paraUserId",
        "u",
        "getParaAmount",
        "setParaAmount",
        "paraAmount",
        "",
        "v",
        "Ljava/lang/CharSequence;",
        "e0",
        "()Ljava/lang/CharSequence;",
        "setParaAmountCalculate",
        "(Ljava/lang/CharSequence;)V",
        "paraAmountCalculate",
        "Landroidx/lifecycle/MutableLiveData;",
        "w",
        "Landroidx/lifecycle/MutableLiveData;",
        "a0",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "x",
        "X",
        "errorEvent",
        "y",
        "T",
        "bettingSuccessEvent",
        "",
        "z",
        "Y",
        "highLightEvent",
        "A",
        "j0",
        "refreashBundsEvent",
        "Lteam/opay/core/android/arch/Resource;",
        "B",
        "b0",
        "loopUserFailEvent",
        "C",
        "o0",
        "useVoucherEvent",
        "D",
        "n0",
        "useVoucherActionEvent",
        "Lxt;",
        "E",
        "Lid8;",
        "N",
        "()Lxt;",
        "api",
        "Lteam/opay/core/api/graphql/BettingConfig;",
        "R",
        "bettingConfigEvent",
        "",
        "Lteam/opay/pay/payment/LifeRewardResponse;",
        "G",
        "Ljava/util/Map;",
        "rewardDataMap",
        "getReqProviderId",
        "setReqProviderId",
        "reqProviderId",
        "I",
        "l0",
        "()Z",
        "setShowBindVoucherSalePage",
        "(Z)V",
        "showBindVoucherSalePage",
        "Lteam/opay/core/api/BettingAccount;",
        "m0",
        "()Lteam/opay/core/api/BettingAccount;",
        "u0",
        "(Lteam/opay/core/api/BettingAccount;)V",
        "toPayBettingAccount",
        "c0",
        "operators",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final K:Lteam/opay/pay/payment/betting/BettingTopupViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/BettingAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/BettingConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/payment/LifeRewardResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public H:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:Z

.field public J:Lteam/opay/core/api/BettingAccount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic i:Lteam/opay/core/api/e;

.field public final j:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/payment/betting/BettingRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ltd8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/core/api/graphql/BettingInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lteam/opay/core/api/graphql/BettingCalculateRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BettingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BettingOutInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->K:Lteam/opay/pay/payment/betting/BettingTopupViewModel$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/betting/BettingRepository;)V
    .locals 6
    .param p1    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/payment/betting/BettingRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "application"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bettingRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p1}, Lteam/opay/pay/payment/ServiceViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->i:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->j:Landroid/app/Application;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k:Lteam/opay/pay/payment/betting/BettingRepository;

    .line 24
    .line 25
    sget-object p1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 26
    .line 27
    const-class p3, Ltd8;

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ltd8;

    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->l:Ltd8;

    .line 36
    .line 37
    new-instance p1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/payment/ServiceViewModel;->u()Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x2

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x0

    .line 47
    move-object v0, p1

    .line 48
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->n:Lteam/opay/pay/android/validation/FieldValidation;

    .line 52
    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 59
    .line 60
    new-instance p1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 66
    .line 67
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 68
    .line 69
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 73
    .line 74
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 101
    .line 102
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->C:Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 124
    .line 125
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->D:Landroidx/lifecycle/MutableLiveData;

    .line 129
    .line 130
    new-instance p1, Lw31;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Lw31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->E:Lid8;

    .line 140
    .line 141
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 142
    .line 143
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 147
    .line 148
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G:Ljava/util/Map;

    .line 154
    .line 155
    const-string p1, ""

    .line 156
    .line 157
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H:Ljava/lang/String;

    .line 158
    .line 159
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Q(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->M(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->I(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)Lxt;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->j:Landroid/app/Application;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/payment/betting/BettingTopupViewModel$a;->b:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G:Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v1, 0x0

    .line 35
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lteam/opay/pay/payment/betting/BettingTopupViewModel$a;->b:[I

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    aget v0, v1, v0

    .line 53
    .line 54
    if-eq v0, v2, :cond_6

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->t0(Lteam/opay/core/api/graphql/BettingCalculateRsp;)Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->J()V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 86
    .line 87
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_4
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    const-string p1, ""

    .line 100
    .line 101
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 110
    .line 111
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 112
    .line 113
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->J()V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 117
    .line 118
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    iget-object v6, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    if-ne v9, v8, :cond_0

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v9, 0x0

    .line 26
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-virtual {v6, v9}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v9, v6

    .line 42
    :goto_1
    if-nez v9, :cond_2

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sget-object v10, Lteam/opay/pay/payment/betting/BettingTopupViewModel$a;->b:[I

    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    aget v9, v10, v9

    .line 53
    .line 54
    :goto_2
    const-string v10, "1"

    .line 55
    .line 56
    const-string v11, "st"

    .line 57
    .line 58
    const-string v12, "operator_name"

    .line 59
    .line 60
    const-string v13, "AccountNumber"

    .line 61
    .line 62
    const-string v14, "COMMON_betting_lookup_account_after"

    .line 63
    .line 64
    if-eq v9, v8, :cond_5

    .line 65
    .line 66
    if-eq v9, v5, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 69
    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    iget-object v2, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lx7b;->a:Lx7b;

    .line 79
    .line 80
    invoke-static {v13, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v0, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :cond_4
    invoke-static {v12, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v9, "msg"

    .line 107
    .line 108
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v9, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v9, 0x4

    .line 117
    new-array v9, v9, [Lkotlin/Pair;

    .line 118
    .line 119
    aput-object v1, v9, v7

    .line 120
    .line 121
    aput-object v0, v9, v8

    .line 122
    .line 123
    aput-object v6, v9, v5

    .line 124
    .line 125
    aput-object v3, v9, v4

    .line 126
    .line 127
    invoke-virtual {v2, v14, v9}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_4

    .line 131
    .line 132
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-eqz v9, :cond_8

    .line 137
    .line 138
    sget-object v9, Lteam/opay/core/api/GraphQL$ServiceId;->BETTING:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 139
    .line 140
    invoke-virtual {v9}, Lteam/opay/core/api/GraphQL$ServiceId;->getValue()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    move-object/from16 v15, p1

    .line 145
    .line 146
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_6

    .line 151
    .line 152
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    check-cast v9, Lteam/opay/core/api/BettingAccount;

    .line 157
    .line 158
    invoke-virtual {v9}, Lteam/opay/core/api/BettingAccount;->a()Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-eqz v9, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    sget-object v2, Lx7b;->a:Lx7b;

    .line 166
    .line 167
    invoke-static {v13, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v0, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 172
    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    :cond_7
    invoke-static {v12, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v6, "0"

    .line 190
    .line 191
    invoke-static {v11, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    new-array v4, v4, [Lkotlin/Pair;

    .line 196
    .line 197
    aput-object v1, v4, v7

    .line 198
    .line 199
    aput-object v0, v4, v8

    .line 200
    .line 201
    aput-object v6, v4, v5

    .line 202
    .line 203
    invoke-virtual {v2, v14, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p5 .. p5}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    move-object/from16 v1, p4

    .line 211
    .line 212
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_8
    :goto_3
    sget-object v3, Lx7b;->a:Lx7b;

    .line 217
    .line 218
    invoke-static {v13, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iget-object v0, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 223
    .line 224
    if-eqz v0, :cond_9

    .line 225
    .line 226
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    :cond_9
    invoke-static {v12, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    new-array v4, v4, [Lkotlin/Pair;

    .line 245
    .line 246
    aput-object v1, v4, v7

    .line 247
    .line 248
    aput-object v0, v4, v8

    .line 249
    .line 250
    aput-object v6, v4, v5

    .line 251
    .line 252
    invoke-virtual {v3, v14, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 253
    .line 254
    .line 255
    sget-object v15, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 256
    .line 257
    sget v0, Lteam/opay/pay/R$string;->failed:I

    .line 258
    .line 259
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v16

    .line 263
    sget v0, Lteam/opay/pay/R$string;->betting_lookup_error:I

    .line 264
    .line 265
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v1, "getString(...)"

    .line 270
    .line 271
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    sget v1, Lteam/opay/pay/R$string;->confirm:I

    .line 275
    .line 276
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v18

    .line 280
    sget v20, Lteam/opay/pay/R$mipmap;->transaction_failed:I

    .line 281
    .line 282
    const/16 v24, 0xe8

    .line 283
    .line 284
    const/16 v25, 0x0

    .line 285
    .line 286
    const/16 v19, 0x0

    .line 287
    .line 288
    const/16 v21, 0x0

    .line 289
    .line 290
    const/16 v22, 0x0

    .line 291
    .line 292
    const/16 v23, 0x0

    .line 293
    .line 294
    move-object/from16 v17, v0

    .line 295
    .line 296
    invoke-static/range {v15 .. v25}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v2, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 301
    .line 302
    .line 303
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 304
    .line 305
    return-object v0
.end method

.method private final N()Lxt;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->E:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxt;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final Q(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static synthetic z(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)Lxt;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->E(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)Lxt;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final F(Lag8;Z)V
    .locals 5
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    :cond_2
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "providerId:"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " reqProviderId:"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    if-nez p2, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->U()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    const/16 v2, 0xa

    .line 87
    .line 88
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lteam/opay/pay/payment/betting/BettingBundle;

    .line 110
    .line 111
    invoke-virtual {v2}, Lteam/opay/pay/payment/betting/BettingBundle;->c()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    new-instance p2, Lteam/opay/pay/payment/LifeRewardsReq;

    .line 120
    .line 121
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 122
    .line 123
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v3, Lteam/opay/pay/payment/LifeAmountReqList;

    .line 128
    .line 129
    invoke-direct {v3, v0, v1}, Lteam/opay/pay/payment/LifeAmountReqList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {p2, v2, v1}, Lteam/opay/pay/payment/LifeRewardsReq;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->H:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->l:Ltd8;

    .line 142
    .line 143
    invoke-interface {v1, p2}, Ltd8;->n(Lteam/opay/pay/payment/LifeRewardsReq;)Lretrofit2/Call;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v1, Ly31;

    .line 152
    .line 153
    invoke-direct {v1, p0, v0}, Ly31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p2, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final H(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->N()Lxt;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/core/api/graphql/QueryPlanReq;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2}, Lteam/opay/core/api/graphql/QueryPlanReq;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lxt;->z(Lteam/opay/core/api/graphql/QueryPlanReq;)Lretrofit2/Call;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 21
    .line 22
    invoke-static {v0, p0, v1}, Lkpc;->b(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/Class;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lx31;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lx31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lteam/opay/pay/payment/betting/BettingTopupViewModel$b;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final J()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    move-object v5, v4

    .line 34
    check-cast v5, Lteam/opay/core/api/graphql/BettingInfo;

    .line 35
    .line 36
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v5}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v5, v2

    .line 48
    :goto_1
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->T0(Ljava/util/Collection;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    :cond_4
    iput-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 66
    .line 67
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->b()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    move-object v1, v2

    .line 82
    :goto_2
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eqz v1, :cond_c

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_6
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 94
    .line 95
    if-eqz v1, :cond_11

    .line 96
    .line 97
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->b()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_11

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_11

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    add-int/lit8 v6, v3, 0x1

    .line 118
    .line 119
    if-gez v3, :cond_7

    .line 120
    .line 121
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 122
    .line 123
    .line 124
    :cond_7
    check-cast v5, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 125
    .line 126
    iget-object v7, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_a

    .line 137
    .line 138
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    move-object v9, v8

    .line 143
    check-cast v9, Lteam/opay/core/api/graphql/BettingInfo;

    .line 144
    .line 145
    invoke-virtual {v9}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-eqz v9, :cond_9

    .line 150
    .line 151
    invoke-virtual {v9}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    goto :goto_4

    .line 156
    :cond_9
    move-object v9, v2

    .line 157
    :goto_4
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_8

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    move-object v8, v2

    .line 169
    :goto_5
    check-cast v8, Lteam/opay/core/api/graphql/BettingInfo;

    .line 170
    .line 171
    invoke-virtual {v5, v8}, Lteam/opay/core/api/graphql/BettingOutInfo;->f(Lteam/opay/core/api/graphql/BettingInfo;)V

    .line 172
    .line 173
    .line 174
    if-nez v3, :cond_b

    .line 175
    .line 176
    invoke-virtual {v5, v4}, Lteam/opay/core/api/graphql/BettingOutInfo;->g(Z)V

    .line 177
    .line 178
    .line 179
    :cond_b
    iget-object v3, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move v3, v6

    .line 185
    goto :goto_3

    .line 186
    :cond_c
    :goto_6
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const/4 v5, 0x0

    .line 193
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_11

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    add-int/lit8 v7, v5, 0x1

    .line 204
    .line 205
    if-gez v5, :cond_d

    .line 206
    .line 207
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 208
    .line 209
    .line 210
    :cond_d
    move-object v12, v6

    .line 211
    check-cast v12, Lteam/opay/core/api/graphql/BettingInfo;

    .line 212
    .line 213
    const/4 v6, 0x3

    .line 214
    if-ge v5, v6, :cond_10

    .line 215
    .line 216
    new-instance v6, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 217
    .line 218
    invoke-virtual {v12}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    if-eqz v8, :cond_e

    .line 223
    .line 224
    invoke-virtual {v8}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    move-object v10, v8

    .line 229
    goto :goto_8

    .line 230
    :cond_e
    move-object v10, v2

    .line 231
    :goto_8
    if-nez v5, :cond_f

    .line 232
    .line 233
    const/4 v14, 0x1

    .line 234
    goto :goto_9

    .line 235
    :cond_f
    const/4 v14, 0x0

    .line 236
    :goto_9
    const/16 v15, 0x10

    .line 237
    .line 238
    const/16 v16, 0x0

    .line 239
    .line 240
    const/4 v9, 0x0

    .line 241
    const/4 v11, 0x0

    .line 242
    const/4 v13, 0x0

    .line 243
    move-object v8, v6

    .line 244
    invoke-direct/range {v8 .. v16}, Lteam/opay/core/api/graphql/BettingOutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/graphql/BettingInfo;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :cond_10
    move v5, v7

    .line 253
    goto :goto_7

    .line 254
    :cond_11
    iget-object v1, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 255
    .line 256
    new-instance v11, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 257
    .line 258
    const/16 v9, 0x20

    .line 259
    .line 260
    const/4 v10, 0x0

    .line 261
    const/4 v3, 0x0

    .line 262
    const/4 v4, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x0

    .line 265
    const/4 v7, 0x1

    .line 266
    const/4 v8, 0x0

    .line 267
    move-object v2, v11

    .line 268
    invoke-direct/range {v2 .. v10}, Lteam/opay/core/api/graphql/BettingOutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/graphql/BettingInfo;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/api/BettingAccount;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "providerId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lifecycleOwner"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "next"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lx7b;->a:Lx7b;

    .line 22
    .line 23
    const-string v1, "AccountNumber"

    .line 24
    .line 25
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2}, Lteam/opay/core/api/BettingProvider;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    const-string v3, "operator_name"

    .line 46
    .line 47
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x2

    .line 52
    new-array v3, v3, [Lkotlin/Pair;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v1, v3, v4

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    aput-object v2, v3, v1

    .line 59
    .line 60
    const-string v1, "COMMON_betting_lookup_account"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->N()Lxt;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-instance v2, Lteam/opay/core/api/BettingAccountRequest;

    .line 79
    .line 80
    invoke-direct {v2, p2, p1}, Lteam/opay/core/api/BettingAccountRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v2}, Lxt;->k(Lteam/opay/core/api/BettingAccountRequest;)Lretrofit2/Call;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v7, Lz31;

    .line 96
    .line 97
    move-object v1, v7

    .line 98
    move-object v2, p0

    .line 99
    move-object v3, p2

    .line 100
    move-object v4, p1

    .line 101
    move-object v5, p3

    .line 102
    move-object v6, p4

    .line 103
    invoke-direct/range {v1 .. v6}, Lz31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p3, v7}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BettingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P(Lag8;)V
    .locals 25
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "lifecycleOwner"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 11
    .line 12
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 21
    .line 22
    const-class v5, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 29
    .line 30
    new-instance v15, Lteam/opay/core/api/graphql/ConfigRsp;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v6, v5

    .line 41
    :goto_0
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->latitude()D

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v7, v5

    .line 53
    :goto_1
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserLocationGenerator;->longitude()D

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move-object v8, v5

    .line 65
    :goto_2
    sget-object v9, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 66
    .line 67
    invoke-virtual {v9}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-virtual {v9}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    sget-object v9, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 76
    .line 77
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v9, v2}, Lteam/opay/swarmfoundation/device/AuthUtil;->D(Landroid/content/Context;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IAppDataGenerator;->versionCode()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object v2, v5

    .line 101
    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/ICityDataGenerator;->cityId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_4
    :goto_4
    move-object v13, v2

    .line 115
    goto :goto_6

    .line 116
    :cond_5
    :goto_5
    const-string v2, ""

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :goto_6
    invoke-static {v3}, Ljmf;->r(Landroid/content/Context;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    invoke-static {v3}, Ljmf;->q(Landroid/content/Context;)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v4, :cond_6

    .line 136
    .line 137
    invoke-interface {v4}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->role()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    move-object/from16 v16, v3

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :cond_6
    move-object/from16 v16, v5

    .line 145
    .line 146
    :goto_7
    const v23, 0x1e000

    .line 147
    .line 148
    .line 149
    const/16 v24, 0x0

    .line 150
    .line 151
    const-string v9, "NG"

    .line 152
    .line 153
    const-string v17, "1"

    .line 154
    .line 155
    const-string v18, "1"

    .line 156
    .line 157
    const/16 v19, 0x0

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    const/16 v22, 0x0

    .line 164
    .line 165
    move-object v5, v15

    .line 166
    move-object v3, v15

    .line 167
    move-object v15, v2

    .line 168
    invoke-direct/range {v5 .. v24}, Lteam/opay/core/api/graphql/ConfigRsp;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->k:Lteam/opay/pay/payment/betting/BettingRepository;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Lteam/opay/pay/payment/betting/BettingRepository;->f(Lteam/opay/core/api/graphql/ConfigRsp;)Landroidx/lifecycle/LiveData;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-instance v3, Lv31;

    .line 178
    .line 179
    invoke-direct {v3, v0}, Lv31;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v2, v1, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/BettingConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->F:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S()Lteam/opay/core/api/graphql/BettingCalculateRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/betting/BettingBundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->G:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 25
    .line 26
    iget-object v3, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o:Lteam/opay/core/api/graphql/BettingCalculateRsp;

    .line 27
    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    move-object v5, v4

    .line 51
    check-cast v5, Lteam/opay/core/api/graphql/BettingInfo;

    .line 52
    .line 53
    invoke-virtual {v5}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object v5, v1

    .line 65
    :goto_1
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move-object v4, v1

    .line 73
    :goto_2
    check-cast v4, Lteam/opay/core/api/graphql/BettingInfo;

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move-object v4, v1

    .line 77
    :goto_3
    if-eqz v4, :cond_5

    .line 78
    .line 79
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingInfo;->c()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move-object v0, v1

    .line 85
    :goto_4
    if-nez v0, :cond_6

    .line 86
    .line 87
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_6
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {v2}, Lteam/opay/pay/payment/LifeRewardResponse;->a()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lteam/opay/pay/payment/LifeServiceResponseList;

    .line 104
    .line 105
    if-eqz v3, :cond_7

    .line 106
    .line 107
    invoke-virtual {v3}, Lteam/opay/pay/payment/LifeServiceResponseList;->c()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_5

    .line 112
    :cond_7
    move-object v3, v1

    .line 113
    :goto_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_c

    .line 122
    .line 123
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Lteam/opay/pay/payment/betting/BettingBundle;

    .line 128
    .line 129
    if-eqz v3, :cond_a

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_9

    .line 140
    .line 141
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    move-object v8, v7

    .line 146
    check-cast v8, Lteam/opay/pay/payment/LifeServiceAmountResponseList;

    .line 147
    .line 148
    invoke-virtual {v8}, Lteam/opay/pay/payment/LifeServiceAmountResponseList;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    invoke-virtual {v5}, Lteam/opay/pay/payment/betting/BettingBundle;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v9}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_8

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_9
    move-object v7, v1

    .line 168
    :goto_7
    check-cast v7, Lteam/opay/pay/payment/LifeServiceAmountResponseList;

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_a
    move-object v7, v1

    .line 172
    :goto_8
    if-eqz v7, :cond_b

    .line 173
    .line 174
    invoke-virtual {v7}, Lteam/opay/pay/payment/LifeServiceAmountResponseList;->a()Lteam/opay/pay/api/MarketingPlan;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    goto :goto_9

    .line 179
    :cond_b
    move-object v6, v1

    .line 180
    :goto_9
    invoke-virtual {v5, v6}, Lteam/opay/pay/payment/betting/BettingBundle;->h(Lteam/opay/pay/api/MarketingPlan;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_c
    if-eqz v2, :cond_d

    .line 185
    .line 186
    invoke-virtual {v2}, Lteam/opay/pay/payment/LifeRewardResponse;->b()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    goto :goto_a

    .line 191
    :cond_d
    const/4 v1, 0x0

    .line 192
    :goto_a
    iput-boolean v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->I:Z

    .line 193
    .line 194
    return-object v0
.end method

.method public final V()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BettingOutInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final W(Landroid/content/Intent;)Lkotlin/Pair;
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Lteam/opay/core/api/graphql/BettingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "para_operator_id"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->s:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    const-string v2, "para_user_id"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :cond_3
    :goto_0
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->t:Ljava/lang/String;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_7

    .line 50
    .line 51
    const-string v1, "para_currency_amount"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    const-string v1, "."

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {p1, v1, v3, v2, v0}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_1
    if-ge v1, v0, :cond_5

    .line 75
    .line 76
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/16 v4, 0x2e

    .line 81
    .line 82
    if-ne v2, v4, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 v1, -0x1

    .line 89
    :goto_2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    move-object v0, p1

    .line 95
    :goto_3
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v:Ljava/lang/CharSequence;

    .line 96
    .line 97
    move-object v0, p1

    .line 98
    :cond_7
    iput-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->u:Ljava/lang/String;

    .line 99
    .line 100
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->s:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz p1, :cond_8

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_a

    .line 109
    .line 110
    :cond_8
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->t:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz p1, :cond_9

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_a

    .line 119
    .line 120
    :cond_9
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->u:Ljava/lang/String;

    .line 121
    .line 122
    if-eqz p1, :cond_b

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_a

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_a
    new-instance p1, Lkotlin/Pair;

    .line 132
    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->Z()Lteam/opay/core/api/graphql/BettingInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_b
    :goto_4
    new-instance p1, Lkotlin/Pair;

    .line 144
    .line 145
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    .line 147
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->d0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_5
    return-object p1
.end method

.method public final X()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Lteam/opay/core/api/graphql/BettingInfo;
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lteam/opay/core/api/graphql/BettingInfo;

    .line 20
    .line 21
    iget-object v4, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->s:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    :cond_2
    check-cast v2, Lteam/opay/core/api/graphql/BettingInfo;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lteam/opay/core/api/BettingProvider;->w()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x1

    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->d0()Lteam/opay/core/api/graphql/BettingInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_0
    return-object v2
.end method

.method public final a0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/BettingAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->B:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c0()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BettingInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o()Lteam/opay/core/api/Country;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/pay/payment/betting/BettingTopupViewModel$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    return-object v0
.end method

.method public final d0()Lteam/opay/core/api/graphql/BettingInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Lteam/opay/core/api/graphql/BettingInfo;

    .line 30
    .line 31
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v5}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v5, v1

    .line 43
    :goto_0
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 62
    .line 63
    move-object v1, v3

    .line 64
    :cond_2
    check-cast v1, Lteam/opay/core/api/graphql/BettingInfo;

    .line 65
    .line 66
    :cond_3
    if-nez v1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v1, v0

    .line 75
    check-cast v1, Lteam/opay/core/api/graphql/BettingInfo;

    .line 76
    .line 77
    :cond_4
    return-object v1
.end method

.method public final e0()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h0()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->r:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0(Lteam/opay/core/api/graphql/BettingInfo;)Ljava/lang/String;
    .locals 7
    .param p1    # Lteam/opay/core/api/graphql/BettingInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "bettingInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    move-object v3, v1

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v5, v2, 0x1

    .line 26
    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 30
    .line 31
    .line 32
    :cond_0
    check-cast v4, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 33
    .line 34
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v6}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v6, v1

    .line 50
    :goto_1
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/BettingOutInfo;->c()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :cond_2
    move v2, v5

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return-object v3
.end method

.method public final j0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Lteam/opay/core/api/graphql/BettingInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m0()Lteam/opay/core/api/BettingAccount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->J:Lteam/opay/core/api/BettingAccount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->D:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o0()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/api/QueryVoucherItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->C:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final p0(Lteam/opay/pay/api/QueryVoucherItem;)Lteam/opay/core/api/graphql/BettingInfo;
    .locals 5
    .param p1    # Lteam/opay/pay/api/QueryVoucherItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string/jumbo v0, "voucher"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getProviderInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lteam/opay/pay/api/ProviderInfoItem;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->p:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lteam/opay/core/api/graphql/BettingInfo;

    .line 46
    .line 47
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->w()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v4, 0x1

    .line 58
    if-ne v3, v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0}, Lteam/opay/pay/api/ProviderInfoItem;->getProviderId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_2
    const/4 p1, 0x0

    .line 80
    return-object p1
.end method

.method public final q0(Landroid/content/Intent;)Z
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v2, "para_operator_id"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :cond_1
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    const-string v3, "para_currency_amount"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_3

    .line 35
    .line 36
    :cond_2
    move-object v2, v0

    .line 37
    :cond_3
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    const-string v4, "para_user_id"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    :cond_4
    move-object v3, v0

    .line 54
    :cond_5
    if-eqz p1, :cond_6

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    const-string v4, "para_open_cashDesk"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_0

    .line 69
    :cond_6
    const/4 p1, 0x0

    .line 70
    :goto_0
    if-nez p1, :cond_7

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_7
    move-object v0, p1

    .line 74
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_8

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-lez p1, :cond_8

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-lez p1, :cond_8

    .line 91
    .line 92
    const-string p1, "false"

    .line 93
    .line 94
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_8

    .line 99
    .line 100
    const/4 p1, 0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_8
    const/4 p1, 0x0

    .line 103
    :goto_2
    return p1
.end method

.method public final r0(Lteam/opay/pay/api/QueryVoucherItem;)Z
    .locals 5
    .param p1    # Lteam/opay/pay/api/QueryVoucherItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "voucher"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/api/QueryVoucherItem;->getProviderInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    check-cast v2, Lteam/opay/pay/api/ProviderInfoItem;

    .line 30
    .line 31
    invoke-virtual {v2}, Lteam/opay/pay/api/ProviderInfoItem;->getProviderId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "Betting"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2}, Lteam/opay/pay/api/ProviderInfoItem;->getProviderId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v0

    .line 63
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    :cond_2
    move-object v0, v1

    .line 70
    :cond_3
    check-cast v0, Lteam/opay/pay/api/ProviderInfoItem;

    .line 71
    .line 72
    :cond_4
    if-eqz v0, :cond_5

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_5
    const/4 p1, 0x0

    .line 77
    :goto_1
    return p1
.end method

.method public final s0(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/android/money/MoneyAmount;)Z
    .locals 2
    .param p1    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/android/money/MoneyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "minAmount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "maxAmount"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->v:Ljava/lang/CharSequence;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-gtz p2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ltz p1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    :cond_1
    :goto_0
    return v1
.end method

.method public final t0(Lteam/opay/core/api/graphql/BettingCalculateRsp;)Lteam/opay/core/api/graphql/BettingCalculateRsp;
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingCalculateRsp;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    add-int/lit8 v4, v2, 0x1

    .line 26
    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 30
    .line 31
    .line 32
    :cond_0
    check-cast v3, Lteam/opay/core/api/graphql/BettingInfo;

    .line 33
    .line 34
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingInfo;->c()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    add-int/lit8 v6, v3, 0x1

    .line 56
    .line 57
    if-gez v3, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 60
    .line 61
    .line 62
    :cond_1
    check-cast v5, Lteam/opay/pay/payment/betting/BettingBundle;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v5, v3}, Lteam/opay/pay/payment/betting/BettingBundle;->h(Lteam/opay/pay/api/MarketingPlan;)V

    .line 66
    .line 67
    .line 68
    move v3, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v2, v4

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object p1
.end method

.method public final u0(Lteam/opay/core/api/BettingAccount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/BettingAccount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->J:Lteam/opay/core/api/BettingAccount;

    .line 2
    .line 3
    return-void
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object p1, v0

    .line 20
    :goto_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v4, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;

    .line 29
    .line 30
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel$showHighLightAmount$1;-><init>(Lteam/opay/pay/payment/betting/BettingTopupViewModel;Ljava/lang/Float;Ljr2;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final w0(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V
    .locals 1
    .param p1    # Lteam/opay/pay/android/BaseShowAdActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/odialog/net/AdDataItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/ad/AdConfigDialogManager;->a:Lteam/opay/pay/ad/AdConfigDialogManager$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/ad/AdConfigDialogManager$Companion;->a()Lteam/opay/pay/ad/AdConfigDialogManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/ad/AdConfigDialogManager;->i(Lteam/opay/pay/android/BaseShowAdActivity;Lteam/opay/odialog/net/AdDataItem;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final x0(Lteam/opay/core/api/graphql/BettingInfo;)V
    .locals 13
    .param p1    # Lteam/opay/core/api/graphql/BettingInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "provider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->m:Lteam/opay/core/api/graphql/BettingInfo;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v3, v1

    .line 26
    check-cast v3, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 27
    .line 28
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v4, v2

    .line 50
    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v1, v2

    .line 58
    :goto_1
    check-cast v1, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_8

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    add-int/lit8 v3, v0, 0x1

    .line 80
    .line 81
    if-gez v0, :cond_3

    .line 82
    .line 83
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 84
    .line 85
    .line 86
    :cond_3
    check-cast v2, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 87
    .line 88
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/BettingOutInfo;->b()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v2, v0}, Lteam/opay/core/api/graphql/BettingOutInfo;->g(Z)V

    .line 101
    .line 102
    .line 103
    move v0, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v3, 0x0

    .line 112
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    add-int/lit8 v5, v3, 0x1

    .line 123
    .line 124
    if-gez v3, :cond_5

    .line 125
    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 127
    .line 128
    .line 129
    :cond_5
    check-cast v4, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 130
    .line 131
    invoke-virtual {v4, v0}, Lteam/opay/core/api/graphql/BettingOutInfo;->g(Z)V

    .line 132
    .line 133
    .line 134
    move v3, v5

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 137
    .line 138
    new-instance v12, Lteam/opay/core/api/graphql/BettingOutInfo;

    .line 139
    .line 140
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/BettingInfo;->d()Lteam/opay/core/api/BettingProvider;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {v3}, Lteam/opay/core/api/BettingProvider;->f()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :cond_7
    move-object v5, v2

    .line 151
    const/16 v10, 0x10

    .line 152
    .line 153
    const/4 v11, 0x0

    .line 154
    const/4 v4, 0x0

    .line 155
    const-string v6, "0"

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x1

    .line 159
    move-object v3, v12

    .line 160
    move-object v7, p1

    .line 161
    invoke-direct/range {v3 .. v11}, Lteam/opay/core/api/graphql/BettingOutInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/graphql/BettingInfo;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v1, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    const/4 v0, 0x2

    .line 174
    if-le p1, v0, :cond_8

    .line 175
    .line 176
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->q:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    sub-int/2addr v1, v0

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_8
    return-void
.end method
