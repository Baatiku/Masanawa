.class public final Lteam/opay/pay/pin/PinResetViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "PinResetViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001d\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00190!8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R#\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\'0\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0015\u001a\u0004\u0008)\u0010\u0017\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/pay/pin/PinResetViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/auth/AuthRepository;",
        "authRepository",
        "Lteam/opay/pay/favorites/FavoritesRepository;",
        "favoritesRepository",
        "Lteam/opay/core/api/Features;",
        "features",
        "Lteam/opay/core/api/SessionRepository;",
        "sessionRepository",
        "<init>",
        "(Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/Features;Lteam/opay/core/api/SessionRepository;)V",
        "b",
        "Lteam/opay/core/auth/AuthRepository;",
        "c",
        "Lteam/opay/pay/favorites/FavoritesRepository;",
        "d",
        "Lteam/opay/core/api/SessionRepository;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/api/Session;",
        "e",
        "Landroidx/lifecycle/LiveData;",
        "getSession",
        "()Landroidx/lifecycle/LiveData;",
        "session",
        "",
        "f",
        "Ljava/lang/String;",
        "getOtpCode",
        "()Ljava/lang/String;",
        "setOtpCode",
        "(Ljava/lang/String;)V",
        "otpCode",
        "Landroidx/lifecycle/MutableLiveData;",
        "g",
        "Landroidx/lifecycle/MutableLiveData;",
        "getOtpCodeStatus",
        "()Landroidx/lifecycle/MutableLiveData;",
        "otpCodeStatus",
        "Lteam/opay/core/android/arch/Resource;",
        "h",
        "getSetSession",
        "setSession",
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
.field public final b:Lteam/opay/core/auth/AuthRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/favorites/FavoritesRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/api/Session;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
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

.field public final h:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/Session;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/auth/AuthRepository;Lteam/opay/pay/favorites/FavoritesRepository;Lteam/opay/core/api/Features;Lteam/opay/core/api/SessionRepository;)V
    .locals 1
    .param p1    # Lteam/opay/core/auth/AuthRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/favorites/FavoritesRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "authRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "favoritesRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "features"

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
    invoke-direct {p0, p3}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/pin/PinResetViewModel;->b:Lteam/opay/core/auth/AuthRepository;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/pin/PinResetViewModel;->c:Lteam/opay/pay/favorites/FavoritesRepository;

    .line 27
    .line 28
    iput-object p4, p0, Lteam/opay/pay/pin/PinResetViewModel;->d:Lteam/opay/core/api/SessionRepository;

    .line 29
    .line 30
    invoke-virtual {p4}, Lteam/opay/core/api/SessionRepository;->j()Landroidx/lifecycle/LiveData;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/pin/PinResetViewModel;->e:Landroidx/lifecycle/LiveData;

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    iput-object p1, p0, Lteam/opay/pay/pin/PinResetViewModel;->f:Ljava/lang/String;

    .line 39
    .line 40
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lteam/opay/pay/pin/PinResetViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-static {p4, p3, p1, p2}, Lteam/opay/core/api/SessionRepository;->l(Lteam/opay/core/api/SessionRepository;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lteam/opay/pay/pin/PinResetViewModel;->h:Landroidx/lifecycle/LiveData;

    .line 55
    .line 56
    return-void
.end method
