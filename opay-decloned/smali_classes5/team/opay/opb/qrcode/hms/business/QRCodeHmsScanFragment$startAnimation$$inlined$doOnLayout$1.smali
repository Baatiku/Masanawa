.class public final Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
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
.field public final synthetic a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->X()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lp9c;->e:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->e()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
