.class public final Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;
.super Lteam/opay/pay/kyc/base/AbstractKycViewModel;
.source "AbstractKycVerifyOtpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B9\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J-\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\"0!\u00a2\u0006\u0004\u0008$\u0010%J1\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\"0!2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010\u00a2\u0006\u0004\u0008)\u0010*JQ\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\"0!2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010/2\u0006\u0010\u0017\u001a\u00020\u0010\u00a2\u0006\u0004\u00081\u00102R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001d\u0010C\u001a\u0008\u0012\u0004\u0012\u00020>0=8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u001a\u0010F\u001a\u0008\u0012\u0004\u0012\u00020D0=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010@R\u001c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u00100=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010@R\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00100!8\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010%R\"\u0010P\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010\u0012\"\u0004\u0008O\u0010 R$\u0010X\u001a\u0004\u0018\u00010Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR$\u0010\\\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010M\u001a\u0004\u0008Z\u0010\u0012\"\u0004\u0008[\u0010 R$\u0010`\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010M\u001a\u0004\u0008^\u0010\u0012\"\u0004\u0008_\u0010 R\u0016\u0010b\u001a\u00020Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010AR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR*\u0010m\u001a\u00020D2\u0006\u0010g\u001a\u00020D8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010$\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001b\u0010s\u001a\u00020n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010p\u001a\u0004\u0008q\u0010rR\"\u0010\u0016\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010M\u001a\u0004\u0008u\u0010\u0012\"\u0004\u0008v\u0010 \u00a8\u0006w"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;",
        "Lteam/opay/pay/kyc/base/AbstractKycViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "kycRepository",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "Lteam/opay/pay/account/otp/OtpFetchRepository;",
        "repository",
        "Lteam/opay/core/auth/AuthRepository;",
        "authRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/pay/account/otp/OtpFetchRepository;Lteam/opay/core/auth/AuthRepository;)V",
        "",
        "M",
        "()Ljava/lang/String;",
        "N",
        "Lag8;",
        "lifecycleOwner",
        "refreshToken",
        "scene",
        "pageName",
        "",
        "H",
        "(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "G",
        "()V",
        "phone",
        "R",
        "(Ljava/lang/String;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/account/otp/TimeInterval;",
        "Z",
        "()Landroidx/lifecycle/LiveData;",
        "phoneNumber",
        "sendSource",
        "Lteam/opay/core/api/GraphQL$AuthState;",
        "S",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "otp",
        "Lteam/opay/core/api/Country;",
        "country",
        "serviceCode",
        "Lteam/opay/pay/account/otp/OtpChannel;",
        "otpChannel",
        "b0",
        "(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "i",
        "Landroid/app/Application;",
        "j",
        "Lteam/opay/core/settings/SettingsStorage;",
        "k",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "l",
        "Lteam/opay/pay/account/otp/OtpFetchRepository;",
        "m",
        "Lteam/opay/core/auth/AuthRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
        "n",
        "Landroidx/lifecycle/MutableLiveData;",
        "J",
        "()Landroidx/lifecycle/MutableLiveData;",
        "freshTokenVerifySuccessEvent",
        "",
        "o",
        "_verifyingCodeLiveData",
        "p",
        "_otp",
        "q",
        "Landroidx/lifecycle/LiveData;",
        "K",
        "r",
        "Ljava/lang/String;",
        "getOtpPhone",
        "U",
        "otpPhone",
        "",
        "s",
        "Ljava/lang/Long;",
        "getTaskRecordId",
        "()Ljava/lang/Long;",
        "X",
        "(Ljava/lang/Long;)V",
        "taskRecordId",
        "t",
        "getTaskId",
        "W",
        "taskId",
        "u",
        "getBizSecurityId",
        "T",
        "bizSecurityId",
        "v",
        "sendWhatsappTime",
        "Ljava/lang/Runnable;",
        "w",
        "Ljava/lang/Runnable;",
        "timeoutRunnable",
        "value",
        "x",
        "O",
        "()Z",
        "Y",
        "(Z)V",
        "verifyingCode",
        "Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;",
        "y",
        "Lid8;",
        "L",
        "()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;",
        "otpBroadcastReceiver",
        "z",
        "getRefreshToken",
        "V",
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
.field public final i:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/kyc/customer/KycRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/account/otp/OtpFetchRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lteam/opay/core/auth/AuthRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
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

.field public p:Landroidx/lifecycle/MutableLiveData;
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

.field public final q:Landroidx/lifecycle/LiveData;
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

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/Long;
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

.field public v:J

.field public final w:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Z

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/core/api/SessionRepository;Lteam/opay/pay/account/otp/OtpFetchRepository;Lteam/opay/core/auth/AuthRepository;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/settings/SettingsStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/kyc/customer/KycRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/account/otp/OtpFetchRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/auth/AuthRepository;
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
    const-string v0, "settingsStorage"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "kycRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sessionRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "repository"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "authRepository"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;-><init>(Landroid/app/Application;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->i:Landroid/app/Application;

    .line 35
    .line 36
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->j:Lteam/opay/core/settings/SettingsStorage;

    .line 37
    .line 38
    iput-object p3, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->k:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 39
    .line 40
    iput-object p5, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->l:Lteam/opay/pay/account/otp/OtpFetchRepository;

    .line 41
    .line 42
    iput-object p6, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->m:Lteam/opay/core/auth/AuthRepository;

    .line 43
    .line 44
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 64
    .line 65
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->q:Landroidx/lifecycle/LiveData;

    .line 66
    .line 67
    const-string p2, ""

    .line 68
    .line 69
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->r:Ljava/lang/String;

    .line 70
    .line 71
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    const-wide/16 p5, 0x14

    .line 74
    .line 75
    invoke-virtual {p3, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    iput-wide v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->v:J

    .line 80
    .line 81
    new-instance p3, Lx2;

    .line 82
    .line 83
    invoke-direct {p3, p0}, Lx2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;)V

    .line 84
    .line 85
    .line 86
    iput-object p3, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->w:Ljava/lang/Runnable;

    .line 87
    .line 88
    new-instance p3, Ly2;

    .line 89
    .line 90
    invoke-direct {p3}, Ly2;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-static {p3}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iput-object p3, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->y:Lid8;

    .line 98
    .line 99
    iput-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->z:Ljava/lang/String;

    .line 100
    .line 101
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4}, Lteam/opay/core/api/SessionRepository;->j()Landroidx/lifecycle/LiveData;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lteam/opay/core/api/Session;

    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    invoke-virtual {p1}, Lteam/opay/core/api/Session;->a()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_2

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_1

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    move-object p3, p2

    .line 139
    check-cast p3, Lteam/opay/core/api/GraphQL$Country;

    .line 140
    .line 141
    invoke-virtual {p3}, Lteam/opay/core/api/GraphQL$Country;->a()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    new-instance p4, Lteam/opay/core/settings/SettingsStorage;

    .line 146
    .line 147
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->i:Landroid/app/Application;

    .line 148
    .line 149
    invoke-direct {p4, v0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p4}, Lteam/opay/core/settings/SettingsStorage;->i()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p4

    .line 156
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-eqz p3, :cond_0

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_1
    const/4 p2, 0x0

    .line 164
    :goto_0
    check-cast p2, Lteam/opay/core/api/GraphQL$Country;

    .line 165
    .line 166
    if-eqz p2, :cond_2

    .line 167
    .line 168
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$Country;->d()J

    .line 169
    .line 170
    .line 171
    move-result-wide p1

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    .line 175
    invoke-virtual {p1, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 176
    .line 177
    .line 178
    move-result-wide p1

    .line 179
    :goto_1
    iput-wide p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->v:J

    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->L()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object p2, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->i:Landroid/app/Application;

    .line 186
    .line 187
    new-instance p3, Lz2;

    .line 188
    .line 189
    invoke-direct {p3, p0}, Lz2;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2, p3}, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->F(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->I(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Q()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic D(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->a0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->P(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lxk8;->a:Lxk8;

    .line 7
    .line 8
    new-instance v1, La3;

    .line 9
    .line 10
    invoke-direct {v1, p1}, La3;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3, v1, v2, v3}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel$a;->a:[I

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget v0, v1, v0

    .line 40
    .line 41
    if-eq v0, v3, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v0, Lteam/opay/pay/kyc/base/ErrorMsg;

    .line 51
    .line 52
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v6, 0x4

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v5, 0x0

    .line 63
    move-object v2, v0

    .line 64
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/kyc/base/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->x(Lteam/opay/pay/kyc/base/ErrorMsg;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method

.method public static final P(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "message otp is "

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

.method public static final Q()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final a0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->i:Landroid/app/Application;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$string;->onboarding_otp_verification_timeout:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->Y(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic c0(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v8, p6

    .line 21
    invoke-virtual/range {v2 .. v8}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->b0(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->w:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-static {v0}, Lfke;->c(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final H(Lag8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1    # Lag8;
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
    move-object/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v14, p4

    .line 8
    .line 9
    const-string v2, "lifecycleOwner"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "refreshToken"

    .line 15
    .line 16
    move-object/from16 v3, p2

    .line 17
    .line 18
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "scene"

    .line 22
    .line 23
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "pageName"

    .line 27
    .line 28
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v15, Lteam/opay/pay/kyc/customer/FreshTokenVerifyRsp;

    .line 32
    .line 33
    invoke-static/range {p3 .. p3}, Lg4d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->u:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->s:Ljava/lang/Long;

    .line 40
    .line 41
    iget-object v10, v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->t:Ljava/lang/String;

    .line 42
    .line 43
    const/16 v11, 0x60

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    move-object v2, v15

    .line 49
    move-object/from16 v4, p3

    .line 50
    .line 51
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/kyc/customer/FreshTokenVerifyRsp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->k:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 55
    .line 56
    invoke-virtual {v2, v15}, Lteam/opay/pay/kyc/customer/KycRepository;->f(Lteam/opay/pay/kyc/customer/FreshTokenVerifyRsp;)Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lb3;

    .line 61
    .line 62
    invoke-direct {v3, v0, v13, v14}, Lb3;-><init>(Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v1, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/KycTaskVerifyRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->q:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->y:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->r:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "+234"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->r:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->j:Lteam/opay/core/settings/SettingsStorage;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->r:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->M()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->j:Lteam/opay/core/settings/SettingsStorage;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lh6e;->b(Ljava/lang/String;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lh6e;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final R(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "phone"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lvk1;->a:Lvk1;

    .line 7
    .line 8
    invoke-virtual {p1}, Lvk1;->e()Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 9
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    const-string v0, "sendSource"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->m:Lteam/opay/core/auth/AuthRepository;

    .line 17
    .line 18
    sget-object v5, Lteam/opay/pay/account/otp/OtpChannel;->SMS:Lteam/opay/pay/account/otp/OtpChannel;

    .line 19
    .line 20
    const/16 v7, 0x10

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, p3

    .line 27
    invoke-static/range {v1 .. v8}, Lteam/opay/core/auth/AuthRepository;->e(Lteam/opay/core/auth/AuthRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/Boolean;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public final T(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->r:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->z:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final X(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->s:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->x:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->w:Ljava/lang/Runnable;

    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->h:Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;->a()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {p1, v0, v1}, Lfke;->i(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->w:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-static {p1}, Lfke;->c(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final Z()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/otp/TimeInterval;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->l:Lteam/opay/pay/account/otp/OtpFetchRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/account/otp/OtpFetchRepository;->g()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 8
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/Country;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/otp/OtpChannel;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/String;",
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
    const-string v0, "otp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "country"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "scene"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/kyc/base/AbstractKycVerifyOtpViewModel;->m:Lteam/opay/core/auth/AuthRepository;

    .line 22
    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, p4

    .line 27
    move-object v6, p5

    .line 28
    move-object v7, p6

    .line 29
    invoke-virtual/range {v1 .. v7}, Lteam/opay/core/auth/AuthRepository;->g(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;Lteam/opay/pay/account/otp/OtpChannel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
