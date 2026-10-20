.class public final Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;
.super Ljava/lang/Object;
.source "GoogleReferrerDelegate.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->onCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "",
        "responseCode",
        "",
        "onInstallReferrerSetupFinished",
        "(I)V",
        "onInstallReferrerServiceDisconnected",
        "()V",
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
.field public final synthetic a:Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;->a:Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
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
    const-string v2, "google_referrer_install_disconnected"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;->a:Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->access$getStorage$p(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;->a:Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;

    .line 12
    .line 13
    invoke-static {v1}, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->access$getKEY_REFERRER$p(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object p1, Lx7b;->a:Lx7b;

    .line 35
    .line 36
    const-string v0, "google_referrer_install_no_supported"

    .line 37
    .line 38
    new-array v1, v2, [Lkotlin/Pair;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    const-string v0, "google_referrer_install_unavailable"

    .line 47
    .line 48
    new-array v1, v2, [Lkotlin/Pair;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    sget-object p1, Lx7b;->a:Lx7b;

    .line 55
    .line 56
    const-string v0, "google_referrer_install_success"

    .line 57
    .line 58
    new-array v1, v2, [Lkotlin/Pair;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method
