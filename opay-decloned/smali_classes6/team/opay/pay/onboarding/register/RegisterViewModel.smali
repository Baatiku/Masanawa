.class public final Lteam/opay/pay/onboarding/register/RegisterViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "RegisterViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/register/RegisterViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ%\u0010\u0012\u001a\u00020\u00112\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001d\u0010 \u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u001d\u0010#\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008#\u0010$J%\u0010\'\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010)\u001a\u00020\u0014\u00a2\u0006\u0004\u0008)\u0010\u0016J!\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u00180\u00172\u0006\u0010*\u001a\u00020\u000f\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010.\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008.\u0010/J\u001f\u00103\u001a\u00020\u00142\u0006\u00101\u001a\u0002002\u0008\u0008\u0002\u00102\u001a\u00020\u0011\u00a2\u0006\u0004\u00083\u00104J!\u00106\u001a\u0002052\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u00086\u00107J!\u0010;\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010:0908\u00a2\u0006\u0004\u0008;\u0010<R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0014\u0010J\u001a\u00020G8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR(\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00110K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001d\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u000f0K8\u0006\u00a2\u0006\u000c\n\u0004\u0008S\u0010M\u001a\u0004\u0008T\u0010OR\u001d\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u000f0K8\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010M\u001a\u0004\u0008W\u0010OR(\u0010\\\u001a\u0008\u0012\u0004\u0012\u0002000K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010M\u001a\u0004\u0008Z\u0010O\"\u0004\u0008[\u0010QR\u001d\u0010_\u001a\u0008\u0012\u0004\u0012\u0002000K8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010M\u001a\u0004\u0008^\u0010OR\u001d\u0010e\u001a\u0008\u0012\u0004\u0012\u0002000`8\u0006\u00a2\u0006\u000c\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010dR\u001d\u0010h\u001a\u0008\u0012\u0004\u0012\u0002000`8\u0006\u00a2\u0006\u000c\n\u0004\u0008f\u0010b\u001a\u0004\u0008g\u0010dR(\u0010m\u001a\u0008\u0012\u0004\u0012\u00020i0K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008j\u0010M\u001a\u0004\u0008k\u0010O\"\u0004\u0008l\u0010QR(\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\u00110K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u0010M\u001a\u0004\u0008o\u0010O\"\u0004\u0008p\u0010QR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR!\u0010y\u001a\u0008\u0012\u0004\u0012\u00020\u00110K8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008v\u0010w\u001a\u0004\u0008x\u0010OR\u001d\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u00140K8\u0006\u00a2\u0006\u000c\n\u0004\u0008z\u0010M\u001a\u0004\u0008{\u0010OR\u001d\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u00140K8\u0006\u00a2\u0006\u000c\n\u0004\u0008}\u0010M\u001a\u0004\u0008~\u0010OR+\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R)\u0010\u008d\u0001\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R)\u0010\u0091\u0001\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u0088\u0001\u001a\u0006\u0008\u008f\u0001\u0010\u008a\u0001\"\u0006\u0008\u0090\u0001\u0010\u008c\u0001R(\u0010\u0097\u0001\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0012\u0010\u0092\u0001\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001R*\u0010\u009d\u0001\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008.\u0010\u0098\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001\"\u0006\u0008\u009b\u0001\u0010\u009c\u0001R!\u0010\u00a1\u0001\u001a\t\u0012\u0005\u0012\u00030\u009e\u00010K8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009f\u0001\u0010M\u001a\u0005\u0008\u00a0\u0001\u0010OR \u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00140K8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0082\u0001\u0010M\u001a\u0005\u0008\u00a2\u0001\u0010ORJ\u0010\u00ab\u0001\u001a$\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00a4\u0001j\u0011\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u0001`\u00a5\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008c\u0010\u00a6\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\"\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u001d\u0010\u00b0\u0001\u001a\u00030\u00ac\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008f\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u00af\u0001\u00a8\u0006\u00b1\u0001"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/register/RegisterViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lcom/opay/team/newhome/viewmodel/AccountNewRepository;",
        "walletRepository",
        "Lteam/opay/pay/onboarding/register/RegisterRepository;",
        "registerRepository",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lteam/opay/pay/onboarding/register/RegisterRepository;Lteam/opay/core/settings/SettingsStorage;)V",
        "",
        "",
        "extMap",
        "",
        "x",
        "(Ljava/util/Map;)Z",
        "",
        "m0",
        "()V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "R",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/onboarding/register/SetPwdReq;",
        "request",
        "Lag8;",
        "lifecycleOwner",
        "i0",
        "(Lteam/opay/pay/onboarding/register/SetPwdReq;Lag8;)V",
        "source",
        "D",
        "(Ljava/lang/String;Lag8;)V",
        "phoneNumber",
        "scene",
        "c0",
        "(Ljava/lang/String;Ljava/lang/String;Lag8;)V",
        "n0",
        "inviteCode",
        "Lteam/opay/pay/onboarding/register/InviteCodeNameResult;",
        "e0",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "y",
        "(Lag8;)V",
        "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
        "accessToken",
        "goNext",
        "Y",
        "(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Z)V",
        "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "Q",
        "(Ljava/util/Map;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "",
        "Lkotlin/Pair;",
        "",
        "N",
        "()[Lkotlin/Pair;",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/account/AccountRepository;",
        "d",
        "Lcom/opay/team/newhome/viewmodel/AccountNewRepository;",
        "e",
        "Lteam/opay/pay/onboarding/register/RegisterRepository;",
        "f",
        "Lteam/opay/core/settings/SettingsStorage;",
        "Lcv7;",
        "g",
        "Lcv7;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "O",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoading",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loading",
        "i",
        "T",
        "requestErrorLiveData",
        "j",
        "H",
        "consultErrorEvent",
        "k",
        "V",
        "setSetPwdLiveData",
        "setPwdLiveData",
        "l",
        "L",
        "guardianResultEvent",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "m",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "B",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "asyncKycResultEvent",
        "n",
        "J",
        "faceManualReviewResultEvent",
        "Lteam/opay/pay/onboarding/register/CommonConfigDataRsp;",
        "o",
        "F",
        "setCommonConfigLiveData",
        "commonConfigLiveData",
        "p",
        "M",
        "setInviteCodeShow",
        "inviteCodeShow",
        "Ljava/text/SimpleDateFormat;",
        "q",
        "Ljava/text/SimpleDateFormat;",
        "dateFormat",
        "r",
        "Lid8;",
        "P",
        "onRegisterSuccess",
        "s",
        "W",
        "showOwealthGuidePage",
        "t",
        "K",
        "goKyc1Page",
        "u",
        "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "A",
        "()Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
        "f0",
        "(Lteam/opay/core/api/graphql/UserInfoSimpleRsp;)V",
        "accountDetail",
        "v",
        "Ljava/lang/String;",
        "S",
        "()Ljava/lang/String;",
        "l0",
        "(Ljava/lang/String;)V",
        "refreshToken",
        "w",
        "C",
        "g0",
        "channel",
        "Z",
        "X",
        "()Z",
        "k0",
        "(Z)V",
        "isPreSetPassword",
        "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
        "U",
        "()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
        "setSetPwdDataRsp",
        "(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;)V",
        "setPwdDataRsp",
        "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
        "z",
        "G",
        "consultDialogEvent",
        "I",
        "consultSuccessEvent",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "getCommonBuriedParamMap",
        "()Ljava/util/HashMap;",
        "h0",
        "(Ljava/util/HashMap;)V",
        "commonBuriedParamMap",
        "Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "getBirthDate",
        "()Lteam/opay/pay/android/validation/CalendarFieldValidation;",
        "birthDate",
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
.field public final A:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final C:Lteam/opay/pay/android/validation/CalendarFieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/pay/onboarding/register/RegisterRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcv7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Landroidx/lifecycle/MutableLiveData;
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

.field public final i:Landroidx/lifecycle/MutableLiveData;
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

.field public final j:Landroidx/lifecycle/MutableLiveData;
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

.field public k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
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
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/register/CommonConfigDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroidx/lifecycle/MutableLiveData;
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

.field public final q:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lteam/opay/core/api/graphql/UserInfoSimpleRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public y:Lteam/opay/pay/onboarding/register/SetPwdDataRsp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/account/AccountRepository;Lcom/opay/team/newhome/viewmodel/AccountNewRepository;Lteam/opay/pay/onboarding/register/RegisterRepository;Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/opay/team/newhome/viewmodel/AccountNewRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/onboarding/register/RegisterRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/settings/SettingsStorage;
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
    const-string v0, "accountRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "walletRepository"

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "registerRepository"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "settingsStorage"

    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->b:Landroid/app/Application;

    .line 31
    .line 32
    iput-object p2, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 33
    .line 34
    iput-object p3, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->d:Lcom/opay/team/newhome/viewmodel/AccountNewRepository;

    .line 35
    .line 36
    iput-object p4, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->e:Lteam/opay/pay/onboarding/register/RegisterRepository;

    .line 37
    .line 38
    iput-object p5, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->f:Lteam/opay/core/settings/SettingsStorage;

    .line 39
    .line 40
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 41
    .line 42
    const-class p3, Lcv7;

    .line 43
    .line 44
    invoke-virtual {p2, p1, p3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcv7;

    .line 49
    .line 50
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->g:Lcv7;

    .line 51
    .line 52
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 65
    .line 66
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 74
    .line 75
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 88
    .line 89
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 93
    .line 94
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 95
    .line 96
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 100
    .line 101
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 102
    .line 103
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 107
    .line 108
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 114
    .line 115
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 116
    .line 117
    const-string/jumbo p2, "yyyy-MM-dd"

    .line 118
    .line 119
    .line 120
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 121
    .line 122
    invoke-direct {p1, p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    .line 124
    .line 125
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->q:Ljava/text/SimpleDateFormat;

    .line 126
    .line 127
    new-instance p1, Ltlc;

    .line 128
    .line 129
    invoke-direct {p1}, Ltlc;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->r:Lid8;

    .line 137
    .line 138
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 139
    .line 140
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 144
    .line 145
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 146
    .line 147
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    const-string p1, ""

    .line 153
    .line 154
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->v:Ljava/lang/String;

    .line 155
    .line 156
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->w:Ljava/lang/String;

    .line 157
    .line 158
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 159
    .line 160
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 164
    .line 165
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 166
    .line 167
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 171
    .line 172
    new-instance p1, Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 173
    .line 174
    const/4 p2, 0x1

    .line 175
    invoke-direct {p1, p2}, Lteam/opay/pay/android/validation/CalendarFieldValidation;-><init>(Z)V

    .line 176
    .line 177
    .line 178
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->C:Lteam/opay/pay/android/validation/CalendarFieldValidation;

    .line 179
    .line 180
    return-void
.end method

.method public static final E(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/onboarding/register/RegisterViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const-string v2, ""

    .line 33
    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v2, p1

    .line 53
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move-object v2, p1

    .line 73
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/pay/onboarding/register/SetPwdDataRsp;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->Y(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final a0(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Lteam/opay/pay/onboarding/register/RegisterViewModel;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->k()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p1, Lteam/opay/pay/onboarding/register/RegisterViewModel;->f:Lteam/opay/core/settings/SettingsStorage;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "token="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", userId="

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ", phone="

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static final b0()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final d0(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Lteam/opay/pay/onboarding/register/RegisterViewModel$a;->a:[I

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    aget v0, v1, v0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final j0(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v2, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lteam/opay/pay/onboarding/register/RegisterViewModel$a;->a:[I

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    aget v2, v3, v2

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    if-eq v2, v1, :cond_3

    .line 36
    .line 37
    if-eq v2, v0, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    sget-object v2, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    const-string v4, "code"

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, "message"

    .line 57
    .line 58
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    new-array v0, v0, [Lkotlin/Pair;

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    aput-object v4, v0, v6

    .line 70
    .line 71
    aput-object v5, v0, v1

    .line 72
    .line 73
    const-string v1, "set_password_error"

    .line 74
    .line 75
    invoke-virtual {v2, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object v3, p1

    .line 88
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 97
    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iput-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->y:Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 107
    .line 108
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->c()Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0, v1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->x(Ljava/util/Map;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 129
    .line 130
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->b()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_6

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_5

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 154
    .line 155
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->i()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_7

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 169
    .line 170
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    :goto_2
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 181
    .line 182
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-nez p1, :cond_a

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_a
    move-object v3, p1

    .line 190
    :goto_3
    invoke-virtual {p0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 194
    .line 195
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->E(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->d0(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->z(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Lteam/opay/pay/onboarding/register/RegisterViewModel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->a0(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Lteam/opay/pay/onboarding/register/RegisterViewModel;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->b0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic w(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->j0(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/onboarding/register/RegisterViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lteam/opay/pay/onboarding/register/RegisterViewModel$a;->a:[I

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    aget v0, v1, v0

    .line 38
    .line 39
    if-eq v0, v3, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->h()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ne v0, v3, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 81
    .line 82
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->f()Lteam/opay/pay/kyc/base/KycConsultDialogRsp;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/KycConsultRsp;->f()Lteam/opay/pay/kyc/base/KycConsultDialogRsp;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-object p0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p0
.end method


# virtual methods
.method public final A()Lteam/opay/core/api/graphql/UserInfoSimpleRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->u:Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->m:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Ljava/lang/String;Lag8;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->e:Lteam/opay/pay/onboarding/register/RegisterRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/register/RegisterRepository;->f(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lvlc;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lvlc;-><init>(Lteam/opay/pay/onboarding/register/RegisterViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final F()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/register/CommonConfigDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycConsultDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->A:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->n:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->l:Landroidx/lifecycle/MutableLiveData;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()[Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->B:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    check-cast v0, [Lkotlin/Pair;

    .line 50
    .line 51
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Q(Ljava/util/Map;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "extMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 7
    .line 8
    const-string v1, "auditRecordSubmitTime"

    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "auditRecordHandleHours"

    .line 36
    .line 37
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "auditRecordPending"

    .line 44
    .line 45
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "true"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v0, v1, v2, v3, p1}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final R()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/UserInfoSimpleRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    const-string v1, "REGISTER"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountRepository;->q(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->v:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Lteam/opay/pay/onboarding/register/SetPwdDataRsp;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->y:Lteam/opay/pay/onboarding/register/SetPwdDataRsp;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/register/SetPwdDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Y(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Z)V
    .locals 3
    .param p1    # Lteam/opay/pay/onboarding/register/SetPwdDataRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accessToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->f:Lteam/opay/core/settings/SettingsStorage;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, ""

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move-object v1, v2

    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->S(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->f:Lteam/opay/core/settings/SettingsStorage;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/onboarding/register/SetPwdDataRsp;->k()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-object v2, v1

    .line 30
    :goto_0
    invoke-virtual {v0, v2}, Lteam/opay/core/settings/SettingsStorage;->q0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->f:Lteam/opay/core/settings/SettingsStorage;

    .line 34
    .line 35
    new-instance v1, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 36
    .line 37
    invoke-direct {v1}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/pin/LoginPhoneStorage;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->s0(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lxk8;->a:Lxk8;

    .line 48
    .line 49
    new-instance v1, Lxlc;

    .line 50
    .line 51
    invoke-direct {v1, p1, p0}, Lxlc;-><init>(Lteam/opay/pay/onboarding/register/SetPwdDataRsp;Lteam/opay/pay/onboarding/register/RegisterViewModel;)V

    .line 52
    .line 53
    .line 54
    const-string p1, "registerSuccess"

    .line 55
    .line 56
    invoke-virtual {v0, p1, v1}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lx7b;->a:Lx7b;

    .line 60
    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .line 63
    const-string v1, "action"

    .line 64
    .line 65
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [Lkotlin/Pair;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    aput-object v0, v1, v2

    .line 74
    .line 75
    const-string v0, "sign_up_finished_success"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lzl8;->a:Lzl8;

    .line 86
    .line 87
    invoke-virtual {p1}, Lzl8;->c()V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 91
    .line 92
    const-class v0, Lteam/opay/swarmfoundation/login/ILoginListener;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lteam/opay/swarmfoundation/login/ILoginListener;

    .line 109
    .line 110
    invoke-interface {v0}, Lteam/opay/swarmfoundation/login/ILoginListener;->onSuccess()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    if-eqz p2, :cond_3

    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->m0()V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;Lag8;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "phoneNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scene"

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->e:Lteam/opay/pay/onboarding/register/RegisterRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/onboarding/register/RegisterRepository;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lylc;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lylc;-><init>(Lteam/opay/pay/onboarding/register/RegisterViewModel;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p3, p2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/onboarding/register/InviteCodeNameResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inviteCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 16
    .line 17
    iget-object v2, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->b:Landroid/app/Application;

    .line 18
    .line 19
    const-class v3, Ldjc;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ldjc;

    .line 26
    .line 27
    new-instance v2, Lteam/opay/pay/onboarding/register/InviteCodeQueryReq;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Lteam/opay/pay/onboarding/register/InviteCodeQueryReq;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v2}, Ldjc;->c(Lteam/opay/pay/onboarding/register/InviteCodeQueryReq;)Lretrofit2/Call;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public final f0(Lteam/opay/core/api/graphql/UserInfoSimpleRsp;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/graphql/UserInfoSimpleRsp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->u:Lteam/opay/core/api/graphql/UserInfoSimpleRsp;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->w:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final h0(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->B:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final i0(Lteam/opay/pay/onboarding/register/SetPwdReq;Lag8;)V
    .locals 1
    .param p1    # Lteam/opay/pay/onboarding/register/SetPwdReq;
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->e:Lteam/opay/pay/onboarding/register/RegisterRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/register/RegisterRepository;->h(Lteam/opay/pay/onboarding/register/SetPwdReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lulc;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lulc;-><init>(Lteam/opay/pay/onboarding/register/RegisterViewModel;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final k0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method public final l0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->v:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v0, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->Companion:Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig$Companion;->a()Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/register/RegisterOwealthConfig;->getEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public final n0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/onboarding/register/RegisterViewModel;->P()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final x(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "auditRecordStatus"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "FAIL"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "INIT"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "CLAIM"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    :cond_2
    return v0
.end method

.method public final y(Lag8;)V
    .locals 14
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
    new-instance v0, Lteam/opay/pay/kyc/base/KycConsultReq;

    .line 7
    .line 8
    const-string v1, "REGISTER"

    .line 9
    .line 10
    invoke-static {v1}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/16 v12, 0x38c

    .line 15
    .line 16
    const/4 v13, 0x0

    .line 17
    const-string v2, "REGISTER"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x1

    .line 22
    const-string v7, "Y"

    .line 23
    .line 24
    const-string v8, "Y"

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v1, v0

    .line 30
    invoke-direct/range {v1 .. v13}, Lteam/opay/pay/kyc/base/KycConsultReq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/pay/onboarding/register/RegisterViewModel;->g:Lcv7;

    .line 34
    .line 35
    invoke-interface {v1, v0}, Lcv7;->x(Lteam/opay/pay/kyc/base/KycConsultReq;)Lretrofit2/Call;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lwlc;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lwlc;-><init>(Lteam/opay/pay/onboarding/register/RegisterViewModel;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
