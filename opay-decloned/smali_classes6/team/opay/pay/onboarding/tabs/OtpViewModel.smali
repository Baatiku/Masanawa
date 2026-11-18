.class public final Lteam/opay/pay/onboarding/tabs/OtpViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "OtpViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001\'B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR*\u0010%\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u00168\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/onboarding/tabs/OtpViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/Features;",
        "features",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "<init>",
        "(Lteam/opay/core/api/Features;Landroid/app/Application;Lteam/opay/core/api/SessionRepository;)V",
        "",
        "t",
        "()V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/api/SessionRepository;",
        "",
        "d",
        "J",
        "sendWhatsappTime",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "_verifyingCodeLiveData",
        "Ljava/lang/Runnable;",
        "f",
        "Ljava/lang/Runnable;",
        "timeoutRunnable",
        "value",
        "g",
        "Z",
        "u",
        "()Z",
        "v",
        "(Z)V",
        "verifyingCode",
        "h",
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
.field public static final h:Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:J


# instance fields
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:J

.field public final e:Landroidx/lifecycle/MutableLiveData;
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

.field public final f:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->h:Lteam/opay/pay/onboarding/tabs/OtpViewModel$Companion;

    .line 8
    .line 9
    sget-object v0, Lteam/opay/pay/account/otp/OtpConfigTBTest;->Companion:Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/otp/OtpConfigTBTest$Companion;->b()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sput-wide v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->i:J

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/api/Features;Landroid/app/Application;Lteam/opay/core/api/SessionRepository;)V
    .locals 4
    .param p1    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "features"

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
    const-string v0, "sessionRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->b:Landroid/app/Application;

    .line 20
    .line 21
    iput-object p3, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->c:Lteam/opay/core/api/SessionRepository;

    .line 22
    .line 23
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    const-wide/16 v0, 0x14

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->d:J

    .line 32
    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    new-instance p2, Lc3b;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lc3b;-><init>(Lteam/opay/pay/onboarding/tabs/OtpViewModel;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->f:Ljava/lang/Runnable;

    .line 46
    .line 47
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Lteam/opay/core/api/SessionRepository;->j()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lteam/opay/core/api/Session;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/core/api/Session;->a()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_1

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    move-object p3, p2

    .line 85
    check-cast p3, Lteam/opay/core/api/GraphQL$Country;

    .line 86
    .line 87
    invoke-virtual {p3}, Lteam/opay/core/api/GraphQL$Country;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    new-instance v2, Lteam/opay/core/settings/SettingsStorage;

    .line 92
    .line 93
    iget-object v3, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->b:Landroid/app/Application;

    .line 94
    .line 95
    invoke-direct {v2, v3}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Lteam/opay/core/settings/SettingsStorage;->i()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 p2, 0x0

    .line 110
    :goto_0
    check-cast p2, Lteam/opay/core/api/GraphQL$Country;

    .line 111
    .line 112
    if-eqz p2, :cond_2

    .line 113
    .line 114
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$Country;->d()J

    .line 115
    .line 116
    .line 117
    move-result-wide p1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 122
    .line 123
    .line 124
    move-result-wide p1

    .line 125
    :goto_1
    iput-wide p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->d:J

    .line 126
    .line 127
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/onboarding/tabs/OtpViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->w(Lteam/opay/pay/onboarding/tabs/OtpViewModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final w(Lteam/opay/pay/onboarding/tabs/OtpViewModel;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->b:Landroid/app/Application;

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
    invoke-virtual {p0, v0}, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->v(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->f:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-static {v0}, Lfke;->c(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->g:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->e:Landroidx/lifecycle/MutableLiveData;

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
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->f:Ljava/lang/Runnable;

    .line 15
    .line 16
    sget-wide v0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->i:J

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lfke;->i(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/onboarding/tabs/OtpViewModel;->f:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-static {p1}, Lfke;->c(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
