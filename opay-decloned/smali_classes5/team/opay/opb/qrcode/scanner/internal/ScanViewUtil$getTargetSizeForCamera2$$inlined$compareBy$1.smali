.class public final Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->s([Landroid/util/Size;)Landroid/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;->a:D

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/util/Size;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-double v0, v0

    .line 28
    int-to-double v2, p1

    .line 29
    div-double/2addr v0, v2

    .line 30
    iget-wide v2, p0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;->a:D

    .line 31
    .line 32
    sub-double/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p2, Landroid/util/Size;

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    int-to-double v0, v0

    .line 68
    int-to-double v2, p2

    .line 69
    div-double/2addr v0, v2

    .line 70
    iget-wide v2, p0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;->a:D

    .line 71
    .line 72
    sub-double/2addr v0, v2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p1, p2}, Lkotlin/comparisons/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1
.end method
