.class public final Lteam/opay/pay/account/otp/OtpFetcher;
.super Landroidx/lifecycle/AndroidViewModel;
.source "OtpFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/otp/OtpFetcher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0007\u0018\u0000 .2\u00020\u0001:\u0001/B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000b0\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001b\u0010$\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020&0%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001d\u0010-\u001a\u0008\u0012\u0004\u0012\u00020&0\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010\u0011\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/pay/account/otp/OtpFetcher;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/account/otp/OtpFetchRepository;",
        "repository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/account/otp/OtpFetchRepository;)V",
        "Lteam/opay/pay/account/verify/QueryOtpRequest;",
        "body",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/account/otp/OtpInfo;",
        "C",
        "(Lteam/opay/pay/account/verify/QueryOtpRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/account/otp/TimeInterval;",
        "F",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "onCleared",
        "()V",
        "b",
        "Landroid/app/Application;",
        "getApp",
        "()Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/account/otp/OtpFetchRepository;",
        "Lev;",
        "d",
        "Lev;",
        "api",
        "Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;",
        "e",
        "Lid8;",
        "A",
        "()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;",
        "otpBroadcastReceiver",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "_otp",
        "g",
        "Landroidx/lifecycle/LiveData;",
        "z",
        "otp",
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
.field public static final h:Lteam/opay/pay/account/otp/OtpFetcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/account/otp/OtpFetchRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lev;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroidx/lifecycle/MutableLiveData;
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

.field public final g:Landroidx/lifecycle/LiveData;
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
    new-instance v0, Lteam/opay/pay/account/otp/OtpFetcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/otp/OtpFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/otp/OtpFetcher;->h:Lteam/opay/pay/account/otp/OtpFetcher$Companion;

    .line 8
    .line 9
    const-string v0, "(\\d{6})"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lteam/opay/pay/account/otp/OtpFetcher;->i:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/account/otp/OtpFetchRepository;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/account/otp/OtpFetchRepository;
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
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/account/otp/OtpFetcher;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/account/otp/OtpFetcher;->c:Lteam/opay/pay/account/otp/OtpFetchRepository;

    .line 17
    .line 18
    sget-object p2, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 19
    .line 20
    const-class v0, Lev;

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Lev;

    .line 27
    .line 28
    iput-object p2, p0, Lteam/opay/pay/account/otp/OtpFetcher;->d:Lev;

    .line 29
    .line 30
    new-instance p2, Li2b;

    .line 31
    .line 32
    invoke-direct {p2}, Li2b;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lteam/opay/pay/account/otp/OtpFetcher;->e:Lid8;

    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OtpFetcher;->A()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v0, Lj2b;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lj2b;-><init>(Lteam/opay/pay/account/otp/OtpFetcher;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1, v0}, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lxk8;->a:Lxk8;

    .line 54
    .line 55
    new-instance p2, Lk2b;

    .line 56
    .line 57
    invoke-direct {p2}, Lk2b;-><init>()V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {p1, v1, p2, v0, v1}, Lxk8;->l(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/account/otp/OtpFetcher;->f:Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    iput-object p1, p0, Lteam/opay/pay/account/otp/OtpFetcher;->g:Landroidx/lifecycle/LiveData;

    .line 73
    .line 74
    return-void
.end method

.method public static final B(Ljava/lang/String;)Ljava/lang/Object;
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

.method public static final D()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "onCleared -> unregisterContentObserver"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final E()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
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

.method public static synthetic r(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/otp/OtpFetcher;->B(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/otp/OtpFetcher;->E()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Lteam/opay/pay/account/otp/OtpFetcher;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/otp/OtpFetcher;->w(Lteam/opay/pay/account/otp/OtpFetcher;Ljava/lang/String;)Lkotlin/Unit;

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
    invoke-static {}, Lteam/opay/pay/account/otp/OtpFetcher;->x()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic v()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/otp/OtpFetcher;->D()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final w(Lteam/opay/pay/account/otp/OtpFetcher;Ljava/lang/String;)Lkotlin/Unit;
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
    new-instance v1, Ll2b;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ll2b;-><init>(Ljava/lang/String;)V

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
    iget-object p0, p0, Lteam/opay/pay/account/otp/OtpFetcher;->f:Landroidx/lifecycle/MutableLiveData;

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

.method public static final x()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "init -> otpBroadcastReceiver"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic y()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/otp/OtpFetcher;->i:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final A()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/otp/OtpFetcher;->e:Lid8;

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

.method public final C(Lteam/opay/pay/account/verify/QueryOtpRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/pay/account/verify/QueryOtpRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/account/verify/QueryOtpRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/account/otp/OtpInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/account/otp/OtpFetcher;->c:Lteam/opay/pay/account/otp/OtpFetchRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/account/otp/OtpFetchRepository;->f(Lteam/opay/pay/account/verify/QueryOtpRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final F()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/pay/account/otp/OtpFetcher;->c:Lteam/opay/pay/account/otp/OtpFetchRepository;

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
    new-instance v1, Lh2b;

    .line 9
    .line 10
    invoke-direct {v1}, Lh2b;-><init>()V

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
    invoke-virtual {p0}, Lteam/opay/pay/account/otp/OtpFetcher;->A()Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lteam/opay/pay/account/otp/OtpFetcher;->b:Landroid/app/Application;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lteam/opay/pay/onboarding/tabs/OtpBroadcastReceiver;->c(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final z()Landroidx/lifecycle/LiveData;
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
    iget-object v0, p0, Lteam/opay/pay/account/otp/OtpFetcher;->g:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method
