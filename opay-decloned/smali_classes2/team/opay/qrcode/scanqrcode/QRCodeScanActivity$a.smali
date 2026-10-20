.class public final Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.kt"

# interfaces
.implements Lz77;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/qrcode/scanqrcode/QRCodeScanActivity$a",
        "Lz77;",
        "",
        "b",
        "()V",
        "qrcode_release"
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
.field public final synthetic a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;


# direct methods
.method public constructor <init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;->g(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;->f(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;->e(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_camera_failed:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 13
    .line 14
    new-instance v2, Lq8c;

    .line 15
    .line 16
    invoke-direct {v2}, Lq8c;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lr8c;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lr8c;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final f(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final g(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$a;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 2
    .line 3
    new-instance v1, Lp8c;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lp8c;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    invoke-static {v3, v4, v1, v0, v2}, Lfke;->f(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
