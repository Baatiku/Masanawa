.class public final Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;
.super Landroid/view/animation/Animation;
.source "ScanRayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/opb/qrcode/hms/widget/ScanRayView$a",
        "Landroid/view/animation/Animation;",
        "",
        "interpolatedTime",
        "Landroid/view/animation/Transformation;",
        "t",
        "",
        "applyTransformation",
        "(FLandroid/view/animation/Transformation;)V",
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
.field public final synthetic a:I

.field public final synthetic b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;


# direct methods
.method public constructor <init>(ILteam/opay/opb/qrcode/hms/widget/ScanRayView;)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .line 1
    iget p2, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->a:I

    .line 2
    .line 3
    div-int/lit8 p2, p2, 0x2

    .line 4
    .line 5
    int-to-float p2, p2

    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->a:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 16
    .line 17
    invoke-static {v1}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->b(Lteam/opay/opb/qrcode/hms/widget/ScanRayView;)Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    sub-int/2addr v0, v1

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float v0, v0, p1

    .line 32
    .line 33
    add-float/2addr p2, v0

    .line 34
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 35
    .line 36
    invoke-static {v0}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->b(Lteam/opay/opb/qrcode/hms/widget/ScanRayView;)Landroid/widget/ImageView;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 43
    .line 44
    .line 45
    :cond_1
    float-to-double v0, p1

    .line 46
    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpl-double p2, v0, v2

    .line 52
    .line 53
    if-ltz p2, :cond_2

    .line 54
    .line 55
    iget-object p2, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 56
    .line 57
    invoke-static {p2}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->b(Lteam/opay/opb/qrcode/hms/widget/ScanRayView;)Landroid/widget/ImageView;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    int-to-float v0, v0

    .line 65
    sub-float/2addr v0, p1

    .line 66
    float-to-double v0, v0

    .line 67
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    div-double/2addr v0, v2

    .line 73
    double-to-float p1, v0

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/widget/ScanRayView$a;->b:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->b(Lteam/opay/opb/qrcode/hms/widget/ScanRayView;)Landroid/widget/ImageView;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    const/high16 p2, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    return-void
.end method
