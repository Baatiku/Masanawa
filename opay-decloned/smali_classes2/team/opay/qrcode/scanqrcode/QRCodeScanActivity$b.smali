.class public final Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.kt"

# interfaces
.implements Lteam/opay/qrcode/android/view/ZXingScannerView$a;


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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/qrcode/scanqrcode/QRCodeScanActivity$b",
        "Lteam/opay/qrcode/android/view/ZXingScannerView$a;",
        "Lcom/google/zxing/Result;",
        "rawResult",
        "",
        "a",
        "(Lcom/google/zxing/Result;)V",
        "c",
        "()V",
        "b",
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
    iput-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic d(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->k(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->i(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->j(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->h(Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h(Landroid/content/DialogInterface;I)V
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

.method public static final i(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final j(Landroid/content/DialogInterface;I)V
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

.method public static final k(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    nop

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lteam/opay/qrcode/Router;->Companion:Lteam/opay/qrcode/Router$Companion;

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v2, "getText(...)"

    .line 43
    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lteam/opay/qrcode/Router$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 56
    .line 57
    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_not_supported:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_not_supported_content:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget v0, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 73
    .line 74
    new-instance v1, Lu8c;

    .line 75
    .line 76
    invoke-direct {v1}, Lu8c;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 88
    .line 89
    new-instance v1, Lv8c;

    .line 90
    .line 91
    invoke-direct {v1, v0}, Lv8c;-><init>(Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    iget-object p1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 2
    .line 3
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_file_not_found:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity$b;->a:Lteam/opay/qrcode/scanqrcode/QRCodeScanActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_not_found:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lteam/opay/qrcode/R$string;->qrcode_sure:I

    .line 15
    .line 16
    new-instance v2, Ls8c;

    .line 17
    .line 18
    invoke-direct {v2}, Ls8c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lt8c;

    .line 30
    .line 31
    invoke-direct {v1}, Lt8c;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
