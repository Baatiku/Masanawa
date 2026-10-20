.class public final Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;
.super Ljava/lang/Object;
.source "QRCodeScanFragment.kt"

# interfaces
.implements Lpla;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J#\u0010\n\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\rJ#\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ5\u0010\u0015\u001a\u00020\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "team/opay/opb/qrcode/scan/QRCodeScanFragment$b",
        "Lpla;",
        "",
        "d",
        "()V",
        "b",
        "",
        "getBitmapTime",
        "Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;",
        "info",
        "e",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V",
        "c",
        "(Ljava/lang/String;)V",
        "decodeTime",
        "a",
        "f",
        "code",
        "barcodeFormat",
        "",
        "isDecodeLocalBitmap",
        "g",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
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
.field public final synthetic a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;


# direct methods
.method public constructor <init>(Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;->a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;->a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->L0(Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;)Llac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Llac;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string v0, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;->a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->L0(Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;)Llac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Llac;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string p2, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public f(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;->a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->L0(Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;)Llac;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Llac;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string p2, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment$b;->a:Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;

    .line 4
    .line 5
    invoke-static {p1}, Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;->L0(Lteam/opay/opb/qrcode/scan/QRCodeScanFragment;)Llac;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p1, p1, Llac;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 10
    .line 11
    const-string p2, "httpViewGroup"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
