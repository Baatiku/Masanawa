.class public final Lteam/opay/pay/home/PinAppLockActivity;
.super Lteam/opay/pay/home/Hilt_PinAppLockActivity;
.source "PinAppLockActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0013\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/home/PinAppLockActivity;",
        "Lteam/opay/pay/android/NoBindingActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "",
        "g",
        "Z",
        "allowContinue",
        "h",
        "getSkipAppLock",
        "()Z",
        "setSkipAppLock",
        "(Z)V",
        "skipAppLock",
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
.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_pin_app_lock:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/Hilt_PinAppLockActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/home/PinAppLockActivity;->h:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getSkipAppLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/PinAppLockActivity;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/PinAppLockActivity;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/home/Hilt_PinAppLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v0, Lteam/opay/pay/android/AppLock;->d:Lteam/opay/pay/android/AppLock$Companion;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/android/AppLock$Companion;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lteam/opay/pay/home/PinAppLockActivity;->g:Z

    .line 26
    .line 27
    new-instance p1, Lteam/opay/pay/pin/PinAppLockFragment;

    .line 28
    .line 29
    invoke-direct {p1}, Lteam/opay/pay/pin/PinAppLockFragment;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lteam/opay/pay/android/AppLock$Companion;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-boolean v4, p0, Lteam/opay/pay/home/PinAppLockActivity;->g:Z

    .line 42
    .line 43
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lteam/opay/pay/android/AppLock$Companion;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v0}, Lteam/opay/pay/android/AppLock$Companion;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v5, 0x1

    .line 59
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    sget v0, Lteam/opay/pay/R$id;->content_fragment:I

    .line 70
    .line 71
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lteam/opay/pay/home/AppLockStorage;

    .line 75
    .line 76
    invoke-direct {p1}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Lteam/opay/pay/home/AppLockStorage;->f(Z)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lteam/opay/pay/home/AppLockStorage;

    .line 83
    .line 84
    invoke-direct {p1}, Lteam/opay/pay/home/AppLockStorage;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Lteam/opay/pay/home/AppLockStorage;->g(Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public setSkipAppLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/PinAppLockActivity;->h:Z

    .line 2
    .line 3
    return-void
.end method
