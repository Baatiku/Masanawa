.class public final Lteam/opay/business/push/core/LoginListener;
.super Ljava/lang/Object;
.source "LoginListener.kt"

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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lteam/opay/business/push/core/LoginListener;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "<init>",
        "()V",
        "onCancel",
        "",
        "onSuccess",
        "business-push-core_release"
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
.method public onCancel()V
    .locals 4

    .line 1
    sget-object v0, Lik8;->c:Lik8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "push-core -> logout"

    .line 6
    .line 7
    invoke-static {v0, v3, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lo6c;->b:Lo6c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lo6c;->j()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lik8;->c:Lik8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "push-core -> login success"

    .line 6
    .line 7
    invoke-static {v0, v3, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->m(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
