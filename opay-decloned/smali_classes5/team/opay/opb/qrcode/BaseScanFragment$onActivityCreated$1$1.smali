.class public final Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;
.super Ljava/lang/Object;
.source "BaseScanFragment.kt"

# interfaces
.implements La87;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/BaseScanFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1",
        "La87;",
        "",
        "e",
        "",
        "a",
        "(Ljava/lang/Throwable;)V",
        "opay-qrcode_release"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/BaseScanFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;->a:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;->a:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v4, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;->a:Lteam/opay/opb/qrcode/BaseScanFragment;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v4, v0, p1, v3}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1$onCameraOpenFailed$1;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Throwable;Ljr2;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 22
    .line 23
    .line 24
    return-void
.end method
