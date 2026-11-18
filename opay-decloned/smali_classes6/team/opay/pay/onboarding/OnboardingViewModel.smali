.class public final Lteam/opay/pay/onboarding/OnboardingViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "OnboardingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/OnboardingViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J1\u0010 \u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00132\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00170\u001d\u00a2\u0006\u0004\u0008 \u0010!J!\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\u000f0\u000e2\u0006\u0010\r\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010\'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\'\u0010(J\'\u0010.\u001a\u00020\u00172\u0006\u0010*\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\u0015\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00102\u001a\u00020\u00172\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103J5\u0010:\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002090\u000f0\u000e2\u0006\u00104\u001a\u00020\u00152\u0006\u00106\u001a\u0002052\n\u0008\u0002\u00108\u001a\u0004\u0018\u000107\u00a2\u0006\u0004\u0008:\u0010;Jc\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000f0\u000e2\u0006\u00104\u001a\u00020\u00152\u0006\u0010<\u001a\u00020\u00152\u0006\u0010>\u001a\u00020=2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u00106\u001a\u0004\u0018\u0001052\u0006\u0010@\u001a\u00020\u00152\u0006\u0010A\u001a\u00020\u00152\u0008\u0008\u0002\u0010-\u001a\u00020\u0015\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010D\u001a\u00020\u00172\u0006\u0010<\u001a\u00020\u0015\u00a2\u0006\u0004\u0008D\u0010EJ\u0015\u0010G\u001a\u00020\u00172\u0006\u0010F\u001a\u00020)\u00a2\u0006\u0004\u0008G\u0010HJ\u0015\u0010J\u001a\u00020\u00172\u0006\u0010I\u001a\u00020\u0015\u00a2\u0006\u0004\u0008J\u0010EJ\r\u0010K\u001a\u00020\u0017\u00a2\u0006\u0004\u0008K\u0010LJ\r\u0010M\u001a\u000207\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010Q\u001a\u00020P2\u0008\u0008\u0002\u0010O\u001a\u000207\u00a2\u0006\u0004\u0008Q\u0010RJ\u001d\u0010V\u001a\u00020\u00172\u0006\u0010T\u001a\u00020S2\u0006\u0010U\u001a\u000207\u00a2\u0006\u0004\u0008V\u0010WR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u001a\u0010c\u001a\u0008\u0012\u0004\u0012\u0002000`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u001d\u0010h\u001a\u0008\u0012\u0004\u0012\u00020d0`8\u0006\u00a2\u0006\u000c\n\u0004\u0008e\u0010b\u001a\u0004\u0008f\u0010gR\u001d\u0010m\u001a\u0008\u0012\u0004\u0012\u0002000\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u001d\u0010p\u001a\u0008\u0012\u0004\u0012\u0002070`8\u0006\u00a2\u0006\u000c\n\u0004\u0008n\u0010b\u001a\u0004\u0008o\u0010gR\"\u0010u\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008q\u0010D\u001a\u0004\u0008r\u0010N\"\u0004\u0008s\u0010tR\u001a\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\u00150`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008v\u0010bR\u001d\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008x\u0010j\u001a\u0004\u0008y\u0010lR\"\u0010\u007f\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008z\u0010{\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010ER&\u0010\u0083\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0001\u0010D\u001a\u0005\u0008\u0081\u0001\u0010N\"\u0005\u0008\u0082\u0001\u0010tR%\u0010A\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0001\u0010{\u001a\u0005\u0008\u0085\u0001\u0010}\"\u0005\u0008\u0086\u0001\u0010ER&\u0010\u008a\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0087\u0001\u0010D\u001a\u0005\u0008\u0088\u0001\u0010N\"\u0005\u0008\u0089\u0001\u0010tR&\u0010\u008e\u0001\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010{\u001a\u0005\u0008\u008c\u0001\u0010}\"\u0005\u0008\u008d\u0001\u0010ER.\u0010\u0093\u0001\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u000207\u0012\u0005\u0012\u00030\u0090\u00010\u008f\u00010`8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0091\u0001\u0010b\u001a\u0005\u0008\u0092\u0001\u0010gR-\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u0002070`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0094\u0001\u0010b\u001a\u0005\u0008\u0095\u0001\u0010g\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\"\u0010\u009b\u0001\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150`8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0099\u0001\u0010b\u001a\u0005\u0008\u009a\u0001\u0010gR#\u0010\u009f\u0001\u001a\u000b\u0012\u0007\u0012\u0005\u0018\u00010\u009c\u00010`8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u009d\u0001\u0010b\u001a\u0005\u0008\u009e\u0001\u0010gR\u001a\u0010\u00a1\u0001\u001a\u00030\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u0081\u0001R\u001c\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lteam/opay/pay/onboarding/OnboardingViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/core/auth/AuthRepository;",
        "repository",
        "Lteam/opay/pay/onboarding/AccountStepRepository;",
        "accountStepRepository",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/onboarding/AccountStepRepository;Landroid/app/Application;)V",
        "Lteam/opay/core/api/graphql/RegisterRequest;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/RegisterV3Response;",
        "y",
        "(Lteam/opay/core/api/graphql/RegisterRequest;)Landroidx/lifecycle/LiveData;",
        "Lag8;",
        "viewLifecycleOwner",
        "",
        "source",
        "",
        "F",
        "(Lag8;Ljava/lang/String;)V",
        "Lteam/opay/pay/api/InterestsCheckBody;",
        "body",
        "owner",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/api/InterestsCheckResult;",
        "callback",
        "R",
        "(Lteam/opay/pay/api/InterestsCheckBody;Lag8;Lkotlin/jvm/functions/Function1;)V",
        "Lteam/opay/core/api/graphql/LoginRequest;",
        "Lteam/opay/core/api/graphql/LoginResponse;",
        "e0",
        "(Lteam/opay/core/api/graphql/LoginRequest;)Landroidx/lifecycle/LiveData;",
        "lifecycleOwner",
        "z",
        "(Lag8;)V",
        "Landroid/content/Context;",
        "context",
        "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
        "data",
        "channel",
        "T",
        "(Landroid/content/Context;Lteam/opay/pay/pin/VerifyRegisterOtpResult;Ljava/lang/String;)V",
        "Lteam/opay/pay/onboarding/OnboardingScreen;",
        "onboardingScreen",
        "d0",
        "(Lteam/opay/pay/onboarding/OnboardingScreen;)V",
        "phoneNumber",
        "Lteam/opay/pay/account/otp/OtpChannel;",
        "otpChannel",
        "",
        "secondaryRelease",
        "Lteam/opay/core/api/GraphQL$AuthState;",
        "W",
        "(Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/Boolean;)Landroidx/lifecycle/LiveData;",
        "otp",
        "Lteam/opay/core/api/Country;",
        "country",
        "serviceCode",
        "scene",
        "inviteCode",
        "f0",
        "(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Z",
        "(Ljava/lang/String;)V",
        "ctx",
        "U",
        "(Landroid/content/Context;)V",
        "code",
        "B",
        "V",
        "()V",
        "x",
        "()Z",
        "fillPhone",
        "Lteam/opay/core/base/BaseFragment;",
        "P",
        "(Z)Lteam/opay/core/base/BaseFragment;",
        "Landroid/view/View;",
        "root",
        "loginPage",
        "b0",
        "(Landroid/view/View;Z)V",
        "b",
        "Lteam/opay/core/account/AccountRepository;",
        "c",
        "Lteam/opay/core/auth/AuthRepository;",
        "d",
        "Lteam/opay/pay/onboarding/AccountStepRepository;",
        "e",
        "Landroid/app/Application;",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "_currentScreen",
        "Lteam/opay/pay/onboarding/GuideResponse;",
        "g",
        "K",
        "()Landroidx/lifecycle/MutableLiveData;",
        "guideSuccessEvent",
        "h",
        "Landroidx/lifecycle/LiveData;",
        "H",
        "()Landroidx/lifecycle/LiveData;",
        "currentScreen",
        "i",
        "M",
        "loadingEvent",
        "j",
        "getReturningUserTransition",
        "setReturningUserTransition",
        "(Z)V",
        "returningUserTransition",
        "k",
        "_otp",
        "l",
        "getOtp",
        "m",
        "Ljava/lang/String;",
        "getRefreshToken",
        "()Ljava/lang/String;",
        "setRefreshToken",
        "refreshToken",
        "n",
        "I",
        "setEnableVoiceCalling",
        "enableVoiceCalling",
        "o",
        "L",
        "Y",
        "p",
        "J",
        "X",
        "enableWhatsApp",
        "q",
        "O",
        "a0",
        "resumePage",
        "Lkotlin/Pair;",
        "",
        "r",
        "N",
        "onKeyBoardChangeEvent",
        "s",
        "getRequestProcess",
        "setRequestProcess",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "requestProcess",
        "t",
        "E",
        "clipboardPhoneEvent",
        "Lteam/opay/odialog/net/ADListResponse;",
        "u",
        "D",
        "adResult",
        "v",
        "showNoNetDialogCount",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "w",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "noNetSnackBar",
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
.field public final b:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/auth/AuthRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/onboarding/AccountStepRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/OnboardingScreen;",
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
            "Lteam/opay/pay/onboarding/GuideResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/onboarding/OnboardingScreen;",
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Z

.field public final k:Landroidx/lifecycle/MutableLiveData;
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

.field public final l:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroidx/lifecycle/MutableLiveData;
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

.field public final t:Landroidx/lifecycle/MutableLiveData;
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

.field public final u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:I

.field public w:Lcom/google/android/material/snackbar/Snackbar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/onboarding/AccountStepRepository;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/auth/AuthRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/onboarding/AccountStepRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "accountStepRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "appLi"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p4}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->b:Lteam/opay/core/account/AccountRepository;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->d:Lteam/opay/pay/onboarding/AccountStepRepository;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->e:Landroid/app/Application;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    const-string p1, ""

    .line 65
    .line 66
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->m:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->o:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->q:Ljava/lang/String;

    .line 71
    .line 72
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    .line 85
    .line 86
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 92
    .line 93
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    return-void
.end method

.method public static final A(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/onboarding/OnboardingViewModel$a;->a:[I

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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lteam/opay/pay/onboarding/GuideResponse;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/onboarding/OnboardingViewModel$a;->a:[I

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
    iget-object p0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/onboarding/OnboardingViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v1, Lteam/opay/pay/onboarding/OnboardingViewModel$a;->a:[I

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
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/util/Map;

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    const-string v0, "newVoiceOtpSwitch"

    .line 37
    .line 38
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "on"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->n:Z

    .line 53
    .line 54
    const-string v0, "REGISTER"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string/jumbo p1, "whatsAppInRegister"

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->p:Z

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "CHANGE_MOBILE"

    .line 81
    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const-string/jumbo p1, "whatsAppShowSwitch"

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->p:Z

    .line 104
    .line 105
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/onboarding/OnboardingViewModel;ZILjava/lang/Object;)Lteam/opay/core/base/BaseFragment;
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->P(Z)Lteam/opay/core/base/BaseFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final S(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lteam/opay/pay/api/InterestsCheckResult;

    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/pay/api/InterestsCheckResult;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final c0(ZLandroid/view/View;Lteam/opay/pay/onboarding/OnboardingViewModel;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p3, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "login"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "sign_up"

    .line 9
    .line 10
    :goto_0
    const-string v0, "service_type"

    .line 11
    .line 12
    invoke-static {v0, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Lkotlin/Pair;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object p0, v0, v1

    .line 21
    .line 22
    const-string p0, "network_errorbotton_click"

    .line 23
    .line 24
    invoke-virtual {p3, p0, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p3, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-class v0, Lteam/opay/pay/pin/NoNetWorkActivity;

    .line 38
    .line 39
    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p2, Lteam/opay/pay/onboarding/OnboardingViewModel;->w:Lcom/google/android/material/snackbar/Snackbar;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public static synthetic g0(Lteam/opay/pay/onboarding/OnboardingViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v7, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v8, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v8, p5

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v0, v0, 0x80

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v0, "otp"

    .line 25
    .line 26
    move-object v11, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v11, p8

    .line 29
    .line 30
    :goto_2
    move-object v3, p0

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-object/from16 v9, p6

    .line 35
    .line 36
    move-object/from16 v10, p7

    .line 37
    .line 38
    invoke-virtual/range {v3 .. v11}, Lteam/opay/pay/onboarding/OnboardingViewModel;->f0(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/OnboardingViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/onboarding/OnboardingViewModel;->G(Lteam/opay/pay/onboarding/OnboardingViewModel;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->A(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->S(Lkotlin/jvm/functions/Function1;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(ZLandroid/view/View;Lteam/opay/pay/onboarding/OnboardingViewModel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/onboarding/OnboardingViewModel;->c0(ZLandroid/view/View;Lteam/opay/pay/onboarding/OnboardingViewModel;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->C(Lteam/opay/pay/onboarding/OnboardingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/onboarding/OnboardingViewModel;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->w:Lcom/google/android/material/snackbar/Snackbar;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 7
    .line 8
    invoke-direct {v0, p1, p1}, Lteam/opay/pay/cashio/AdDataReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Lteam/opay/pay/cashio/AdDataReq;

    .line 20
    .line 21
    const/4 v5, 0x6

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v1, p1

    .line 26
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/cashio/AdDataReq;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "200"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 45
    .line 46
    iget-object v2, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->e:Landroid/app/Application;

    .line 47
    .line 48
    const-class v3, Ltd8;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ltd8;

    .line 55
    .line 56
    invoke-interface {v1, p1}, Ltd8;->l(Lteam/opay/pay/cashio/AdDataReq;)Lretrofit2/Call;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lxma;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lxma;-><init>(Lteam/opay/pay/onboarding/OnboardingViewModel;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lqna;->b(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/odialog/net/ADListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->u:Landroidx/lifecycle/MutableLiveData;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F(Lag8;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewLifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lteam/opay/core/auth/AuthRepository;->c(Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lvma;

    .line 18
    .line 19
    invoke-direct {v1, p0, p2}, Lvma;-><init>(Lteam/opay/pay/onboarding/OnboardingViewModel;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final H()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/onboarding/OnboardingScreen;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final K()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/onboarding/GuideResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->o:Ljava/lang/String;

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
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P(Z)Lteam/opay/core/base/BaseFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/tabs/SignUpFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/tabs/SignUpFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/SignUpFragment;->M0(Z)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final R(Lteam/opay/pay/api/InterestsCheckBody;Lag8;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1    # Lteam/opay/pay/api/InterestsCheckBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/InterestsCheckBody;",
            "Lag8;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/api/InterestsCheckResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "owner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->e:Landroid/app/Application;

    .line 28
    .line 29
    const-class v3, Lfv;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lfv;

    .line 36
    .line 37
    invoke-interface {v1, p1}, Lfv;->g(Lteam/opay/pay/api/InterestsCheckBody;)Lretrofit2/Call;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lzma;

    .line 50
    .line 51
    invoke-direct {v0, p3}, Lzma;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final T(Landroid/content/Context;Lteam/opay/pay/pin/VerifyRegisterOtpResult;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/pin/VerifyRegisterOtpResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "channel"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v6, v4

    .line 26
    :goto_0
    const-string v7, ""

    .line 27
    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    move-object v6, v7

    .line 31
    :cond_1
    invoke-virtual {v3, v6}, Lteam/opay/core/account/AccountInfoManager;->S(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v3, v4

    .line 46
    :goto_1
    if-nez v3, :cond_3

    .line 47
    .line 48
    move-object v3, v7

    .line 49
    :cond_3
    invoke-virtual {v1, v3}, Lteam/opay/core/account/AccountInfoManager;->R(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v1, v4

    .line 60
    :goto_2
    const-string v3, "Y"

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    const-string v1, "set_password_before"

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    const-string v1, "set_password_after"

    .line 72
    .line 73
    :goto_3
    sget-object v6, Lx7b;->a:Lx7b;

    .line 74
    .line 75
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x1

    .line 80
    new-array v1, v1, [Lkotlin/Pair;

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    aput-object v0, v1, v8

    .line 84
    .line 85
    const-string v0, "register_pre_check_kyc_channel"

    .line 86
    .line 87
    invoke-virtual {v6, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 88
    .line 89
    .line 90
    if-eqz p2, :cond_6

    .line 91
    .line 92
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->a()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object v0, v4

    .line 98
    :goto_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    sget-object v1, Lteam/opay/pay/onboarding/register/SetPasswordActivity;->h:Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;

    .line 105
    .line 106
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->b()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    move-object v3, v7

    .line 113
    goto :goto_5

    .line 114
    :cond_7
    move-object v3, v0

    .line 115
    :goto_5
    const/16 v7, 0x10

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v0, 0x1

    .line 119
    const/4 v6, 0x0

    .line 120
    move-object v2, p1

    .line 121
    move-object v4, p3

    .line 122
    move v5, v0

    .line 123
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;->b(Lteam/opay/pay/onboarding/register/SetPasswordActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_8
    sget-object v1, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity;->j:Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    invoke-virtual {p2}, Lteam/opay/pay/pin/VerifyRegisterOtpResult;->b()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :cond_9
    if-nez v4, :cond_a

    .line 136
    .line 137
    move-object v4, v7

    .line 138
    :cond_a
    const/16 v7, 0x10

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const-string v3, "REGISTER"

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    move-object v2, p1

    .line 145
    move-object v5, p3

    .line 146
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;->b(Lteam/opay/pay/kyc/upgrade1/KycUpgrade1Activity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_6
    return-void
.end method

.method public final U(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ctx"

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
    new-instance v4, Lteam/opay/pay/onboarding/OnboardingViewModel$readClipboardPhone$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/pay/onboarding/OnboardingViewModel$readClipboardPhone$1;-><init>(Lteam/opay/pay/onboarding/OnboardingViewModel;Landroid/content/Context;Ljr2;)V

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

.method public final V()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->v:I

    .line 3
    .line 4
    return-void
.end method

.method public final W(Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/Boolean;)Landroidx/lifecycle/LiveData;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/otp/OtpChannel;",
            "Ljava/lang/Boolean;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/GraphQL$AuthState;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "phoneNumber"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "otpChannel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 12
    .line 13
    const-string v3, "REGISTER"

    .line 14
    .line 15
    const-string v4, "CREATE_ACCOUNT"

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    move-object v5, p2

    .line 19
    move-object v6, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lteam/opay/core/auth/AuthRepository;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/Boolean;)Landroidx/lifecycle/LiveData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final X(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final a0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->q:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final b0(Landroid/view/View;Z)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->w:Lcom/google/android/material/snackbar/Snackbar;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string v2, "login"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v2, "sign_up"

    .line 26
    .line 27
    :goto_0
    const-string v3, "service_type"

    .line 28
    .line 29
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-array v3, v1, [Lkotlin/Pair;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    aput-object v2, v3, v4

    .line 37
    .line 38
    const-string v2, "network_errorbotton_show"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lteam/opay/pay/onboarding/tabs/CenteredImageSpan;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "getContext(...)"

    .line 55
    .line 56
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget v4, Lteam/opay/pay/R$mipmap;->osdk_ic_snack_bar_no_net:I

    .line 60
    .line 61
    const/high16 v5, 0x40000000    # 2.0f

    .line 62
    .line 63
    invoke-static {v5}, Ljmf;->c(F)F

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    float-to-int v5, v5

    .line 68
    neg-int v5, v5

    .line 69
    invoke-direct {v2, v3, v4, v5}, Lteam/opay/pay/onboarding/tabs/CenteredImageSpan;-><init>(Landroid/content/Context;II)V

    .line 70
    .line 71
    .line 72
    const-string v3, " "

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    sub-int/2addr v4, v1

    .line 82
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/16 v5, 0x21

    .line 87
    .line 88
    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget v2, Lteam/opay/pay/R$string;->osdk_no_network_snack_bar:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x1388

    .line 120
    .line 121
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->w:Lcom/google/android/material/snackbar/Snackbar;

    .line 126
    .line 127
    if-eqz v0, :cond_2

    .line 128
    .line 129
    new-instance v1, Lteam/opay/pay/onboarding/OnboardingViewModel$b;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lteam/opay/pay/onboarding/OnboardingViewModel$b;-><init>(Lteam/opay/pay/onboarding/OnboardingViewModel;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    .line 139
    .line 140
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->w:Lcom/google/android/material/snackbar/Snackbar;

    .line 141
    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    sget-object v1, Lhh2;->a:Lhh2;

    .line 145
    .line 146
    sget v2, Lteam/opay/pay/R$color;->osdk_color_no_net_snack_bar_bg:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lhh2;->a(I)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_3

    .line 157
    .line 158
    sget v2, Lteam/opay/pay/R$color;->osdk_always_white:I

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lhh2;->a(I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_3

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Lhh2;->a(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-eqz v0, :cond_3

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    sget v2, Lteam/opay/pay/R$string;->osdk_rectify_now:I

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    new-instance v2, Lyma;

    .line 191
    .line 192
    invoke-direct {v2, p2, p1, p0}, Lyma;-><init>(ZLandroid/view/View;Lteam/opay/pay/onboarding/OnboardingViewModel;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 202
    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method public final d0(Lteam/opay/pay/onboarding/OnboardingScreen;)V
    .locals 2
    .param p1    # Lteam/opay/pay/onboarding/OnboardingScreen;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onboardingScreen"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lteam/opay/pay/onboarding/OnboardingScreen;->LOGIN_WITH_PASSWORD:Lteam/opay/pay/onboarding/OnboardingScreen;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/onboarding/OnboardingScreen;->CREATE_PIN:Lteam/opay/pay/onboarding/OnboardingScreen;

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lteam/opay/pay/onboarding/OnboardingScreen;->VERIFY_OTP:Lteam/opay/pay/onboarding/OnboardingScreen;

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    sget-object v0, Lteam/opay/pay/onboarding/OnboardingScreen;->CREATE_PIN:Lteam/opay/pay/onboarding/OnboardingScreen;

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->j:Z

    .line 38
    .line 39
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final e0(Lteam/opay/core/api/graphql/LoginRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/api/graphql/LoginRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/LoginRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/LoginResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/auth/AuthRepository;->f(Lteam/opay/core/api/graphql/LoginRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/account/otp/OtpChannel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/Country;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/otp/OtpChannel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/pin/VerifyRegisterOtpResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "phoneNumber"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "otp"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "country"

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "scene"

    .line 20
    .line 21
    move-object/from16 v7, p6

    .line 22
    .line 23
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "inviteCode"

    .line 27
    .line 28
    move-object/from16 v8, p7

    .line 29
    .line 30
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "channel"

    .line 34
    .line 35
    move-object/from16 v9, p8

    .line 36
    .line 37
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v0, p0

    .line 41
    iget-object v1, v0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 42
    .line 43
    move-object v5, p4

    .line 44
    move-object v6, p5

    .line 45
    invoke-virtual/range {v1 .. v9}, Lteam/opay/core/auth/AuthRepository;->h(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    return-object v1
.end method

.method public final x()Z
    .locals 3

    .line 1
    iget v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-eqz v2, :cond_1

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->v:I

    .line 13
    .line 14
    :cond_1
    return v2
.end method

.method public final y(Lteam/opay/core/api/graphql/RegisterRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/api/graphql/RegisterRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/RegisterRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/RegisterV3Response;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->c:Lteam/opay/core/auth/AuthRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/auth/AuthRepository;->b(Lteam/opay/core/api/graphql/RegisterRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final z(Lag8;)V
    .locals 4
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
    iget-object v0, p0, Lteam/opay/pay/onboarding/OnboardingViewModel;->d:Lteam/opay/pay/onboarding/AccountStepRepository;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/pay/onboarding/GuideRequest;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x3

    .line 12
    invoke-direct {v1, v2, v2, v3, v2}, Lteam/opay/pay/onboarding/GuideRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/AccountStepRepository;->f(Lteam/opay/pay/onboarding/GuideRequest;)Landroidx/lifecycle/LiveData;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lwma;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lwma;-><init>(Lteam/opay/pay/onboarding/OnboardingViewModel;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
