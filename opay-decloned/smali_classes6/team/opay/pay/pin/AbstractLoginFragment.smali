.class public abstract Lteam/opay/pay/pin/AbstractLoginFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "AbstractLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/pin/AbstractLoginFragment$Companion;,
        Lteam/opay/pay/pin/AbstractLoginFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Lxyf;",
        ">",
        "Lteam/opay/core/base/BaseFragmentV2<",
        "TVB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008&\u0018\u0000 \u00a4\u0001*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0002\u00a5\u0001B)\u0012 \u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0013\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u000b2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u001d\u0010\u0015\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J+\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\rJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\rJ\u0017\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\'\u0010$\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00172\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0019\u0010\'\u001a\u00020\u000b2\u0008\u0008\u0002\u0010&\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010-\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u00172\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000b0+H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008/\u0010\rJ\u0017\u00100\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00080\u00101J\u0017\u00103\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u00083\u0010(J\u000f\u00104\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u00084\u0010\rJ\u0019\u00107\u001a\u00020\u000b2\u0008\u00106\u001a\u0004\u0018\u000105H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00089\u0010\rJ\u000f\u0010:\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008:\u0010\rJ\u000f\u0010;\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008=\u0010<J\u000f\u0010>\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008>\u0010\rJ!\u0010A\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020?2\u0008\u00106\u001a\u0004\u0018\u000105H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ#\u0010D\u001a\u00020\u000b2\u0008\u0008\u0002\u0010C\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H&\u00a2\u0006\u0004\u0008D\u0010EJ\u0017\u0010F\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010H\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008H\u0010\rJ\u000f\u0010I\u001a\u00020\u0017H&\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008K\u0010\rJ\u000f\u0010L\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008L\u0010\rJ\u000f\u0010M\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008M\u0010\rJ3\u0010R\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020\u00172\u0008\u0008\u0002\u0010O\u001a\u00020\u00172\u0008\u0008\u0002\u0010P\u001a\u00020\u00172\u0008\u0008\u0002\u0010Q\u001a\u00020\u0017\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020TH\u0007\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020XH\u0007\u00a2\u0006\u0004\u0008V\u0010YJ\u0017\u0010V\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008V\u0010[J\'\u0010_\u001a\u00020\u000b2\u0018\u0010^\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020]0\u000e\u0012\u0004\u0012\u00020\u000b0\\\u00a2\u0006\u0004\u0008_\u0010`J\u001f\u0010b\u001a\u00020\u000b2\u0010\u0008\u0002\u0010a\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010+\u00a2\u0006\u0004\u0008b\u0010cJ\r\u0010d\u001a\u00020\u000b\u00a2\u0006\u0004\u0008d\u0010\rJ)\u0010i\u001a\u00020\u000b2\u0006\u0010f\u001a\u00020e2\u0006\u0010g\u001a\u00020e2\u0008\u0010 \u001a\u0004\u0018\u00010hH\u0016\u00a2\u0006\u0004\u0008i\u0010jR.\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u001b\u0010r\u001a\u00020m8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010o\u001a\u0004\u0008p\u0010qR\u001b\u0010w\u001a\u00020s8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010o\u001a\u0004\u0008u\u0010vR\u001b\u0010|\u001a\u00020x8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010o\u001a\u0004\u0008z\u0010{R\u001d\u0010\u0081\u0001\u001a\u00020}8@X\u0080\u0084\u0002\u00a2\u0006\r\n\u0004\u0008~\u0010o\u001a\u0005\u0008\u007f\u0010\u0080\u0001R \u0010\u0086\u0001\u001a\u00030\u0082\u00018@X\u0080\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0083\u0001\u0010o\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001e\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u0087\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u0019\u0010\u0090\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0019\u0010\u0093\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\'\u0010\u0095\u0001\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0006\u0008\u0094\u0001\u0010\u0092\u0001\u001a\u0005\u0008\u0095\u0001\u0010<\"\u0005\u0008\u0096\u0001\u0010GR\u001e\u0010\u0099\u0001\u001a\u00020\u00178\u0016X\u0096D\u00a2\u0006\u000f\n\u0006\u0008\u0097\u0001\u0010\u008f\u0001\u001a\u0005\u0008\u0098\u0001\u0010JR*\u0010\u00a1\u0001\u001a\u00030\u009a\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001\"\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0019\u0010\u00a3\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u0092\u0001\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lteam/opay/pay/pin/AbstractLoginFragment;",
        "Lxyf;",
        "VB",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/ViewGroup;",
        "",
        "inflate",
        "<init>",
        "(Lhm6;)V",
        "",
        "V0",
        "()V",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/LoginResponse;",
        "it",
        "L0",
        "(Lteam/opay/core/android/arch/Resource;)V",
        "N0",
        "f1",
        "o1",
        "response",
        "",
        "message",
        "isFinger",
        "d1",
        "(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Z)V",
        "D0",
        "S0",
        "R0",
        "(Lteam/opay/core/api/graphql/LoginResponse;)V",
        "data",
        "phoneNumber",
        "Landroidx/fragment/app/FragmentActivity;",
        "host",
        "n0",
        "(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V",
        "clientId",
        "i1",
        "(Ljava/lang/String;)V",
        "login",
        "tips",
        "Lkotlin/Function0;",
        "confirmBlock",
        "n1",
        "(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "X0",
        "o0",
        "(Lteam/opay/core/api/graphql/LoginResponse;)Z",
        "url",
        "Q0",
        "P0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "onDestroy",
        "onBackPressed",
        "()Z",
        "G0",
        "J0",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "show",
        "p0",
        "(ZLjava/lang/String;)V",
        "c1",
        "(Z)V",
        "hideKeyboard",
        "z0",
        "()Ljava/lang/String;",
        "K0",
        "r0",
        "addObserver",
        "password",
        "securityId",
        "valChainId",
        "refreshToken",
        "q1",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/pay/home/security/remember/LockTipCloseEvent;",
        "event",
        "onEvent",
        "(Lteam/opay/pay/home/security/remember/LockTipCloseEvent;)V",
        "Lteam/opay/pay/android/web/CompliantResultEvent;",
        "(Lteam/opay/pay/android/web/CompliantResultEvent;)V",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "Lkotlin/Function1;",
        "Lteam/opay/core/api/graphql/RegisterV3Response;",
        "loginCallback",
        "A0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "showPassword",
        "Z0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "m1",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "j",
        "Lhm6;",
        "Lteam/opay/pay/biometric/BiometricPromptManager;",
        "k",
        "Lid8;",
        "t0",
        "()Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricPromptManager",
        "Lteam/opay/pay/onboarding/OnboardingViewModel;",
        "l",
        "w0",
        "()Lteam/opay/pay/onboarding/OnboardingViewModel;",
        "onboardingViewModel",
        "Lteam/opay/core/settings/SettingsStorage;",
        "m",
        "x0",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/core/settings/NoClearStorage;",
        "n",
        "v0",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "Lteam/opay/pay/pin/LoginPhoneStorage;",
        "o",
        "u0",
        "()Lteam/opay/pay/pin/LoginPhoneStorage;",
        "loginStorage",
        "Landroidx/lifecycle/MutableLiveData;",
        "p",
        "Landroidx/lifecycle/MutableLiveData;",
        "showDeviceChangeEvent",
        "q",
        "Lteam/opay/core/api/graphql/LoginResponse;",
        "successResponse",
        "r",
        "Ljava/lang/String;",
        "loginPassword",
        "s",
        "Z",
        "checkFingerGuide",
        "t",
        "isBiometricLogin",
        "T0",
        "u",
        "y0",
        "source",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "v",
        "Lteam/opay/pay/biometric/BiometricIntroduction;",
        "s0",
        "()Lteam/opay/pay/biometric/BiometricIntroduction;",
        "setBiometricIntroduction",
        "(Lteam/opay/pay/biometric/BiometricIntroduction;)V",
        "biometricIntroduction",
        "w",
        "complianceSuccess",
        "x",
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
.field public static final x:Lteam/opay/pay/pin/AbstractLoginFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lhm6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhm6<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TVB;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
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

.field public q:Lteam/opay/core/api/graphql/LoginResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Z

.field public t:Z

.field public final u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lteam/opay/pay/biometric/BiometricIntroduction;

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/pin/AbstractLoginFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/pin/AbstractLoginFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/pin/AbstractLoginFragment;->x:Lteam/opay/pay/pin/AbstractLoginFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lhm6;)V
    .locals 3
    .param p1    # Lhm6;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhm6<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TVB;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inflate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->j:Lhm6;

    .line 10
    .line 11
    new-instance p1, Ls3;

    .line 12
    .line 13
    invoke-direct {p1}, Ls3;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->k:Lid8;

    .line 21
    .line 22
    const-class p1, Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$2;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v2, p0}, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$3;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lteam/opay/pay/pin/AbstractLoginFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->l:Lid8;

    .line 49
    .line 50
    new-instance p1, Lt3;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lt3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->m:Lid8;

    .line 60
    .line 61
    new-instance p1, Lu3;

    .line 62
    .line 63
    invoke-direct {p1, p0}, Lu3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->n:Lid8;

    .line 71
    .line 72
    new-instance p1, Lv3;

    .line 73
    .line 74
    invoke-direct {p1}, Lv3;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->o:Lid8;

    .line 82
    .line 83
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    const-string p1, ""

    .line 91
    .line 92
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->r:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->s:Z

    .line 96
    .line 97
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->u:Ljava/lang/String;

    .line 98
    .line 99
    return-void
.end method

.method public static final B0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/pay/pin/AbstractLoginFragment$a;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_1
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    if-eq v0, p1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 40
    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RegisterV3Response;->isRegister()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lteam/opay/core/api/graphql/RegisterV3Response;

    .line 54
    .line 55
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RegisterV3Response;->getClientId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    :cond_4
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/AbstractLoginFragment;->i1(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/RegisterV3Response;->isSetPassword()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->X0()V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_6
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method public static final C0()Lteam/opay/pay/pin/LoginPhoneStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final E0(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lum8;->g(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final H0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static final I0()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "onActivityResult"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final M0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "login_submit_failed_cs_click"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "login_failed_by_risk"

    .line 16
    .line 17
    new-array v1, v1, [Lkotlin/Pair;

    .line 18
    .line 19
    invoke-static {p0, v0, v1}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->M0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final O0(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lteam/opay/core/api/graphql/LoginResponse;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/pin/AbstractLoginFragment;->n0(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static synthetic P()Lteam/opay/pay/pin/LoginPhoneStorage;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/pin/AbstractLoginFragment;->C0()Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->p1(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->h1(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->l1(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/pin/AbstractLoginFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->l0(Lteam/opay/pay/pin/AbstractLoginFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->k1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final U0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic V(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->F0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->E0(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final W0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricPromptManager;->s(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->K0()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic X()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/pin/AbstractLoginFragment;->m0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Y(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->Y0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Y0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->L:Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;->b(Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;ZILjava/lang/Object;)Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lteam/opay/core/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "otp"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->n1(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget v2, Lteam/opay/pay/R$id;->onboarding_screen:I

    .line 23
    .line 24
    invoke-static {v1, v2, v0, p0}, Lli2;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method public static synthetic Z(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/pin/AbstractLoginFragment;->B0(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->b1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final a1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 11

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p3, p1, v0}, Lteam/opay/core/settings/NoClearStorage;->b1(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    sget p1, Lteam/opay/pay/R$string;->osdk_finger_unavailable_title:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string p1, "getString(...)"

    .line 18
    .line 19
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget p3, Lteam/opay/pay/R$string;->osdk_finger_unavailable_desc:I

    .line 23
    .line 24
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget p3, Lteam/opay/pay/R$string;->osdk_password_verification:I

    .line 32
    .line 33
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 41
    .line 42
    const/16 v9, 0xf1

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v0, p1

    .line 51
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    sget-object p3, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 55
    .line 56
    invoke-virtual {p3, p1}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance p3, Lp3;

    .line 61
    .line 62
    invoke-direct {p3, p2}, Lp3;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    new-instance v0, Lteam/opay/pay/pin/AbstractLoginFragment$c;

    .line 81
    .line 82
    invoke-direct {v0, p1, p0}, Lteam/opay/pay/pin/AbstractLoginFragment$c;-><init>(Ljava/lang/String;Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x2

    .line 86
    invoke-virtual {p2, p1, p3, p0, v0}, Lteam/opay/pay/biometric/BiometricPromptManager;->d(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;ILi77;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method public static synthetic b0(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/pin/AbstractLoginFragment;->a1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b1(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->g1(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/pin/AbstractLoginFragment;->O0(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->W0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e1(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/pin/AbstractLoginFragment;->d1(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: showLoginResult"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static synthetic f0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/pin/AbstractLoginFragment;->I0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->U0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final g1(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->r0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic h0(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->s1(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h1(Lteam/opay/pay/pin/AbstractLoginFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/pay/pin/AbstractLoginFragment$showPinErrorTip$1$2$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lteam/opay/pay/pin/AbstractLoginFragment$showPinErrorTip$1$2$1;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic i0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->H0(Lteam/opay/pay/pin/AbstractLoginFragment;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j0(Lteam/opay/pay/pin/AbstractLoginFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->i1(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: showSignUpDialog"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final synthetic k0(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final k1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->L:Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v3, v1, v2}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;->b(Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment$Companion;ZILjava/lang/Object;)Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lteam/opay/core/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/SignUpOtpFragment;->n1(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget v1, Lteam/opay/pay/R$id;->onboarding_screen:I

    .line 26
    .line 27
    invoke-static {p1, v1, v0, p0}, Lli2;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final l0(Lteam/opay/pay/pin/AbstractLoginFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->V0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final l1(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->G0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->m1()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v3, Lteam/opay/pay/pin/AbstractLoginFragment$showSignUpDialog$2$1$1;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment$showSignUpDialog$2$1$1;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;Ljr2;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 39
    .line 40
    .line 41
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private static final m0()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/biometric/BiometricPromptManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final p1(Lteam/opay/pay/pin/AbstractLoginFragment;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->r0()V

    .line 2
    .line 3
    .line 4
    sget-object p1, Luqe;->a:Luqe;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "status"

    .line 11
    .line 12
    const-string v1, "login"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Lkotlin/Pair;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    const-string v0, "Password_weakPassword_click"

    .line 25
    .line 26
    invoke-virtual {p1, p0, v0, v1}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static synthetic q0(Lteam/opay/pay/pin/AbstractLoginFragment;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    const-string p2, ""

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/pin/AbstractLoginFragment;->p0(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: decorateError"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static synthetic r1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p6, :cond_3

    .line 2
    .line 3
    and-int/lit8 p6, p5, 0x2

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    if-eqz p6, :cond_0

    .line 8
    .line 9
    move-object p2, v0

    .line 10
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 11
    .line 12
    if-eqz p6, :cond_1

    .line 13
    .line 14
    move-object p3, v0

    .line 15
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 16
    .line 17
    if-eqz p5, :cond_2

    .line 18
    .line 19
    move-object p4, v0

    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/pin/AbstractLoginFragment;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: startLogin"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public static final s1(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/pay/pin/AbstractLoginFragment;->c1(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lteam/opay/pay/pin/AbstractLoginFragment$a;->a:[I

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    aget v0, v1, v0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->L0(Lteam/opay/core/android/arch/Resource;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->N0(Lteam/opay/core/android/arch/Resource;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public final A0(Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/RegisterV3Response;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "loginCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->u0()Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/LoginPhoneStorage;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v1, ""

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v3, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v3, v1

    .line 52
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    :goto_1
    move-object v5, v1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_1

    .line 69
    :goto_2
    new-instance v0, Lteam/opay/core/api/graphql/RegisterRequest;

    .line 70
    .line 71
    const/16 v7, 0x8

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    const-string v4, "LOGIN"

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    move-object v2, v0

    .line 78
    invoke-direct/range {v2 .. v8}, Lteam/opay/core/api/graphql/RegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lteam/opay/pay/onboarding/OnboardingViewModel;->y(Lteam/opay/core/api/graphql/RegisterRequest;)Landroidx/lifecycle/LiveData;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "getViewLifecycleOwner(...)"

    .line 94
    .line 95
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Ll3;

    .line 99
    .line 100
    invoke-direct {v2, p1, p0}, Ll3;-><init>(Lkotlin/jvm/functions/Function1;Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final D0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Luqe;->a:Luqe;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "phone"

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v4}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "is_phone"

    .line 32
    .line 33
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x2

    .line 38
    new-array v5, v5, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    aput-object v3, v5, v6

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v4, v5, v3

    .line 45
    .line 46
    const-string v3, "login_success"

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3, v5}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    new-instance v1, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 62
    .line 63
    invoke-direct {v1}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lteam/opay/pay/pin/LoginPhoneStorage;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    sget-object v1, Lzl8;->a:Lzl8;

    .line 72
    .line 73
    invoke-virtual {v1}, Lzl8;->c()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 77
    .line 78
    const-class v2, Lteam/opay/swarmfoundation/login/ILoginListener;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lteam/opay/swarmfoundation/login/ILoginListener;

    .line 95
    .line 96
    invoke-interface {v2}, Lteam/opay/swarmfoundation/login/ILoginListener;->onSuccess()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 105
    .line 106
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Lteam/opay/core/settings/NoClearStorage;->w(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Lteam/opay/pay/biometric/BiometricPromptManager;->s(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v1, v3}, Lteam/opay/pay/biometric/BiometricPromptManager;->c(Landroidx/fragment/app/FragmentActivity;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->x()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v1, v2, v6}, Lteam/opay/core/settings/NoClearStorage;->b1(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    :cond_2
    iget-boolean v1, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->s:Z

    .line 162
    .line 163
    if-eqz v1, :cond_3

    .line 164
    .line 165
    new-instance v7, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 166
    .line 167
    invoke-direct {v7}, Lteam/opay/pay/biometric/BiometricPromptManager;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->s0()Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    new-instance v12, Lo3;

    .line 179
    .line 180
    invoke-direct {v12, v0}, Lo3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 181
    .line 182
    .line 183
    new-instance v13, Lq3;

    .line 184
    .line 185
    invoke-direct {v13, v0}, Lq3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 186
    .line 187
    .line 188
    const/16 v15, 0x48

    .line 189
    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    const-string v9, "login"

    .line 193
    .line 194
    const/4 v11, 0x0

    .line 195
    const/4 v14, 0x0

    .line 196
    invoke-static/range {v7 .. v16}, Lteam/opay/pay/biometric/BiometricPromptManager;->j(Lteam/opay/pay/biometric/BiometricPromptManager;Lteam/opay/pay/biometric/BiometricIntroduction;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;IILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_3

    .line 201
    .line 202
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v1}, Lum8;->g(Landroid/app/Activity;)V

    .line 211
    .line 212
    .line 213
    :goto_1
    sget-object v1, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate;->Companion:Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;

    .line 214
    .line 215
    invoke-virtual {v1, v6}, Lteam/opay/pay/onboarding/delegate/MainLockInterceptorDelegate$Companion;->c(Z)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public abstract G0()Z
.end method

.method public abstract J0()V
.end method

.method public abstract K0()V
.end method

.method public final L0(Lteam/opay/core/android/arch/Resource;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, -0x3ec

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    sget-object v1, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a:Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lteam/opay/swarmfoundation/device/CommonNetWorkUtils;->a(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->x()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    sget-object v1, Lteam/opay/pay/pin/NoNetworkDialog;->r:Lteam/opay/pay/pin/NoNetworkDialog$Companion;

    .line 35
    .line 36
    const-string v2, "login"

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v0, v2, v3}, Lteam/opay/pay/pin/NoNetworkDialog$Companion;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Lxyf;->getRoot()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v4, "getRoot(...)"

    .line 59
    .line 60
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Lteam/opay/pay/onboarding/OnboardingViewModel;->b0(Landroid/view/View;Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_11

    .line 72
    .line 73
    sget-object v2, Luqe;->a:Luqe;

    .line 74
    .line 75
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "is_success"

    .line 80
    .line 81
    const-string v6, "1"

    .line 82
    .line 83
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "error_code"

    .line 88
    .line 89
    invoke-static {v6, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    const-string v8, ""

    .line 98
    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    move-object v7, v8

    .line 102
    :cond_3
    const-string v9, "error_msg"

    .line 103
    .line 104
    invoke-static {v9, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const-string v9, "phone"

    .line 109
    .line 110
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    iget-boolean v10, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->t:Z

    .line 119
    .line 120
    if-eqz v10, :cond_4

    .line 121
    .line 122
    const-string v10, "2"

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->y0()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const-string v11, "newloginno"

    .line 130
    .line 131
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_5

    .line 136
    .line 137
    const-string v10, "3"

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    const-string v10, "0"

    .line 141
    .line 142
    :goto_1
    const-string v11, "login_type"

    .line 143
    .line 144
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-static {v11}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    const-string v12, "is_phone"

    .line 161
    .line 162
    invoke-static {v12, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    const/4 v12, 0x6

    .line 167
    new-array v12, v12, [Lkotlin/Pair;

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    aput-object v5, v12, v13

    .line 171
    .line 172
    aput-object v6, v12, v3

    .line 173
    .line 174
    const/4 v5, 0x2

    .line 175
    aput-object v7, v12, v5

    .line 176
    .line 177
    const/4 v5, 0x3

    .line 178
    aput-object v9, v12, v5

    .line 179
    .line 180
    const/4 v5, 0x4

    .line 181
    aput-object v10, v12, v5

    .line 182
    .line 183
    const/4 v5, 0x5

    .line 184
    aput-object v11, v12, v5

    .line 185
    .line 186
    const-string v5, "login_status"

    .line 187
    .line 188
    invoke-virtual {v2, v4, v5, v12}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->G0()Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const-string v4, "02070"

    .line 196
    .line 197
    if-eqz v2, :cond_8

    .line 198
    .line 199
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_6

    .line 208
    .line 209
    sget v1, Lteam/opay/pay/R$string;->osdk_login_pwd_local_error_tips:I

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    :goto_2
    move-object v12, v8

    .line 216
    goto :goto_3

    .line 217
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-nez v1, :cond_7

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_7
    move-object v12, v1

    .line 225
    :goto_3
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 229
    .line 230
    new-instance v2, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 231
    .line 232
    const/16 v18, 0xfb

    .line 233
    .line 234
    const/16 v19, 0x0

    .line 235
    .line 236
    const/4 v10, 0x0

    .line 237
    const/4 v11, 0x0

    .line 238
    const/4 v13, 0x0

    .line 239
    const/4 v14, 0x0

    .line 240
    const/4 v15, 0x0

    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    move-object v9, v2

    .line 246
    invoke-direct/range {v9 .. v19}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :cond_8
    invoke-static {}, Lg81;->a()[Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v2, v1}, Lkotlin/collections/a;->G([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_9

    .line 271
    .line 272
    iget-boolean v1, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->t:Z

    .line 273
    .line 274
    if-eqz v1, :cond_9

    .line 275
    .line 276
    iget-object v1, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 277
    .line 278
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_7

    .line 284
    .line 285
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-eqz v1, :cond_f

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    sparse-switch v2, :sswitch_data_0

    .line 296
    .line 297
    .line 298
    goto/16 :goto_5

    .line 299
    .line 300
    :sswitch_0
    const-string v2, "80003"

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-nez v1, :cond_b

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :sswitch_1
    const-string v2, "05058"

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-nez v1, :cond_a

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->X0()V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :sswitch_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_b

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :sswitch_3
    const-string v2, "02066"

    .line 330
    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-nez v1, :cond_b

    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->f1(Lteam/opay/core/android/arch/Resource;)V

    .line 339
    .line 340
    .line 341
    goto :goto_7

    .line 342
    :sswitch_4
    const-string v2, "01017"

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_c

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-nez v1, :cond_d

    .line 356
    .line 357
    move-object v9, v8

    .line 358
    goto :goto_4

    .line 359
    :cond_d
    move-object v9, v1

    .line 360
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    sget v1, Lteam/opay/pay/R$string;->osdk_contact_support:I

    .line 365
    .line 366
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v11

    .line 370
    sget v13, Lteam/opay/pay/R$mipmap;->osdk_ic_warning:I

    .line 371
    .line 372
    sget v1, Lteam/opay/pay/R$string;->osdk_suspend_title:I

    .line 373
    .line 374
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v14

    .line 378
    new-instance v15, Le3;

    .line 379
    .line 380
    invoke-direct {v15, v0}, Le3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 381
    .line 382
    .line 383
    const/4 v12, 0x1

    .line 384
    invoke-static/range {v9 .. v15}, Lteam/opay/pay/wallet/a;->b(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :sswitch_5
    const-string/jumbo v2, "weak_password"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_e

    .line 396
    .line 397
    goto :goto_5

    .line 398
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->o1(Lteam/opay/core/android/arch/Resource;)V

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    if-nez v1, :cond_10

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_10
    move-object v8, v1

    .line 410
    :goto_6
    invoke-virtual {v0, v3, v8}, Lteam/opay/pay/pin/AbstractLoginFragment;->p0(ZLjava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_11
    :goto_7
    return-void

    .line 414
    nop

    .line 415
    :sswitch_data_0
    .sparse-switch
        -0x44b8cc7e -> :sswitch_5
        0x2bb68b5 -> :sswitch_4
        0x2bbddae -> :sswitch_3
        0x2bbddc7 -> :sswitch_2
        0x2bd3aae -> :sswitch_1
        0x32bb03b -> :sswitch_0
    .end sparse-switch
.end method

.method public final N0(Lteam/opay/core/android/arch/Resource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lteam/opay/core/api/graphql/LoginResponse;

    .line 7
    .line 8
    if-eqz v2, :cond_6

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lum8;->f(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lql8;->a:Lql8;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v1, v3}, Lql8;->n(Landroid/app/Activity;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/LoginResponse;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, ""

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :cond_1
    invoke-static {v0}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/LoginResponse;->l()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "FastRegister"

    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->X0()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/LoginResponse;->r()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_6

    .line 70
    .line 71
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/LoginResponse;->n()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-string v5, "SUSPEND"

    .line 76
    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/LoginResponse;->j()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object v1, v2

    .line 91
    :goto_0
    new-instance v2, Lx3;

    .line 92
    .line 93
    invoke-direct {v2, p0, p1, v0, v3}, Lx3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/android/arch/Resource;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1, v1, v2}, Lteam/opay/pay/pin/AbstractLoginFragment;->n1(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lteam/opay/core/api/graphql/LoginResponse;

    .line 106
    .line 107
    invoke-virtual {p0, p1, v0, v3}, Lteam/opay/pay/pin/AbstractLoginFragment;->n0(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/4 v5, 0x4

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    move-object v1, p0

    .line 119
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/pin/AbstractLoginFragment;->e1(Lteam/opay/pay/pin/AbstractLoginFragment;Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_1
    return-void
.end method

.method public final P0()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v3, v1, v2}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->S0()V

    .line 14
    .line 15
    .line 16
    iput-boolean v3, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->s:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->D0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/opay/webview/WebFoundationData;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/opay/webview/WebFoundationData;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/opay/webview/WebFoundationActivity;

    .line 13
    .line 14
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "web_data"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final R0(Lteam/opay/core/api/graphql/LoginResponse;)V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/LoginResponse;->f()Lteam/opay/core/api/GraphQL$AccessToken;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$AccessToken;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    const-string v3, ""

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    move-object v2, v3

    .line 24
    :cond_1
    invoke-virtual {v1, v2}, Lteam/opay/core/account/AccountInfoManager;->R(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/LoginResponse;->m()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v3, p1

    .line 39
    :goto_1
    invoke-virtual {v0, v3}, Lteam/opay/core/account/AccountInfoManager;->S(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final S0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->x0()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->q:Lteam/opay/core/api/graphql/LoginResponse;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/LoginResponse;->f()Lteam/opay/core/api/GraphQL$AccessToken;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$AccessToken;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object v1, v3

    .line 27
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->S(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->x0()Lteam/opay/core/settings/SettingsStorage;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->q:Lteam/opay/core/api/graphql/LoginResponse;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/LoginResponse;->m()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v1, v2

    .line 44
    :goto_1
    if-nez v1, :cond_3

    .line 45
    .line 46
    move-object v1, v3

    .line 47
    :cond_3
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->q0(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->x0()Lteam/opay/core/settings/SettingsStorage;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->q:Lteam/opay/core/api/graphql/LoginResponse;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/LoginResponse;->g()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_4
    if-nez v2, :cond_5

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move-object v3, v2

    .line 66
    :goto_2
    invoke-static {v3}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lteam/opay/core/settings/SettingsStorage;->s0(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final T0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public final V0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget v3, Lteam/opay/pay/R$string;->biometric_change_device_tip:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "getString(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lf3;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lf3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/biometric/BiometricPromptManager;->t(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final X0()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/pin/FasterRegisterDialog;->t:Lteam/opay/pay/pin/FasterRegisterDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lteam/opay/pay/pin/FasterRegisterDialog$Companion;->b(Lteam/opay/pay/pin/FasterRegisterDialog$Companion;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/pin/FasterRegisterDialog;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->y0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/FasterRegisterDialog;->S(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lj3;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lj3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/FasterRegisterDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final Z0(Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/pin/LoginPhoneStorage;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Luqe;->a:Luqe;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "phone"

    .line 17
    .line 18
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v4, v4, [Lkotlin/Pair;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v3, v4, v5

    .line 27
    .line 28
    const-string v3, "login_fingerfaceid_click"

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->t0()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lk3;

    .line 42
    .line 43
    invoke-direct {v3, p0, v0, p1}, Lk3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    invoke-virtual {v1, v2, v0, p1, v3}, Lteam/opay/pay/biometric/BiometricPromptManager;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public addObserver()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ld3;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Ld3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lteam/opay/pay/pin/AbstractLoginFragment$b;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lteam/opay/pay/pin/AbstractLoginFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public abstract c1(Z)V
.end method

.method public final d1(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    const-string v7, "login"

    .line 13
    .line 14
    const-string v8, "page"

    .line 15
    .line 16
    const-string v9, "reason"

    .line 17
    .line 18
    const-string v10, "login_click_error"

    .line 19
    .line 20
    const-string v11, "is_phone"

    .line 21
    .line 22
    const-string v12, "phone"

    .line 23
    .line 24
    if-eqz v6, :cond_e

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    const-string v14, ""

    .line 31
    .line 32
    const/4 v15, 0x0

    .line 33
    packed-switch v13, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :pswitch_0
    const-string v13, "04"

    .line 39
    .line 40
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    invoke-static {v0, v15, v4, v15}, Lteam/opay/pay/pin/AbstractLoginFragment;->j1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :pswitch_1
    const-string v13, "03"

    .line 54
    .line 55
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->X0()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :pswitch_2
    const-string v13, "02"

    .line 69
    .line 70
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    invoke-static {v0, v15, v4, v15}, Lteam/opay/pay/pin/AbstractLoginFragment;->j1(Lteam/opay/pay/pin/AbstractLoginFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_5

    .line 82
    .line 83
    :pswitch_3
    const-string v13, "01"

    .line 84
    .line 85
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-nez v6, :cond_3

    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->d()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-nez v6, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move-object v14, v6

    .line 101
    :goto_0
    invoke-static {v0, v5, v14, v4, v15}, Lteam/opay/pay/pin/AbstractLoginFragment;->q0(Lteam/opay/pay/pin/AbstractLoginFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v6, Luqe;->a:Luqe;

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    const-string v14, "phone_pwd_error"

    .line 111
    .line 112
    invoke-static {v9, v14}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-static {v12, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-static {v12}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-static {v11, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    new-array v3, v3, [Lkotlin/Pair;

    .line 145
    .line 146
    aput-object v9, v3, v5

    .line 147
    .line 148
    aput-object v7, v3, v4

    .line 149
    .line 150
    aput-object v8, v3, v2

    .line 151
    .line 152
    aput-object v11, v3, v1

    .line 153
    .line 154
    invoke-virtual {v6, v13, v10, v3}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :pswitch_4
    const-string v13, "00"

    .line 160
    .line 161
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-nez v6, :cond_5

    .line 166
    .line 167
    goto/16 :goto_3

    .line 168
    .line 169
    :cond_5
    move-object/from16 v6, p1

    .line 170
    .line 171
    iput-object v6, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->q:Lteam/opay/core/api/graphql/LoginResponse;

    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7, v4}, Lteam/opay/core/settings/NoClearStorage;->d2(Z)V

    .line 178
    .line 179
    .line 180
    sget-object v7, Luqe;->a:Luqe;

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    const-string v9, "is_success"

    .line 187
    .line 188
    const-string v10, "0"

    .line 189
    .line 190
    invoke-static {v9, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    const-string v13, "action"

    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->q()Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    move-result-object v15

    .line 200
    invoke-static {v13, v15}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 201
    .line 202
    .line 203
    move-result-object v13

    .line 204
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-static {v12, v15}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    if-eqz p3, :cond_6

    .line 213
    .line 214
    const-string v10, "2"

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->y0()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    const-string v3, "newloginno"

    .line 222
    .line 223
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_7

    .line 228
    .line 229
    const-string v10, "3"

    .line 230
    .line 231
    :cond_7
    :goto_1
    const-string v3, "login_type"

    .line 232
    .line 233
    invoke-static {v3, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-static {v10}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-static {v11, v10}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    const/4 v11, 0x5

    .line 254
    new-array v11, v11, [Lkotlin/Pair;

    .line 255
    .line 256
    aput-object v9, v11, v5

    .line 257
    .line 258
    aput-object v13, v11, v4

    .line 259
    .line 260
    aput-object v12, v11, v2

    .line 261
    .line 262
    aput-object v3, v11, v1

    .line 263
    .line 264
    const/4 v1, 0x4

    .line 265
    aput-object v10, v11, v1

    .line 266
    .line 267
    const-string v1, "login_status"

    .line 268
    .line 269
    invoke-virtual {v7, v8, v1, v11}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lteam/opay/pay/home/AppLockStorage;

    .line 273
    .line 274
    invoke-direct {v1}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v5}, Lteam/opay/pay/home/AppLockStorage;->f(Z)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v4}, Lteam/opay/pay/home/AppLockStorage;->g(Z)V

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->e()Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 288
    .line 289
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-eqz v1, :cond_9

    .line 294
    .line 295
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->R0(Lteam/opay/core/api/graphql/LoginResponse;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->b()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const-string v2, "Y"

    .line 303
    .line 304
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    if-eqz v1, :cond_8

    .line 309
    .line 310
    const-string v1, "LOGIN"

    .line 311
    .line 312
    const/4 v2, 0x6

    .line 313
    const/4 v3, 0x0

    .line 314
    invoke-static {v1, v5, v3, v2, v3}, Lkmf;->k(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    new-instance v2, Lcom/opay/webview/WebFoundationData;

    .line 319
    .line 320
    invoke-direct {v2, v1}, Lcom/opay/webview/WebFoundationData;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v1, Landroid/content/Intent;

    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const-class v4, Lcom/opay/webview/WebFoundationActivity;

    .line 330
    .line 331
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .line 333
    .line 334
    const-string/jumbo v3, "web_data"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 338
    .line 339
    .line 340
    const/4 v2, 0x4

    .line 341
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    const/16 v7, 0xc

    .line 351
    .line 352
    const/4 v8, 0x0

    .line 353
    const-string v4, "LOGIN"

    .line 354
    .line 355
    const/4 v5, 0x0

    .line 356
    const/4 v6, 0x0

    .line 357
    invoke-static/range {v3 .. v8}, Lkmf;->A(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_5

    .line 361
    .line 362
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->q()Ljava/lang/Boolean;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 367
    .line 368
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_a

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->R0(Lteam/opay/core/api/graphql/LoginResponse;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const-string v2, "otravel://new_kyc/task?scene=LOGIN"

    .line 382
    .line 383
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    const-string v3, "parse(...)"

    .line 388
    .line 389
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-static {v0, v1, v2, v4}, Lteam/opay/pay/base/FragmentKt;->n(Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 393
    .line 394
    .line 395
    goto/16 :goto_5

    .line 396
    .line 397
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->o0(Lteam/opay/core/api/graphql/LoginResponse;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_c

    .line 402
    .line 403
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/pin/AbstractLoginFragment;->R0(Lteam/opay/core/api/graphql/LoginResponse;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->k()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    if-nez v1, :cond_b

    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_b
    move-object v14, v1

    .line 414
    :goto_2
    invoke-virtual {v0, v14}, Lteam/opay/pay/pin/AbstractLoginFragment;->Q0(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/settings/NoClearStorage;->N1(J)V

    .line 426
    .line 427
    .line 428
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->v0()Lteam/opay/core/settings/NoClearStorage;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->m0()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    add-int/2addr v2, v4

    .line 437
    invoke-virtual {v1, v2}, Lteam/opay/core/settings/NoClearStorage;->V1(I)V

    .line 438
    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->h()Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_d

    .line 450
    .line 451
    new-instance v1, Lteam/opay/core/settings/NoClearStorage;

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-direct {v1, v2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Lteam/opay/core/settings/NoClearStorage;->Y()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-nez v1, :cond_d

    .line 465
    .line 466
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->S0()V

    .line 467
    .line 468
    .line 469
    iput-boolean v5, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->s:Z

    .line 470
    .line 471
    sget-object v1, Lteam/opay/pay/home/security/remember/RememberPasswordTipActivity;->g:Lteam/opay/pay/home/security/remember/RememberPasswordTipActivity$Companion;

    .line 472
    .line 473
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/security/remember/RememberPasswordTipActivity$Companion;->a(Landroid/content/Context;)V

    .line 478
    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->S0()V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->D0()V

    .line 485
    .line 486
    .line 487
    goto :goto_5

    .line 488
    :cond_e
    :goto_3
    sget-object v3, Luqe;->a:Luqe;

    .line 489
    .line 490
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    if-nez p2, :cond_f

    .line 495
    .line 496
    const-string v13, "other"

    .line 497
    .line 498
    goto :goto_4

    .line 499
    :cond_f
    move-object/from16 v13, p2

    .line 500
    .line 501
    :goto_4
    invoke-static {v9, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v8

    .line 513
    invoke-static {v12, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    invoke-static {v12}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v12

    .line 525
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    invoke-static {v11, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    const/4 v12, 0x4

    .line 534
    new-array v12, v12, [Lkotlin/Pair;

    .line 535
    .line 536
    aput-object v9, v12, v5

    .line 537
    .line 538
    aput-object v7, v12, v4

    .line 539
    .line 540
    aput-object v8, v12, v2

    .line 541
    .line 542
    aput-object v11, v12, v1

    .line 543
    .line 544
    invoke-virtual {v3, v6, v10, v12}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 545
    .line 546
    .line 547
    :goto_5
    return-void

    .line 548
    nop

    .line 549
    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f1(Lteam/opay/core/android/arch/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/pin/PasswordErrorTipDialog;->n:Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/pin/PinError;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v3, v2

    .line 14
    :goto_0
    const-string v4, ""

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    move-object v3, v4

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_2
    if-nez v2, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    move-object v4, v2

    .line 29
    :goto_1
    const-string p1, "login"

    .line 30
    .line 31
    invoke-direct {v1, v3, v4, p1}, Lteam/opay/pay/pin/PinError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/pay/pin/PasswordErrorTipDialog$Companion;->a(Lteam/opay/pay/pin/PinError;)Lteam/opay/pay/pin/PasswordErrorTipDialog;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lh3;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lh3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->U(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Li3;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Li3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/PasswordErrorTipDialog;->V(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public abstract hideKeyboard()V
.end method

.method public final i1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->i0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->h0(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lm3;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lm3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/HasSignGuideFragment;->k0(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->F(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object p1, Lteam/opay/pay/pin/Guide2SignUpFragment;->l:Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;

    .line 43
    .line 44
    invoke-virtual {p1}, Lteam/opay/pay/pin/Guide2SignUpFragment$Companion;->a()Lteam/opay/pay/pin/Guide2SignUpFragment;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    xor-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/Guide2SignUpFragment;->Q(Z)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ln3;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Ln3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lteam/opay/pay/pin/Guide2SignUpFragment;->R(Lkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final m1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->hideKeyboard()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->P(Z)Lteam/opay/core/base/BaseFragment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lteam/opay/core/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget v2, Lteam/opay/pay/R$id;->onboarding_screen:I

    .line 28
    .line 29
    invoke-static {v1, v2, v0, p0}, Lli2;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final n0(Lteam/opay/core/api/graphql/LoginResponse;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 18

    .line 1
    sget-object v0, Luqe;->a:Luqe;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->p()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "valStep"

    .line 16
    .line 17
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "phone"

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    invoke-static {v3, v8}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static/range {p2 .. p2}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "is_phone"

    .line 38
    .line 39
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x3

    .line 44
    new-array v5, v5, [Lkotlin/Pair;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    aput-object v2, v5, v6

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    aput-object v3, v5, v2

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    aput-object v4, v5, v2

    .line 54
    .line 55
    const-string v2, "login_new_device"

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v5}, Luqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Lteam/opay/pay/account/verify/VerifyActivity;->l:Lteam/opay/pay/account/verify/VerifyActivity$Companion;

    .line 61
    .line 62
    sget-object v6, Lteam/opay/pay/account/verify/ModifyType;->LOGIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 63
    .line 64
    new-instance v7, Lteam/opay/pay/account/verify/VerifyPoolResponse;

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->o()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->p()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->i()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual/range {p1 .. p1}, Lteam/opay/core/api/graphql/LoginResponse;->a()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    const/16 v16, 0x18

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    move-object v9, v7

    .line 89
    invoke-direct/range {v9 .. v17}, Lteam/opay/pay/account/verify/VerifyPoolResponse;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    invoke-static/range {p2 .. p2}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    const-string v0, "mobile"

    .line 99
    .line 100
    :goto_0
    move-object v10, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    const-string v0, "email"

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_1
    invoke-static/range {p2 .. p2}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    const-string v0, ""

    .line 112
    .line 113
    move-object v11, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    move-object v11, v8

    .line 116
    :goto_2
    const-string v9, "new_login"

    .line 117
    .line 118
    move-object/from16 v5, p3

    .line 119
    .line 120
    move-object/from16 v8, p2

    .line 121
    .line 122
    invoke-virtual/range {v4 .. v11}, Lteam/opay/pay/account/verify/VerifyActivity$Companion;->j(Landroid/app/Activity;Lteam/opay/pay/account/verify/ModifyType;Lteam/opay/pay/account/verify/VerifyPoolResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final n1(ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/pin/AccountSuspendDialog;->o:Lteam/opay/pay/pin/AccountSuspendDialog$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/pin/AccountSuspendDialog$Companion;->a()Lteam/opay/pay/pin/AccountSuspendDialog;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lteam/opay/pay/pin/AccountSuspendDialog;->R(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/pin/AccountSuspendDialog;->S(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lteam/opay/pay/pin/AccountSuspendDialog;->Q(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final o0(Lteam/opay/core/api/graphql/LoginResponse;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/LoginResponse;->k()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object p1, Lteam/opay/pay/pin/LoginUnfreeConfig;->Companion:Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;->a()Lteam/opay/pay/pin/LoginUnfreeConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/pay/pin/LoginUnfreeConfig;->getMaxCallCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/pin/LoginUnfreeConfig$Companion;->a()Lteam/opay/pay/pin/LoginUnfreeConfig;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/pay/pin/LoginUnfreeConfig;->getRateTimeByDay()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-wide/16 v1, 0x3

    .line 40
    .line 41
    :goto_1
    sget-object p1, Lyke;->a:Lyke;

    .line 42
    .line 43
    const/16 v3, 0x18

    .line 44
    .line 45
    int-to-long v3, v3

    .line 46
    mul-long v1, v1, v3

    .line 47
    .line 48
    const/16 v3, 0x3c

    .line 49
    .line 50
    int-to-long v3, v3

    .line 51
    mul-long v1, v1, v3

    .line 52
    .line 53
    mul-long v1, v1, v3

    .line 54
    .line 55
    const/16 v3, 0x3e8

    .line 56
    .line 57
    int-to-long v3, v3

    .line 58
    mul-long v1, v1, v3

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2}, Lyke;->d(IJ)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_3
    :goto_2
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public final o1(Lteam/opay/core/android/arch/Resource;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v11, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$mipmap;->ic_security_lock_notice:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_0
    move-object v3, p1

    .line 14
    sget p1, Lteam/opay/pay/R$string;->base_reset_password:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string p1, "getString(...)"

    .line 21
    .line 22
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v9, 0xe2

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v0, v11

    .line 34
    invoke-direct/range {v0 .. v10}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 42
    .line 43
    invoke-virtual {v0, v11}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lg3;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lg3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lx7b;->a:Lx7b;

    .line 56
    .line 57
    const-string v2, "status"

    .line 58
    .line 59
    const-string v3, "login"

    .line 60
    .line 61
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x1

    .line 66
    new-array v3, v3, [Lkotlin/Pair;

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    aput-object v2, v3, v4

    .line 70
    .line 71
    const-string v2, "Password_weakPassword_show"

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v0, :cond_8

    .line 8
    .line 9
    if-eq p1, v2, :cond_4

    .line 10
    .line 11
    const/4 p2, 0x2

    .line 12
    if-eq p1, p2, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->J0()V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    if-eqz p3, :cond_3

    .line 26
    .line 27
    const-string p2, "android.intent.extra.TEXT"

    .line 28
    .line 29
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance p3, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "unfreezeBack"

    .line 42
    .line 43
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_8

    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->P0()V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :goto_0
    return-void

    .line 54
    :cond_4
    const-string p2, "data"

    .line 55
    .line 56
    if-eqz p3, :cond_5

    .line 57
    .line 58
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    move-object v0, v1

    .line 64
    :goto_1
    const-string v3, "cancel"

    .line 65
    .line 66
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    if-eqz p3, :cond_7

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    goto :goto_2

    .line 83
    :cond_7
    move-object p2, v1

    .line 84
    :goto_2
    const-string p3, "true"

    .line 85
    .line 86
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->P0()V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_3
    const/4 p2, 0x4

    .line 96
    if-ne p1, p2, :cond_9

    .line 97
    .line 98
    iget-boolean p1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->w:Z

    .line 99
    .line 100
    if-nez p1, :cond_9

    .line 101
    .line 102
    sget-object p1, Lxk8;->a:Lxk8;

    .line 103
    .line 104
    new-instance p2, Lr3;

    .line 105
    .line 106
    invoke-direct {p2}, Lr3;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p3, "h5ComplianceEvent"

    .line 110
    .line 111
    invoke-virtual {p1, p3, p2}, Lxk8;->e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v2, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->w:Z

    .line 115
    .line 116
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 117
    .line 118
    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 p2, 0x0

    .line 123
    invoke-static {p1, p2, v2, v1}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->S0()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->D0()V

    .line 130
    .line 131
    .line 132
    :cond_9
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v3, "login_back"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->q()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->G0()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v0, v1, v2, v3}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-static {v0, v1, v4, v3}, Lum8;->j(Landroid/app/Activity;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    sget-object v0, Lql8;->a:Lql8;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "requireContext(...)"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lql8;->h(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    sget-object v0, Ld00;->a:Ld00;

    .line 70
    .line 71
    const-class v1, Lteam/opay/pay/home/MainActivity;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "getName(...)"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ld00;->b(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lum8;->g(Landroid/app/Activity;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-super {p0}, Lteam/opay/core/base/BaseFragment;->onBackPressed()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->q(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->c()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->s(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 4
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/pay/onboarding/OnboardingViewModel;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getModifyType()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->LOGIN:Lteam/opay/pay/account/verify/ModifyType;

    invoke-virtual {v1}, Lteam/opay/pay/account/verify/ModifyType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRequestCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_login"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->r:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getSecurityId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    .line 21
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getValChainId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    .line 22
    :cond_1
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifyEvent;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 23
    :goto_0
    invoke-virtual {p0, v0, v1, v3, v2}, Lteam/opay/pay/pin/AbstractLoginFragment;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    :cond_4
    :goto_1
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/android/web/CompliantResultEvent;)V
    .locals 3
    .param p1    # Lteam/opay/pay/android/web/CompliantResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    iget-boolean v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->w:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/android/web/CompliantResultEvent;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/pay/onboarding/OnboardingViewModel;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/android/web/CompliantResultEvent;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/android/web/CompliantResultEvent;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iput-boolean v2, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->s:Z

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->D0()V

    .line 11
    iput-boolean v1, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->w:Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->S0()V

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    invoke-virtual {p1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v2, v1, v0}, Lteam/opay/core/account/AccountInfoManager;->e(Lteam/opay/core/account/AccountInfoManager;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onEvent(Lteam/opay/pay/home/security/remember/LockTipCloseEvent;)V
    .locals 2
    .param p1    # Lteam/opay/pay/home/security/remember/LockTipCloseEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/pay/onboarding/OnboardingViewModel;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->D0()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/OnboardingViewModel;->a0(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->addObserver()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public abstract p0(ZLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
    const-string v2, "password"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "securityId"

    .line 11
    .line 12
    move-object/from16 v12, p2

    .line 13
    .line 14
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "valChainId"

    .line 18
    .line 19
    move-object/from16 v13, p3

    .line 20
    .line 21
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "refreshToken"

    .line 25
    .line 26
    move-object/from16 v14, p4

    .line 27
    .line 28
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-static {v0, v4, v5, v3, v5}, Lteam/opay/pay/pin/AbstractLoginFragment;->q0(Lteam/opay/pay/pin/AbstractLoginFragment;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->hideKeyboard()V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->r:Ljava/lang/String;

    .line 41
    .line 42
    iget-boolean v3, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->t:Z

    .line 43
    .line 44
    const-string v4, ""

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    move-object v8, v4

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v8, v1

    .line 51
    :goto_0
    if-eqz v3, :cond_1

    .line 52
    .line 53
    move-object v9, v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v9, v4

    .line 56
    :goto_1
    sget-object v1, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 57
    .line 58
    const-class v3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const-string v6, "0"

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    sget-object v3, Lteam/opay/pay/onboarding/tabs/MtnTestABTest;->Companion:Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v3, v7}, Lteam/opay/pay/onboarding/tabs/MtnTestABTest$Companion;->a(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    const-string v6, "1"

    .line 91
    .line 92
    :cond_2
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-interface {v1}, Lteam/opay/swarmfoundation/data/IDeviceDataGenerator;->deviceId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :cond_3
    invoke-static {v5, v4}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    move-object v5, v1

    .line 103
    check-cast v5, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v1}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    sget-object v1, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    move-object v1, v4

    .line 127
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static {v3}, Lca2;->b(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    move-object v7, v4

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->z0()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    move-object v7, v3

    .line 144
    :goto_3
    iget-boolean v3, v0, Lteam/opay/pay/pin/AbstractLoginFragment;->t:Z

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    const-string v2, "fingerprintPassword"

    .line 149
    .line 150
    :cond_6
    move-object v10, v2

    .line 151
    invoke-static {}, Lteam/opay/pay/account/verify/d;->b()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-static {v15, v6}, Lteam/opay/pay/account/verify/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 164
    .line 165
    new-instance v2, Lteam/opay/core/api/graphql/LoginRequest;

    .line 166
    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    const/16 v17, 0x800

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    move-object v4, v2

    .line 174
    move-object v6, v1

    .line 175
    move-object/from16 v12, p2

    .line 176
    .line 177
    move-object/from16 v13, p3

    .line 178
    .line 179
    move-object/from16 v14, p4

    .line 180
    .line 181
    invoke-direct/range {v4 .. v18}, Lteam/opay/core/api/graphql/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/pin/AbstractLoginFragment;->w0()Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1, v2}, Lteam/opay/pay/onboarding/OnboardingViewModel;->e0(Lteam/opay/core/api/graphql/LoginRequest;)Landroidx/lifecycle/LiveData;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v2, Lw3;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lw3;-><init>(Lteam/opay/pay/pin/AbstractLoginFragment;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public abstract r0()V
.end method

.method public final s0()Lteam/opay/pay/biometric/BiometricIntroduction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->v:Lteam/opay/pay/biometric/BiometricIntroduction;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "biometricIntroduction"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final t0()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->k:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final u0()Lteam/opay/pay/pin/LoginPhoneStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v0()Lteam/opay/core/settings/NoClearStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->n:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public final w0()Lteam/opay/pay/onboarding/OnboardingViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/OnboardingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final x0()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public y0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/pin/AbstractLoginFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract z0()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
