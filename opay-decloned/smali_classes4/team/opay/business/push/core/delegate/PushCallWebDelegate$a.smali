.class public final Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;
.super Ljava/lang/Object;
.source "PushCallWebDelegate.kt"

# interfaces
.implements Lq43;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->attach(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/business/push/core/delegate/PushCallWebDelegate$a",
        "Lq43;",
        "Lag8;",
        "owner",
        "",
        "onDestroy",
        "(Lag8;)V",
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


# instance fields
.field public final synthetic a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic m(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->a(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDestroy(Lag8;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lp5c;->a:Lp5c;

    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 9
    .line 10
    invoke-static {v0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->access$getListener$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;)Lteam/opay/business/push/core/delegate/PushCallWebDelegate$b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lp5c;->l(Lm97;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lteam/opay/business/push/core/delegate/PushCallWebDelegate$a;->a:Lteam/opay/business/push/core/delegate/PushCallWebDelegate;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {p1, v0}, Lteam/opay/business/push/core/delegate/PushCallWebDelegate;->access$setAttached$p(Lteam/opay/business/push/core/delegate/PushCallWebDelegate;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public synthetic onPause(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->c(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->d(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStart(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->e(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onStop(Lag8;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp43;->f(Lq43;Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
