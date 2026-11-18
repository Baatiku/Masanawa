.class public final Lteam/opay/business/js/BusinessWebDelegate$b;
.super Ljava/lang/Object;
.source "BusinessWebDelegate.kt"

# interfaces
.implements Lq43;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/js/BusinessWebDelegate;->attach(Landroid/webkit/WebView;)V
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
        "team/opay/business/js/BusinessWebDelegate$b",
        "Lq43;",
        "Lag8;",
        "owner",
        "",
        "onDestroy",
        "(Lag8;)V",
        "business-js_release"
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
.field public final synthetic a:Lteam/opay/business/js/BusinessWebDelegate;


# direct methods
.method public constructor <init>(Lteam/opay/business/js/BusinessWebDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$b;->a:Lteam/opay/business/js/BusinessWebDelegate;

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
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$b;->a:Lteam/opay/business/js/BusinessWebDelegate;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getLoadingDialog$p(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/LoadingDialog;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$b;->a:Lteam/opay/business/js/BusinessWebDelegate;

    .line 22
    .line 23
    invoke-static {p1}, Lteam/opay/business/js/BusinessWebDelegate;->access$getLoadingDialog$p(Lteam/opay/business/js/BusinessWebDelegate;)Lteam/opay/business/js/LoadingDialog;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lteam/opay/business/js/BusinessWebDelegate$b;->a:Lteam/opay/business/js/BusinessWebDelegate;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p1, v0}, Lteam/opay/business/js/BusinessWebDelegate;->access$setAttached$p(Lteam/opay/business/js/BusinessWebDelegate;Z)V

    .line 36
    .line 37
    .line 38
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
