.class public final Lteam/opay/core/android/arch/NewPayLogoutCallbackImpl;
.super Ljava/lang/Object;
.source "CancellableNetworkAction.kt"

# interfaces
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/login/ILoginListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/core/android/arch/NewPayLogoutCallbackImpl;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "<init>",
        "()V",
        "onCancel",
        "",
        "onSuccess",
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

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lteam/opay/core/android/arch/NewPayLogoutCallbackImpl;->onCancel$lambda$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCancel$lambda$0()V
    .locals 1

    .line 1
    sget-object v0, Lqk9;->a:Lqk9;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqk9;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/odialog/DialogQueueUtils;->a:Lteam/opay/odialog/DialogQueueUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/odialog/DialogQueueUtils;->b()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lss9;

    .line 16
    .line 17
    invoke-direct {v1}, Lss9;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
