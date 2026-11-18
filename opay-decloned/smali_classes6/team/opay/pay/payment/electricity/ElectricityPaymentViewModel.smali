.class public final Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "ElectricityPaymentViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ%\u0010 \u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010#\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008#\u0010$JI\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0008\u0010)\u001a\u0004\u0018\u00010(2\u0008\u0010+\u001a\u0004\u0018\u00010*2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010%\u00a2\u0006\u0004\u0008.\u0010/J\'\u00103\u001a\u0004\u0018\u0001002\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u0002000%2\u0008\u00102\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u00083\u00104J\u0015\u00108\u001a\u0002072\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00088\u00109J\u001d\u0010:\u001a\u00020\u00102\u0006\u00106\u001a\u0002052\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008:\u0010;J\r\u0010<\u001a\u000207\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u0010\u00a2\u0006\u0004\u0008>\u0010?J\r\u0010@\u001a\u00020\u0010\u00a2\u0006\u0004\u0008@\u0010?J\u0015\u0010A\u001a\u0002072\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u0008A\u00109J\u0017\u0010C\u001a\u00020\u00102\u0008\u0010B\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008C\u0010DR\u0017\u0010\u0005\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR(\u0010R\u001a\u0008\u0012\u0004\u0012\u0002070K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR(\u0010W\u001a\u0008\u0012\u0004\u0012\u00020S0K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010M\u001a\u0004\u0008U\u0010O\"\u0004\u0008V\u0010QR(\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020X0K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010M\u001a\u0004\u0008Z\u0010O\"\u0004\u0008[\u0010QR/\u00101\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u000207\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000%0]0K8\u0006\u00a2\u0006\u000c\n\u0004\u0008^\u0010M\u001a\u0004\u0008_\u0010OR\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020`0K8\u0006\u00a2\u0006\u000c\n\u0004\u0008a\u0010M\u001a\u0004\u0008b\u0010OR\u001d\u0010h\u001a\u0008\u0012\u0004\u0012\u0002070c8\u0006\u00a2\u0006\u000c\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010gR\u001d\u0010k\u001a\u0008\u0012\u0004\u0012\u0002070c8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010e\u001a\u0004\u0008j\u0010gR\u001f\u0010n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100c8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010e\u001a\u0004\u0008m\u0010gR#\u0010r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020o0%0K8\u0006\u00a2\u0006\u000c\n\u0004\u0008p\u0010M\u001a\u0004\u0008q\u0010OR\u0017\u0010x\u001a\u00020s8\u0006\u00a2\u0006\u000c\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010wR$\u0010~\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010\u0012R)\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R(\u0010\u008a\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0005\u0008\u0089\u0001\u0010DR\u0018\u0010\u008c\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010>R#\u0010\u0090\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u008d\u00010K8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u008e\u0001\u0010M\u001a\u0005\u0008\u008f\u0001\u0010OR\'\u0010\u0095\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0091\u0001\u0010>\u001a\u0005\u0008\u0092\u0001\u0010=\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R#\u0010\u0099\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u0096\u00010K8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0097\u0001\u0010M\u001a\u0005\u0008\u0098\u0001\u0010OR+\u0010\u009e\u0001\u001a\u0012\u0012\u0004\u0012\u00020\u0019\u0012\u0007\u0012\u0005\u0018\u00010\u0096\u00010\u009a\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008@\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R&\u0010\u00a1\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008A\u0010>\u001a\u0005\u0008\u009f\u0001\u0010=\"\u0006\u0008\u00a0\u0001\u0010\u0094\u0001R+\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008{\u0010\u00a3\u0001\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001b\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00a9\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008b\u0010\u00aa\u0001R\u0017\u0010\u00ae\u0001\u001a\u00030\u00ac\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008\u007f\u0010\u00ad\u0001R\u0018\u0010\u00b1\u0001\u001a\u00030\u00af\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0085\u0001\u0010\u00b0\u0001R\u0019\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u00b2\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008t\u0010\u00b3\u0001\u00a8\u0006\u00b5\u0001"
    }
    d2 = {
        "Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "application",
        "sessionProvider",
        "Lteam/opay/pay/payment/electricity/ElectricityRepository;",
        "electricityRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/payment/electricity/ElectricityRepository;)V",
        "Lteam/opay/pay/payment/ElectricityCalculateRsp;",
        "result",
        "Y",
        "(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Lteam/opay/pay/payment/ElectricityCalculateRsp;",
        "Lteam/opay/pay/payment/ChargeInfo;",
        "chartInfo",
        "",
        "X",
        "(Lteam/opay/pay/payment/ChargeInfo;)V",
        "Lag8;",
        "lifecycleOwner",
        "z",
        "(Lag8;)V",
        "Lteam/opay/pay/payment/electricity/ElectricityBundleV3;",
        "selectProviderBundle",
        "",
        "G",
        "(Lteam/opay/pay/payment/electricity/ElectricityBundleV3;)Ljava/lang/String;",
        "Lteam/opay/pay/payment/LifeRequest;",
        "request",
        "",
        "action",
        "S",
        "(Lteam/opay/pay/payment/LifeRequest;ILag8;)V",
        "Lteam/opay/pay/payment/LifeRewardsReq;",
        "V",
        "(Lteam/opay/pay/payment/LifeRewardsReq;Lag8;)V",
        "",
        "Lteam/opay/pay/payment/electricity/PanelItem;",
        "panels",
        "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
        "searchStatus",
        "Lteam/opay/pay/payment/ElectricityCustomerInfo;",
        "customerInfo",
        "Lteam/opay/pay/payment/LifeServiceAmountResponseList;",
        "serviceIdAmountDataList",
        "d0",
        "(Ljava/util/List;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Lteam/opay/pay/payment/ElectricityCustomerInfo;Ljava/util/List;)Ljava/util/List;",
        "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
        "electricityServices",
        "selectName",
        "b0",
        "(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
        "Lteam/opay/pay/payment/BeneficiaryViewModel;",
        "vm",
        "",
        "R",
        "(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z",
        "a0",
        "(Lteam/opay/pay/payment/BeneficiaryViewModel;Lag8;)V",
        "U",
        "()Z",
        "Z",
        "()V",
        "u",
        "v",
        "payAmount",
        "j0",
        "(Ljava/lang/String;)V",
        "b",
        "Lteam/opay/core/api/e;",
        "getSessionProvider",
        "()Lteam/opay/core/api/e;",
        "c",
        "Lteam/opay/pay/payment/electricity/ElectricityRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "E",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoading",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loading",
        "Lteam/opay/pay/kyc/base/ErrorMsg;",
        "e",
        "M",
        "setServiceError",
        "serviceError",
        "Lteam/opay/pay/kyc/base/ErrorMessageAction;",
        "f",
        "F",
        "setLookUpError",
        "lookUpError",
        "Lkotlin/Pair;",
        "g",
        "y",
        "Lteam/opay/pay/payment/electricity/ElectricityCustomer;",
        "h",
        "x",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "i",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "D",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "keyBoardShowEvent",
        "j",
        "N",
        "showAddBeneficiaryEvent",
        "k",
        "P",
        "showKeyboardEvent",
        "Lteam/opay/odialog/net/ADListItem;",
        "l",
        "getAdList",
        "adList",
        "Lcom/google/gson/Gson;",
        "m",
        "Lcom/google/gson/Gson;",
        "B",
        "()Lcom/google/gson/Gson;",
        "gson",
        "n",
        "Lteam/opay/pay/payment/ChargeInfo;",
        "w",
        "()Lteam/opay/pay/payment/ChargeInfo;",
        "c0",
        "chargeInfo",
        "o",
        "Lteam/opay/pay/payment/electricity/ElectricityBundleV3;",
        "L",
        "()Lteam/opay/pay/payment/electricity/ElectricityBundleV3;",
        "g0",
        "(Lteam/opay/pay/payment/electricity/ElectricityBundleV3;)V",
        "p",
        "Ljava/lang/String;",
        "H",
        "()Ljava/lang/String;",
        "e0",
        "meterNum",
        "q",
        "lookUpNetError",
        "",
        "r",
        "C",
        "highLightEvent",
        "s",
        "Q",
        "i0",
        "(Z)V",
        "skipLookUp",
        "Lteam/opay/pay/payment/LifeRewardResponse;",
        "t",
        "J",
        "rewardDataLivedata",
        "",
        "Ljava/util/Map;",
        "K",
        "()Ljava/util/Map;",
        "rewardDataMap",
        "O",
        "h0",
        "showBindVoucherSalePage",
        "Lteam/opay/pay/cashier/LifePreOrder;",
        "Lteam/opay/pay/cashier/LifePreOrder;",
        "I",
        "()Lteam/opay/pay/cashier/LifePreOrder;",
        "f0",
        "(Lteam/opay/pay/cashier/LifePreOrder;)V",
        "prePay",
        "Lteam/opay/pay/payment/SaveBeneficiaryReq;",
        "Lteam/opay/pay/payment/SaveBeneficiaryReq;",
        "cacheSaveBeneficiaryReq",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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


# instance fields
.field public final b:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/payment/electricity/ElectricityRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroidx/lifecycle/MutableLiveData;
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

.field public e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMessageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/electricity/ElectricityCustomer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final j:Lteam/opay/pay/util/SingleLiveEvent;
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

.field public final k:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/ADListItem;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/google/gson/Gson;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/payment/ChargeInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z

.field public final r:Landroidx/lifecycle/MutableLiveData;
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

.field public s:Z

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/LifeRewardResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Ljava/util/Map;
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

.field public v:Z

.field public w:Lteam/opay/pay/cashier/LifePreOrder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Lteam/opay/pay/payment/SaveBeneficiaryReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/api/e;Lteam/opay/pay/payment/electricity/ElectricityRepository;)V
    .locals 6
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/payment/electricity/ElectricityRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "electricityRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->c:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 22
    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 59
    .line 60
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 64
    .line 65
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 66
    .line 67
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 71
    .line 72
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 73
    .line 74
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 78
    .line 79
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    new-instance p1, Lcom/google/gson/Gson;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->m:Lcom/google/gson/Gson;

    .line 92
    .line 93
    const-string p1, ""

    .line 94
    .line 95
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 96
    .line 97
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 98
    .line 99
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v3, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$1;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Ljr2;)V

    .line 116
    .line 117
    .line 118
    const/4 v4, 0x2

    .line 119
    const/4 v5, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 122
    .line 123
    .line 124
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 125
    .line 126
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 130
    .line 131
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->u:Ljava/util/Map;

    .line 137
    .line 138
    return-void
.end method

.method public static final A(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/pay/payment/ElectricityCalculateRsp;->a()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v4, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 32
    .line 33
    if-ne v1, v4, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$a;->a:[I

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    aget v0, v1, v0

    .line 56
    .line 57
    if-eq v0, v3, :cond_8

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    if-eq v0, v1, :cond_7

    .line 61
    .line 62
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/payment/ElectricityCalculateRsp;->a()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move-object v0, v2

    .line 76
    :goto_2
    if-eqz v0, :cond_a

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->Y(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    new-instance v0, Lkotlin/Pair;

    .line 98
    .line 99
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/pay/payment/ElectricityCalculateRsp;->a()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_5
    if-nez v2, :cond_6

    .line 108
    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_6
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 121
    .line 122
    new-instance v6, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const/4 v4, 0x4

    .line 133
    const/4 v5, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    move-object v0, v6

    .line 136
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 150
    .line 151
    new-instance v0, Lkotlin/Pair;

    .line 152
    .line 153
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lteam/opay/pay/payment/ElectricityCalculateRsp;

    .line 160
    .line 161
    invoke-virtual {p1}, Lteam/opay/pay/payment/ElectricityCalculateRsp;->a()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-nez p1, :cond_9

    .line 166
    .line 167
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :cond_9
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0
.end method

.method public static final T(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRequest;ILteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v4, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$a;->a:[I

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    aget v4, v5, v4

    .line 34
    .line 35
    const-string v5, "st"

    .line 36
    .line 37
    const-string v6, "operator_name"

    .line 38
    .line 39
    const-string v7, "AccountNumber"

    .line 40
    .line 41
    const-string v8, "COMMON_electricity_lookup_account_after"

    .line 42
    .line 43
    if-eq v4, v3, :cond_2

    .line 44
    .line 45
    if-eq v4, v2, :cond_1

    .line 46
    .line 47
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v4, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 53
    .line 54
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v4, v9}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->q:Z

    .line 60
    .line 61
    sget-object v4, Lx7b;->a:Lx7b;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-static {v7, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->b()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v6, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v6, "1"

    .line 80
    .line 81
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const-string v6, "msg"

    .line 86
    .line 87
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-static {v6, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/4 v9, 0x4

    .line 96
    new-array v9, v9, [Lkotlin/Pair;

    .line 97
    .line 98
    aput-object v7, v9, v1

    .line 99
    .line 100
    aput-object p1, v9, v3

    .line 101
    .line 102
    aput-object v5, v9, v2

    .line 103
    .line 104
    aput-object v6, v9, v0

    .line 105
    .line 106
    invoke-virtual {v4, v8, v9}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    new-instance p1, Lteam/opay/pay/kyc/base/ErrorMessageAction;

    .line 112
    .line 113
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-direct {p1, v0, v1, p2, p3}, Lteam/opay/pay/kyc/base/ErrorMessageAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    iput-boolean v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->q:Z

    .line 141
    .line 142
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    if-eqz v4, :cond_3

    .line 147
    .line 148
    sget-object v4, Lx7b;->a:Lx7b;

    .line 149
    .line 150
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->a()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-static {v7, v9}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->b()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v6, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v6, "0"

    .line 167
    .line 168
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    new-array v0, v0, [Lkotlin/Pair;

    .line 173
    .line 174
    aput-object v7, v0, v1

    .line 175
    .line 176
    aput-object p1, v0, v3

    .line 177
    .line 178
    aput-object v5, v0, v2

    .line 179
    .line 180
    invoke-virtual {v4, v8, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 184
    .line 185
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 191
    .line 192
    new-instance p1, Lteam/opay/pay/payment/electricity/ElectricityCustomer;

    .line 193
    .line 194
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    check-cast p3, Lteam/opay/pay/payment/ElectricityCustomerInfo;

    .line 199
    .line 200
    invoke-direct {p1, p3, p2}, Lteam/opay/pay/payment/electricity/ElectricityCustomer;-><init>(Lteam/opay/pay/payment/ElectricityCustomerInfo;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-eq v1, v2, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->u:Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRewardsReq;->a()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lteam/opay/pay/payment/LifeAmountReqList;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeAmountReqList;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v2, v0

    .line 40
    :goto_1
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->A(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRequest;ILteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->T(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRequest;ILteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->W(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final B()Lcom/google/gson/Gson;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->m:Lcom/google/gson/Gson;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMessageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Lteam/opay/pay/payment/electricity/ElectricityBundleV3;)Ljava/lang/String;
    .locals 4
    .param p1    # Lteam/opay/pay/payment/electricity/ElectricityBundleV3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->u:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->n()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/payment/LifeRewardResponse;->a()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lteam/opay/pay/payment/LifeServiceResponseList;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/payment/LifeServiceResponseList;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v0, v1

    .line 45
    :goto_1
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move-object v3, v0

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->m()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_5
    if-nez v1, :cond_6

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_6
    move-object v3, v1

    .line 66
    :goto_3
    return-object v3
.end method

.method public final H()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Lteam/opay/pay/cashier/LifePreOrder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->w:Lteam/opay/pay/cashier/LifePreOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/LifeRewardResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/payment/LifeRewardResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->u:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Lteam/opay/pay/payment/electricity/ElectricityBundleV3;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/ErrorMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Lteam/opay/pay/util/SingleLiveEvent;
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->j:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final P()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->k:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z
    .locals 3
    .param p1    # Lteam/opay/pay/payment/BeneficiaryViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "vm"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 20
    .line 21
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Lteam/opay/pay/payment/BeneficiaryViewModel;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public final S(Lteam/opay/pay/payment/LifeRequest;ILag8;)V
    .locals 5
    .param p1    # Lteam/opay/pay/payment/LifeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lx7b;->a:Lx7b;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AccountNumber"

    .line 18
    .line 19
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "operator_name"

    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRequest;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    new-array v3, v3, [Lkotlin/Pair;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v1, v3, v4

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    aput-object v2, v3, v1

    .line 41
    .line 42
    const-string v1, "COMMON_electricity_lookup_account"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->c:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->k(Lteam/opay/pay/payment/LifeRequest;)Landroidx/lifecycle/LiveData;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lph5;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1, p2}, Lph5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRequest;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p3, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final V(Lteam/opay/pay/payment/LifeRewardsReq;Lag8;)V
    .locals 2
    .param p1    # Lteam/opay/pay/payment/LifeRewardsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->u:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/payment/LifeRewardsReq;->a()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lteam/opay/pay/payment/LifeAmountReqList;

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/payment/LifeAmountReqList;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lteam/opay/pay/payment/LifeRewardResponse;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->c:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->l(Lteam/opay/pay/payment/LifeRewardsReq;)Landroidx/lifecycle/LiveData;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Loh5;

    .line 48
    .line 49
    invoke-direct {v1, p0, p1}, Loh5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/LifeRewardsReq;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p2, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final X(Lteam/opay/pay/payment/ChargeInfo;)V
    .locals 7
    .param p1    # Lteam/opay/pay/payment/ChargeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "chartInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$recordLastLocal$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$recordLastLocal$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Lteam/opay/pay/payment/ChargeInfo;Ljr2;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final Y(Lteam/opay/pay/payment/ElectricityCalculateRsp;)Lteam/opay/pay/payment/ElectricityCalculateRsp;
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/payment/ElectricityCalculateRsp;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

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
    if-eqz v3, :cond_4

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
    check-cast v3, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;

    .line 33
    .line 34
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;->b()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_3

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
    if-eqz v5, :cond_3

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
    check-cast v5, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {v5, v3}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->r(Lteam/opay/pay/api/MarketingPlan;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    move v3, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v2, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return-object p1
.end method

.method public final Z()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->q:Z

    .line 3
    .line 4
    return-void
.end method

.method public final a0(Lteam/opay/pay/payment/BeneficiaryViewModel;Lag8;)V
    .locals 5
    .param p1    # Lteam/opay/pay/payment/BeneficiaryViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "vm"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "lifecycleOwner"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lteam/opay/pay/payment/SaveBeneficiaryReq;

    .line 13
    .line 14
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->n()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lteam/opay/pay/payment/electricity/ElectricityCustomer;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/ElectricityCustomer;->b()Lteam/opay/pay/payment/ElectricityCustomerInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3}, Lteam/opay/pay/payment/ElectricityCustomerInfo;->b()Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v4, "Customer name"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    :cond_1
    const-string v3, ""

    .line 59
    .line 60
    :cond_2
    const-string v4, "electricity"

    .line 61
    .line 62
    invoke-direct {v0, v4, v1, v2, v3}, Lteam/opay/pay/payment/SaveBeneficiaryReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, p2}, Lteam/opay/pay/payment/BeneficiaryViewModel;->R(Lteam/opay/pay/payment/SaveBeneficiaryReq;Lag8;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final b0(Ljava/util/List;Ljava/lang/String;)Lteam/opay/pay/payment/electricity/ElectricityProviderV3;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "electricityServices"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;

    .line 22
    .line 23
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;->c()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;->k()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityProviderV3;->k()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return-object v0
.end method

.method public final c0(Lteam/opay/pay/payment/ChargeInfo;)V
    .locals 0
    .param p1    # Lteam/opay/pay/payment/ChargeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->n:Lteam/opay/pay/payment/ChargeInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final d0(Ljava/util/List;Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;Lteam/opay/pay/payment/ElectricityCustomerInfo;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/payment/ElectricityCustomerInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            ">;",
            "Lteam/opay/pay/android/views/AmountInputBusnissUtils$AccountStatus;",
            "Lteam/opay/pay/payment/ElectricityCustomerInfo;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/LifeServiceAmountResponseList;",
            ">;)",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/android/money/MoneyAmount;->Companion:Lteam/opay/core/android/money/MoneyAmount$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Lteam/opay/pay/payment/ElectricityCustomerInfo;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, v1

    .line 12
    :goto_0
    const-string v3, ""

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move-object v2, v3

    .line 17
    :cond_1
    iget-object v4, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 18
    .line 19
    invoke-interface {v4}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v2, v4}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p3}, Lteam/opay/pay/payment/ElectricityCustomerInfo;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object p3, v1

    .line 47
    :goto_1
    if-nez p3, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    move-object v3, p3

    .line 51
    :goto_2
    iget-object p3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

    .line 52
    .line 53
    invoke-interface {p3}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Lteam/opay/core/api/GraphQL$Currency;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {v0, v3, p3}, Lteam/opay/core/android/money/MoneyAmount$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/android/money/MoneyAmount;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p3}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p3}, Ljava/math/BigDecimal;->floatValue()F

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p1, :cond_d

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_d

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lteam/opay/pay/payment/electricity/PanelItem;

    .line 90
    .line 91
    if-eqz p4, :cond_6

    .line 92
    .line 93
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    move-object v6, v5

    .line 108
    check-cast v6, Lteam/opay/pay/payment/LifeServiceAmountResponseList;

    .line 109
    .line 110
    invoke-virtual {v6}, Lteam/opay/pay/payment/LifeServiceAmountResponseList;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/PanelItem;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_4

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_5
    move-object v5, v1

    .line 130
    :goto_4
    check-cast v5, Lteam/opay/pay/payment/LifeServiceAmountResponseList;

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_6
    move-object v5, v1

    .line 134
    :goto_5
    if-eqz v5, :cond_7

    .line 135
    .line 136
    invoke-virtual {v5}, Lteam/opay/pay/payment/LifeServiceAmountResponseList;->a()Lteam/opay/pay/api/MarketingPlan;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    goto :goto_6

    .line 141
    :cond_7
    move-object v4, v1

    .line 142
    :goto_6
    invoke-virtual {v3, v4}, Lteam/opay/pay/payment/electricity/PanelItem;->h(Lteam/opay/pay/api/MarketingPlan;)V

    .line 143
    .line 144
    .line 145
    if-nez p2, :cond_8

    .line 146
    .line 147
    const/4 v4, -0x1

    .line 148
    goto :goto_7

    .line 149
    :cond_8
    sget-object v4, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$a;->b:[I

    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    aget v4, v4, v5

    .line 156
    .line 157
    :goto_7
    const/4 v5, 0x1

    .line 158
    if-eq v4, v5, :cond_b

    .line 159
    .line 160
    const/4 v6, 0x2

    .line 161
    if-eq v4, v6, :cond_a

    .line 162
    .line 163
    const/4 v6, 0x3

    .line 164
    if-eq v4, v6, :cond_9

    .line 165
    .line 166
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_9
    invoke-virtual {v3, v5}, Lteam/opay/pay/payment/electricity/PanelItem;->g(Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_a
    invoke-virtual {v3, v5}, Lteam/opay/pay/payment/electricity/PanelItem;->g(Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_b
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/PanelItem;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lteam/opay/core/android/money/MoneyAmount;->getAmount()Ljava/math/BigDecimal;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/4 v6, 0x0

    .line 195
    cmpg-float v7, v2, v4

    .line 196
    .line 197
    if-gtz v7, :cond_c

    .line 198
    .line 199
    cmpg-float v4, v4, p3

    .line 200
    .line 201
    if-gtz v4, :cond_c

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_c
    const/4 v5, 0x0

    .line 205
    :goto_8
    invoke-virtual {v3, v5}, Lteam/opay/pay/payment/electricity/PanelItem;->g(Z)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_d
    return-object p1
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final f0(Lteam/opay/pay/cashier/LifePreOrder;)V
    .locals 0
    .param p1    # Lteam/opay/pay/cashier/LifePreOrder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->w:Lteam/opay/pay/cashier/LifePreOrder;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Lteam/opay/pay/payment/electricity/ElectricityBundleV3;)V
    .locals 0
    .param p1    # Lteam/opay/pay/payment/electricity/ElectricityBundleV3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 2
    .line 3
    return-void
.end method

.method public final h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final i0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public final j0(Ljava/lang/String;)V
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
    new-instance v4, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$showHighLightAmount$1;

    .line 29
    .line 30
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$showHighLightAmount$1;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;Ljava/lang/Float;Ljr2;)V

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

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

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

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

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

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->b:Lteam/opay/core/api/e;

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

.method public final u()V
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/payment/SaveBeneficiaryReq;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->o:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/payment/electricity/ElectricityBundleV3;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->p:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lteam/opay/pay/payment/electricity/ElectricityCustomer;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lteam/opay/pay/payment/electricity/ElectricityCustomer;->b()Lteam/opay/pay/payment/ElectricityCustomerInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Lteam/opay/pay/payment/ElectricityCustomerInfo;->b()Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    const-string v4, "Customer name"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    :cond_1
    const-string v3, ""

    .line 48
    .line 49
    :cond_2
    const-string v4, "electricity"

    .line 50
    .line 51
    invoke-direct {v0, v4, v1, v2, v3}, Lteam/opay/pay/payment/SaveBeneficiaryReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->x:Lteam/opay/pay/payment/SaveBeneficiaryReq;

    .line 55
    .line 56
    return-void
.end method

.method public final v(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z
    .locals 1
    .param p1    # Lteam/opay/pay/payment/BeneficiaryViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "vm"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->x:Lteam/opay/pay/payment/SaveBeneficiaryReq;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/BeneficiaryViewModel;->N(Lteam/opay/pay/payment/SaveBeneficiaryReq;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->R(Lteam/opay/pay/payment/BeneficiaryViewModel;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final w()Lteam/opay/pay/payment/ChargeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->n:Lteam/opay/pay/payment/ChargeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/payment/electricity/ElectricityCustomer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/ElectricityProviderV3;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z(Lag8;)V
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
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;->c:Lteam/opay/pay/payment/electricity/ElectricityRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lteam/opay/pay/payment/electricity/ElectricityRepository;->i(Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lqh5;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lqh5;-><init>(Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$b;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
