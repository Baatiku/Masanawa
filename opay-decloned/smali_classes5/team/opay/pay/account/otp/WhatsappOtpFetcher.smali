.class public final Lteam/opay/pay/account/otp/WhatsappOtpFetcher;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WhatsappOtpFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/otp/WhatsappOtpFetcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001d\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/account/otp/WhatsappOtpFetcher;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "<init>",
        "(Landroid/app/Application;)V",
        "Landroid/content/Context;",
        "context",
        "",
        "D",
        "(Landroid/content/Context;)V",
        "onCleared",
        "()V",
        "b",
        "Landroid/app/Application;",
        "getApp",
        "()Landroid/app/Application;",
        "Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;",
        "c",
        "Lid8;",
        "z",
        "()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;",
        "otpBroadcastReceiver",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "d",
        "Landroidx/lifecycle/MutableLiveData;",
        "_otp",
        "Landroidx/lifecycle/LiveData;",
        "e",
        "Landroidx/lifecycle/LiveData;",
        "y",
        "()Landroidx/lifecycle/LiveData;",
        "otp",
        "f",
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
.field public static final f:Lteam/opay/pay/account/otp/WhatsappOtpFetcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Landroidx/lifecycle/MutableLiveData;
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

.field public final e:Landroidx/lifecycle/LiveData;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->f:Lteam/opay/pay/account/otp/WhatsappOtpFetcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->b:Landroid/app/Application;

    .line 10
    .line 11
    new-instance v0, Lw7g;

    .line 12
    .line 13
    invoke-direct {v0}, Lw7g;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->c:Lid8;

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->z()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lx7g;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lx7g;-><init>(Lteam/opay/pay/account/otp/WhatsappOtpFetcher;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;->f(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lxk8;->a:Lxk8;

    .line 35
    .line 36
    new-instance v0, Ly7g;

    .line 37
    .line 38
    invoke-direct {v0}, Ly7g;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {p1, v2, v0, v1, v2}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->d:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->e:Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    return-void
.end method

.method private static final A(Ljava/lang/String;)Ljava/lang/Object;
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

.method public static final B()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "onCleared -> unregisterContentObserver"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final C()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic r(Lteam/opay/pay/account/otp/WhatsappOtpFetcher;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->w(Lteam/opay/pay/account/otp/WhatsappOtpFetcher;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->B()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->A(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->x()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->C()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final w(Lteam/opay/pay/account/otp/WhatsappOtpFetcher;Ljava/lang/String;)Lkotlin/Unit;
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
    new-instance v1, La8g;

    .line 9
    .line 10
    invoke-direct {v1, p1}, La8g;-><init>(Ljava/lang/String;)V

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
    iget-object p0, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->d:Landroidx/lifecycle/MutableLiveData;

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

.method private static final x()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "init -> otpBroadcastReceiver"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final D(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->z()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;->i(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCleared()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    sget-object v0, Lxk8;->a:Lxk8;

    .line 7
    .line 8
    new-instance v1, Lz7g;

    .line 9
    .line 10
    invoke-direct {v1}, Lz7g;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v3, v1, v2, v3}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->z()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->b:Landroid/app/Application;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;->j(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final y()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->e:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/otp/WhatsappOtpFetcher;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/onboarding/tabs/WhatsappOtpReceiver;

    .line 8
    .line 9
    return-object v0
.end method
