.class public final Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;
.super Ljava/lang/Object;
.source "Camera1Controller.kt"

# interfaces
.implements Lxka;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->P([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "team/opay/opb/qrcode/scanner/controller/Camera1Controller$a",
        "Lxka;",
        "",
        "zoomValue",
        "",
        "b",
        "(D)V",
        "Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;",
        "decodeResult",
        "a",
        "(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V",
        "opay-qrcode-scanner_release"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;)V
    .locals 1

    .line 1
    const-string v0, "decodeResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->u()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->y()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->j()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public b(D)V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->u()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller$a;->a:Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;

    .line 23
    .line 24
    invoke-static {v0}, Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;->N(Lteam/opay/opb/qrcode/scanner/controller/Camera1Controller;)Lteam/opay/opb/qrcode/scanner/controller/Camera1ZoomController;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    double-to-float v3, p1

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->N(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method
