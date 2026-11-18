.class public final Lteam/opay/pay/home/TickOutMainActivityDelegate;
.super Lteam/opay/pay/home/MainActivityDelegate;
.source "TickOutMainActivityDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/home/MainActivityDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/TickOutMainActivityDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0012\u0010\r\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u0007H\u0016J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016J\u0012\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\u0012\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\tH\u0016J\u001c\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0016\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0007H\u0016J\u0008\u0010\u001a\u001a\u00020\u0007H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/home/TickOutMainActivityDelegate;",
        "Lteam/opay/pay/home/MainActivityDelegate;",
        "<init>",
        "()V",
        "mainActivity",
        "Lteam/opay/pay/home/MainActivity;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "context",
        "Landroid/app/Activity;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onIntent",
        "onPause",
        "onRestart",
        "onRestoreInstanceState",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "outPersistentState",
        "Landroid/os/PersistableBundle;",
        "onStart",
        "onStop",
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
.field public static final Companion:Lteam/opay/pay/home/TickOutMainActivityDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TOKEN_EXPIRED_PARAM:Ljava/lang/String; = "token_expired_param"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_PHONE_PARAM:Ljava/lang/String; = "user_phone_param"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mainActivity:Lteam/opay/pay/home/MainActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/TickOutMainActivityDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/TickOutMainActivityDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->Companion:Lteam/opay/pay/home/TickOutMainActivityDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "token_expired_param"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lteam/opay/core/android/arch/ApiError;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v1, v0

    .line 22
    :goto_1
    sget-object v2, Lteam/opay/core/android/arch/ErrorType;->UNAUTHORIZED:Lteam/opay/core/android/arch/ErrorType;

    .line 23
    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lteam/opay/core/android/arch/ApiError;->getType()Lteam/opay/core/android/arch/ErrorType;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    sget-object v1, Lteam/opay/core/android/arch/ErrorType;->TOKEN_TIMEOUT:Lteam/opay/core/android/arch/ErrorType;

    .line 33
    .line 34
    if-ne v0, v1, :cond_7

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v0, v1, :cond_5

    .line 57
    .line 58
    :goto_2
    return-void

    .line 59
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/MainActivity;->switchTab(Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    sget-object v1, Lteam/opay/pay/home/TickOutDialogFragment;->m:Lteam/opay/pay/home/TickOutDialogFragment$Companion;

    .line 73
    .line 74
    invoke-virtual {v1, p1}, Lteam/opay/pay/home/TickOutDialogFragment$Companion;->a(Lteam/opay/core/android/arch/ApiError;)Lteam/opay/pay/home/TickOutDialogFragment;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 79
    .line 80
    .line 81
    :cond_7
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p2, Lteam/opay/pay/home/MainActivity;

    iput-object p2, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/pay/home/TickOutMainActivityDelegate;->onIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/pay/home/TickOutMainActivityDelegate;->mainActivity:Lteam/opay/pay/home/MainActivity;

    .line 3
    .line 4
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/home/TickOutMainActivityDelegate;->onIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    return-void
.end method
