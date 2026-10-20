.class public final Lteam/opay/pay/home/AuthErrorDelegate;
.super Ljava/lang/Object;
.source "TickOutMainActivityDelegate.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/IAuthError;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/login/IAuthError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/home/AuthErrorDelegate;",
        "Lteam/opay/swarmfoundation/login/IAuthError;",
        "<init>",
        "()V",
        "onAuthError",
        "",
        "type",
        "Lteam/opay/swarmfoundation/login/AuthError;",
        "errorMsg",
        "",
        "targetUrl",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAuthError(Lteam/opay/swarmfoundation/login/AuthError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lteam/opay/swarmfoundation/login/AuthError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMsg"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ld00;->a:Ld00;

    .line 12
    .line 13
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    sget-object v1, Lql8;->a:Lql8;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lql8;->h(Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v2, Lteam/opay/swarmfoundation/login/AuthError;->TOKEN_TIMEOUT:Lteam/opay/swarmfoundation/login/AuthError;

    .line 29
    .line 30
    if-ne p1, v2, :cond_1

    .line 31
    .line 32
    new-instance p1, Lteam/opay/core/android/arch/ApiError;

    .line 33
    .line 34
    sget-object v2, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 35
    .line 36
    invoke-direct {p1, v2, p2}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Lteam/opay/core/android/arch/ApiError;

    .line 41
    .line 42
    sget-object v2, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 43
    .line 44
    invoke-direct {p1, v2, p2}, Lteam/opay/core/android/arch/ApiError;-><init>(Lteam/opay/core/android/arch/ErrorType;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    if-eqz p3, :cond_3

    .line 48
    .line 49
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v1, p3}, Lql8;->p(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    invoke-static {v0, p1}, Loj2;->b(Landroid/app/Activity;Lteam/opay/core/android/arch/ApiError;)V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-void
.end method
