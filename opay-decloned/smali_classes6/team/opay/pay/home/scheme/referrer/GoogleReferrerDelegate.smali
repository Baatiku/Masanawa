.class public final Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;
.super Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
.source "GoogleReferrerDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/frame/ApplicationDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;",
        "Lteam/opay/swarmfoundation/frame/ApplicationDelegate;",
        "<init>",
        "()V",
        "referrerClient",
        "Lcom/android/installreferrer/api/InstallReferrerClient;",
        "storage",
        "Landroid/content/SharedPreferences;",
        "KEY_REFERRER",
        "",
        "onCreate",
        "",
        "application",
        "Landroid/app/Application;",
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
.field private KEY_REFERRER:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private storage:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/envconfigapi/StorageBusiness;->SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 11
    .line 12
    const-string v2, "referrer"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->g(Lteam/opay/pay/envconfigapi/StorageBusiness;Ljava/lang/String;)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->storage:Landroid/content/SharedPreferences;

    .line 19
    .line 20
    const-string v0, "is_first_launcher"

    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->KEY_REFERRER:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public static final synthetic access$getKEY_REFERRER$p(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->KEY_REFERRER:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->storage:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 3
    .param p1    # Landroid/app/Application;
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
    invoke-super {p0, p1}, Lteam/opay/swarmfoundation/frame/ApplicationDelegate;->onCreate(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->storage:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->KEY_REFERRER:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    const-string p1, "referrerClient"

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :cond_0
    new-instance v0, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate$a;-><init>(Lteam/opay/pay/home/scheme/referrer/GoogleReferrerDelegate;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
