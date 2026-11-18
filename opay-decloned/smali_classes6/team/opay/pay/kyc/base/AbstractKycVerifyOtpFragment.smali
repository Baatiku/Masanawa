.class public abstract Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "AbstractKycVerifyOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lbf6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ad\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001S\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0015J\u000f\u0010)\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008)\u0010$J!\u0010.\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*2\u0008\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J)\u00105\u001a\u00020\u00052\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020*2\u0008\u00104\u001a\u0004\u0018\u000103H\u0016\u00a2\u0006\u0004\u00085\u00106J\u0017\u00109\u001a\u00020\r2\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0004J\r\u0010<\u001a\u00020\u0005\u00a2\u0006\u0004\u0008<\u0010\u0004J\u000f\u0010=\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0004J-\u0010@\u001a\u00020\u00052\u0008\u0008\u0002\u0010>\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00122\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0004R\u001b\u0010H\u001a\u00020C8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\"\u0010R\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010\u0015R\u001b\u0010W\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010E\u001a\u0004\u0008U\u0010VR\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\"\u0010i\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010$\"\u0004\u0008g\u0010hR\u0018\u0010m\u001a\u0004\u0018\u00010j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u001b\u0010r\u001a\u00020n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010E\u001a\u0004\u0008p\u0010qR\u0018\u0010v\u001a\u0004\u0018\u00010s8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0014\u0010z\u001a\u00020w8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010y\u00a8\u0006{"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lbf6;",
        "<init>",
        "()V",
        "",
        "T0",
        "o1",
        "h1",
        "",
        "millisUntilFinished",
        "s1",
        "(Ljava/lang/Long;)V",
        "",
        "clickable",
        "g1",
        "(JZ)V",
        "k1",
        "",
        "otp",
        "L0",
        "(Ljava/lang/String;)V",
        "message",
        "W0",
        "Landroid/os/CountDownTimer;",
        "kotlin.jvm.PlatformType",
        "p1",
        "()Landroid/os/CountDownTimer;",
        "t1",
        "H0",
        "q1",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "rsp",
        "j1",
        "(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V",
        "onBackPressed",
        "()Z",
        "S0",
        "addObserver",
        "refreshToken",
        "X0",
        "n1",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/view/ContextMenu;",
        "menu",
        "v",
        "Landroid/view/ContextMenu$ContextMenuInfo;",
        "menuInfo",
        "onCreateContextMenu",
        "(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V",
        "Landroid/view/MenuItem;",
        "item",
        "onContextItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "d1",
        "C0",
        "Y0",
        "show",
        "apiCode",
        "J0",
        "(ZLjava/lang/String;Ljava/lang/String;)V",
        "onDestroyView",
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;",
        "l",
        "Lid8;",
        "R0",
        "()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;",
        "otpViewModel",
        "",
        "m",
        "I",
        "delayMillis",
        "n",
        "Ljava/lang/String;",
        "getSendSource",
        "()Ljava/lang/String;",
        "setSendSource",
        "sendSource",
        "team/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b",
        "o",
        "N0",
        "()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;",
        "countDownTimer",
        "Lteam/opay/core/settings/SettingsStorage;",
        "p",
        "Lteam/opay/core/settings/SettingsStorage;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "setSettingsStorage",
        "(Lteam/opay/core/settings/SettingsStorage;)V",
        "settingsStorage",
        "Lteam/opay/pay/module/dialog/OtpStateDialogFragment;",
        "q",
        "Lteam/opay/pay/module/dialog/OtpStateDialogFragment;",
        "stateDialogFragment",
        "r",
        "Z",
        "Q0",
        "m1",
        "(Z)V",
        "otpAutoFilled",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "s",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "Lt1b;",
        "t",
        "P0",
        "()Lt1b;",
        "keyView",
        "Lkotlinx/coroutines/l;",
        "u",
        "Lkotlinx/coroutines/l;",
        "listenerOtpJob",
        "Lteam/opay/core/api/Country;",
        "O0",
        "()Lteam/opay/core/api/Country;",
        "country",
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
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Lteam/opay/core/settings/SettingsStorage;

.field public q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Z

.field public s:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$1;->INSTANCE:Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->l:Lid8;

    .line 49
    .line 50
    const/16 v0, 0xf

    .line 51
    .line 52
    iput v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->m:I

    .line 53
    .line 54
    const-string v0, "KYC1_UPGRADE"

    .line 55
    .line 56
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->n:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ld2;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ld2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->o:Lid8;

    .line 68
    .line 69
    new-instance v0, Ln2;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Ln2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->t:Lid8;

    .line 79
    .line 80
    return-void
.end method

.method public static synthetic A0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->e1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s1(Ljava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final D0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    const/16 v6, 0x1e

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static final E0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->j1(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->L0(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final G0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lbf6;

    .line 6
    .line 7
    iget-object p0, p0, Lbf6;->g:Lteam/opay/core/android/views/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "loading"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method private final H0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->G()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->N0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lbf6;

    .line 33
    .line 34
    iget-object v0, v0, Lbf6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 40
    .line 41
    .line 42
    sget v1, Lteam/opay/pay/R$string;->retry_in:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget v2, Lteam/opay/pay/R$color;->mint:I

    .line 56
    .line 57
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public static final I0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->Companion:Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;J)V

    .line 10
    .line 11
    .line 12
    return-object v2
.end method

.method public static synthetic K0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p5, :cond_3

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    move-object p2, v0

    .line 15
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 16
    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    move-object p3, v0

    .line 20
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->J0(ZLjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string p1, "Super calls with default arguments not supported in this target, function: decorateError"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method private final L0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lxk8;->a:Lxk8;

    .line 2
    .line 3
    new-instance v1, Ll2;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ll2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v1, v3, v2}, Lxk8;->f(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->O()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lbf6;

    .line 34
    .line 35
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p1, v1}, Lteam/opay/core/android/views/CodeInputField;->x(Ljava/lang/CharSequence;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lbf6;

    .line 50
    .line 51
    iget-object p1, p1, Lbf6;->l:Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->performClick()Z

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public static final M0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "otp = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final O0()Lteam/opay/core/api/Country;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final P0()Lt1b;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->t:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lt1b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final T0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    new-instance v0, Lteam/opay/pay/account/KeyBoardHelper;

    .line 17
    .line 18
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, v1, Lt1b;->g:Landroid/inputmethodservice/KeyboardView;

    .line 23
    .line 24
    const-string v1, "keyBoardView"

    .line 25
    .line 26
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lbf6;

    .line 34
    .line 35
    iget-object v1, v1, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 36
    .line 37
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v4, v1, Lt1b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v5, v1, Lt1b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lbf6;

    .line 58
    .line 59
    iget-object v6, v1, Lbf6;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/16 v9, 0x20

    .line 66
    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v1, v0

    .line 70
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 74
    .line 75
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lbf6;

    .line 80
    .line 81
    iget-object v1, v1, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lteam/opay/core/android/views/CodeInputField;->m(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    const-string v1, "keyBoardTopText"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Le2;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Le2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static final U0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->P0()Lt1b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getText(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/android/views/CodeInputField;->x(Ljava/lang/CharSequence;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->u:Lkotlinx/coroutines/l;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lteam/opay/pay/account/KeyBoardHelper;->u(Lkotlinx/coroutines/l;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final V0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lt1b;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lbf6;

    .line 6
    .line 7
    iget-object p0, p0, Lbf6;->d:Lt1b;

    .line 8
    .line 9
    invoke-virtual {p0}, Lt1b;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lt1b;->bind(Landroid/view/View;)Lt1b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private final W0(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v0, v1, p1, v2, v1}, Lqc3;->H(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final Z0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final a1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->C0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final b1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->k1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final c1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final e1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v4, 0x6

    .line 2
    const/4 v5, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->K0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lbf6;

    .line 15
    .line 16
    iget-object v0, v0, Lbf6;->l:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lbf6;

    .line 23
    .line 24
    iget-object v1, v1, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x6

    .line 35
    const/4 v3, 0x0

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lbf6;

    .line 49
    .line 50
    iget-object v0, v0, Lbf6;->l:Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iput-boolean v3, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 70
    .line 71
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p0
.end method

.method public static final f1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 14
    .line 15
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method private final g1(JZ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lbf6;

    .line 7
    .line 8
    iget-object v1, v1, Lbf6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {v1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    sget p1, Lteam/opay/pay/R$string;->retry_in:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget p2, Lteam/opay/pay/R$color;->color_00B876:I

    .line 29
    .line 30
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    sget p1, Lteam/opay/pay/R$drawable;->osdk_ripple_stroke_00b876_24:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0x10

    .line 43
    .line 44
    invoke-static {p1}, Lkmf;->g(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const/16 p3, 0x8

    .line 49
    .line 50
    invoke-static {p3}, Lkmf;->g(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p1}, Lkmf;->g(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p3}, Lkmf;->g(I)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-virtual {v1, p2, v0, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget p3, Lteam/opay/pay/R$string;->osdk_resend_with_time_v3:I

    .line 67
    .line 68
    invoke-static {p1, p2}, Lmn8;->a(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 p2, 0x1

    .line 73
    new-array p2, p2, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p1, p2, v0

    .line 76
    .line 77
    invoke-static {p3, p2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    sget p2, Lteam/opay/pay/R$color;->black_45:I

    .line 93
    .line 94
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget p2, Lteam/opay/pay/R$color;->transparent:I

    .line 106
    .line 107
    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method private final h1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lf2;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lf2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->a1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {p1, v0, v0, v1, v0}, Lteam/opay/core/android/ContextKt;->h(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lteam/opay/pay/kyc/a;->s(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lbf6;

    .line 28
    .line 29
    iget-object p0, p0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 45
    :goto_1
    return p0
.end method

.method public static synthetic j0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->M0(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->c1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, "verifyError"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->M()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->n:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "KYC_COMPLIANCE"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lt2;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lt2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$a;->a:[I

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
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    sget p1, Lteam/opay/pay/R$string;->connection_error_headline:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "getString(...)"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->W0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    invoke-direct {p0, v2, v3, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->g1(JZ)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->p1()Landroid/os/CountDownTimer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->M()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->R(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->o1()V

    .line 73
    .line 74
    .line 75
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->G0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->i1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->u1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->u:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "requireContext(...)"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getViewLifecycleOwner(...)"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lbf6;

    .line 37
    .line 38
    iget-object v3, v3, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/account/KeyBoardHelper;->t(Landroid/content/Context;Lag8;Lteam/opay/core/android/views/CodeInputField;)Lkotlinx/coroutines/l;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->u:Lkotlinx/coroutines/l;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->f1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p1()Landroid/os/CountDownTimer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->N0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lbf6;

    .line 14
    .line 15
    iget-object v1, v1, Lbf6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->L()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public static synthetic q0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->D0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lt1b;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->V0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lt1b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$a;->a:[I

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
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lteam/opay/pay/account/otp/TimeInterval;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/account/otp/TimeInterval;->a()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-gez v0, :cond_2

    .line 37
    .line 38
    const/16 p1, 0xf

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p1}, Lteam/opay/pay/account/otp/TimeInterval;->a()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    :goto_2
    iput p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->m:I

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static synthetic s0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->b1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s1(Ljava/lang/Long;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Lkotlin/ranges/LongRange;

    .line 4
    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v3, 0x1

    .line 10
    .line 11
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lkotlin/ranges/LongRange;->i(J)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-direct {p0, v2, v3, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->g1(JZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    cmp-long v0, v4, v2

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-direct {p0, v0, v1, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->g1(JZ)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-direct {p0, v2, v3, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->g1(JZ)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic t0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->Z0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t1(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/core/base/BaseDialogFragment;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->l:Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;

    .line 27
    .line 28
    iget-boolean v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment$Companion;->a(Z)Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->M()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->O0()Lteam/opay/core/api/Country;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/16 v8, 0x18

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const-string v7, "KYC_COMPLIANCE"

    .line 61
    .line 62
    move-object v3, p1

    .line 63
    invoke-static/range {v1 .. v9}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->c0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "getViewLifecycleOwner(...)"

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lk2;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lk2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static synthetic u0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->l1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Y(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$a;->a:[I

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aget v0, v1, v0

    .line 35
    .line 36
    if-eq v0, v3, :cond_7

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x3

    .line 42
    if-ne v0, p0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    .line 47
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Y(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lbf6;

    .line 63
    .line 64
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->n()V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    sget-object v1, Lteam/opay/core/android/arch/Status;->ERROR:Lteam/opay/core/android/arch/Status;

    .line 76
    .line 77
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    const-string p1, ""

    .line 84
    .line 85
    :cond_5
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->Y0()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_7
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q:Lteam/opay/pay/module/dialog/OtpStateDialogFragment;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    new-instance v1, Lm2;

    .line 97
    .line 98
    invoke-direct {v1, p0, p1}, Lm2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->S(Lkotlin/jvm/functions/Function0;)V

    .line 102
    .line 103
    .line 104
    sget-object p0, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 105
    .line 106
    invoke-virtual {v0}, Lteam/opay/core/base/BaseDialogFragment;->getAppContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    sget v1, Lteam/opay/pay/R$string;->osdk_otp_success_desc:I

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p0, p1}, Lteam/opay/pay/module/dialog/OtpStateDialogFragment;->T(Lteam/opay/core/android/arch/Status;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method

.method public static synthetic v0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->U0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->V(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v2, p1

    .line 29
    :goto_0
    invoke-virtual {p0, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->X0(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->F0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->I0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->E0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->v1(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final C0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x6

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->O()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    new-array v3, v0, [Lkotlin/Pair;

    .line 32
    .line 33
    const/16 v6, 0xc

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const-string v2, "verify_phone_number_next_click"

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v1, p0

    .line 41
    invoke-static/range {v1 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lbf6;

    .line 49
    .line 50
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->t1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v5, 0x6

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    move-object v1, p0

    .line 66
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->K0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final J0(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "message"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p3, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Y(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lbf6;

    .line 19
    .line 20
    iget-object p3, p3, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p3}, Lteam/opay/core/android/views/CodeInputField;->n()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Lbf6;

    .line 34
    .line 35
    iget-object p3, p3, Lbf6;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    invoke-static {p3, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    sget p1, Lteam/opay/pay/R$string;->error_wrong_code:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string p1, "getString(...)"

    .line 55
    .line 56
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final N0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public S0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->q1()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->k1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public X0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "refreshToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->Y()Lteam/opay/pay/kyc/base/KycNodeData;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/KycNodeData;->getScene()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "OTP_FRESH_TOKEN_CHECK"

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1, v1, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->H(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    return-void
.end method

.method public addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lg2;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lg2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lh2;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lh2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->K()Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Li2;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Li2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    new-instance v2, Lj2;

    .line 84
    .line 85
    invoke-direct {v2, p0}, Lj2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;

    .line 89
    .line 90
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public d1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    new-instance v1, Lu2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lu2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lbf6;

    .line 22
    .line 23
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 24
    .line 25
    new-instance v1, Lv2;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lv2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/core/android/views/CodeInputField;->setOnActionDone(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->p:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "settingsStorage"

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

.method public abstract j1(Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;)V
    .param p1    # Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final m1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public n1()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "verify_phone_number_back_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onBackPressed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-static {v0, v1, v1, v2, v1}, Lteam/opay/core/android/ContextKt;->h(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lteam/opay/pay/kyc/a;->s(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lbf6;

    .line 33
    .line 34
    iget-object v1, v1, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v0, v2}, Lteam/opay/core/android/views/CodeInputField;->x(Ljava/lang/CharSequence;I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1    # Landroid/view/ContextMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "menu"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lbf6;

    .line 23
    .line 24
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne p3, v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    sget v0, Lteam/opay/pay/R$string;->osdk_paste:I

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0, p2, v0, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbf6;

    .line 6
    .line 7
    iget-object v0, v0, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->H0()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lteam/opay/core/base/BaseFragmentV2;->onDestroyView()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->S0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->addObserver()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->T0()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->h1()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lbf6;

    .line 28
    .line 29
    iget-object p1, p1, Lbf6;->h:Lteam/opay/core/android/views/OpayActionBar;

    .line 30
    .line 31
    new-instance p2, Lo2;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lo2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->d1()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lbf6;

    .line 47
    .line 48
    iget-object p1, p1, Lbf6;->l:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    const-string p2, "verifyAction"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Lp2;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lp2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lbf6;

    .line 68
    .line 69
    iget-object p1, p1, Lbf6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    const-string p2, "tvRemaindTime"

    .line 72
    .line 73
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Lq2;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lq2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lbf6;

    .line 89
    .line 90
    iget-object p1, p1, Lbf6;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    sget p2, Lteam/opay/pay/R$string;->omain_verify_otp_hint:I

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->N()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v1, 0x1

    .line 103
    new-array v2, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    aput-object v0, v2, v3

    .line 107
    .line 108
    invoke-virtual {p0, p2, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lbf6;

    .line 124
    .line 125
    iget-object p1, p1, Lbf6;->i:Lteam/opay/core/android/views/CodeInputField;

    .line 126
    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    invoke-virtual {p1}, Lteam/opay/core/android/views/CodeInputField;->getEditText()Lteam/opay/core/android/views/HiddenEditText;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    new-instance p2, Lr2;

    .line 136
    .line 137
    invoke-direct {p2, p0}, Lr2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->n1()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    const-string p1, "check_id"

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    const-string p1, ""

    .line 153
    .line 154
    :goto_0
    const-string p2, "button"

    .line 155
    .line 156
    invoke-static {p2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-array v6, v1, [Lkotlin/Pair;

    .line 161
    .line 162
    aput-object p1, v6, v3

    .line 163
    .line 164
    const/16 v9, 0xc

    .line 165
    .line 166
    const/4 v10, 0x0

    .line 167
    const-string v5, "verify_phone_number_page_show"

    .line 168
    .line 169
    const/4 v7, 0x0

    .line 170
    const/4 v8, 0x0

    .line 171
    move-object v4, p0

    .line 172
    invoke-static/range {v4 .. v10}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->X(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;[Lkotlin/Pair;ZZILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final q1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;->R0()Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Z()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ls2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ls2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
