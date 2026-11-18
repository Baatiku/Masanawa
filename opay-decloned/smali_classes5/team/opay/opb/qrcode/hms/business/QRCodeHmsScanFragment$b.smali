.class public final Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;
.super Ljava/lang/Object;
.source "QRCodeHmsScanFragment.kt"

# interfaces
.implements Lvka;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J#\u0010\t\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ#\u0010\u000f\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\nJ1\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u00122\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004\u00a8\u0006\u0018"
    }
    d2 = {
        "team/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b",
        "Lvka;",
        "",
        "d",
        "()V",
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
        "",
        "isDecodeLocalBitmap",
        "",
        "Lcom/huawei/hms/ml/scan/HmsScan;",
        "result",
        "h",
        "(ZLjava/util/List;Ljava/lang/String;)V",
        "g",
        "opay-qrcode-hms_release"
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->m(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->k0()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->p(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->x()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->o(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->k0()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public f(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 8
    .line 9
    const-string v1, "httpViewGroup"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->l(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->k0()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->j()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public h(ZLjava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lsk8;->c:Lsk8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "QR Code -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/huawei/hms/ml/scan/HmsScan;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v3

    .line 42
    :goto_0
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    :cond_1
    move-object v5, v1

    .line 47
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 48
    .line 49
    invoke-static {v1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v1, v1, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 54
    .line 55
    const-string v2, "httpViewGroup"

    .line 56
    .line 57
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lg0g;->d(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_4

    .line 70
    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/huawei/hms/ml/scan/HmsScan;

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getScanType()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    :cond_2
    sget-object p1, Lwx6;->a:Lwx6;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lwx6;->c(Ljava/lang/Integer;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {p1, v3}, Lwx6;->b(Ljava/lang/Integer;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 100
    .line 101
    invoke-static {p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1, v6, v7, p3}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-object v4, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 111
    .line 112
    const/4 v8, 0x1

    .line 113
    move-object v9, p3

    .line 114
    invoke-virtual/range {v4 .. v9}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0, p3}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;->a(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_1
    return-void
.end method
