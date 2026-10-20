.class public final Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;
.super Ljava/lang/Object;
.source "ScanViewUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0014\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J;\u0010\u001f\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J;\u0010#\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010!2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007\u00a2\u0006\u0004\u0008#\u0010$J;\u0010\'\u001a\u0004\u0018\u00010\u001a2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\r\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008*\u0010\u0003J\u001f\u0010-\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001f\u0010/\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008/\u00100J/\u00101\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00081\u00102J/\u00107\u001a\u0002062\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u0006\u0010\u001c\u001a\u0002032\u0006\u0010\u001d\u001a\u000203H\u0002\u00a2\u0006\u0004\u00087\u00108J\'\u0010;\u001a\u00020\u00072\u0006\u00109\u001a\u0002032\u0006\u0010:\u001a\u0002062\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\'\u0010>\u001a\u00020\u00072\u0006\u0010=\u001a\u0002032\u0006\u0010:\u001a\u0002062\u0006\u0010\u001d\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008>\u0010<J3\u0010@\u001a\u0004\u0018\u00010\u001a2\u0008\u0010?\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0011\u0010C\u001a\u0004\u0018\u00010BH\u0002\u00a2\u0006\u0004\u0008C\u0010DR\u001b\u0010\u0011\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010F\u001a\u0004\u0008K\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;",
        "",
        "<init>",
        "()V",
        "Landroidx/camera/core/resolutionselector/ResolutionSelector;",
        "p",
        "()Landroidx/camera/core/resolutionselector/ResolutionSelector;",
        "",
        "width",
        "height",
        "Landroidx/camera/core/resolutionselector/AspectRatioStrategy;",
        "j",
        "(II)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;",
        "",
        "Landroid/util/Size;",
        "sizes",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "",
        "targetAspectRatio",
        "h",
        "([Landroid/util/Size;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;D)Landroid/util/Size;",
        "s",
        "([Landroid/util/Size;)Landroid/util/Size;",
        "Landroidx/camera/view/PreviewView;",
        "previewView",
        "Landroid/graphics/Rect;",
        "frameRect",
        "imageWidth",
        "imageHeight",
        "rotationDegrees",
        "n",
        "(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;III)Landroid/graphics/Rect;",
        "Landroid/view/View;",
        "rotationCount",
        "l",
        "(Landroid/view/View;Landroid/graphics/Rect;III)Landroid/graphics/Rect;",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "preview",
        "m",
        "(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/graphics/Rect;III)Landroid/graphics/Rect;",
        "",
        "x",
        "widthPixels",
        "heightPixels",
        "r",
        "(II)Landroid/util/Size;",
        "e",
        "(II)I",
        "t",
        "(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;II)Landroid/graphics/Rect;",
        "",
        "viewWidth",
        "viewHeight",
        "Landroid/graphics/RectF;",
        "f",
        "(FFFF)Landroid/graphics/RectF;",
        "viewX",
        "displayRect",
        "u",
        "(FLandroid/graphics/RectF;I)I",
        "viewY",
        "v",
        "sensorRect",
        "g",
        "(Landroid/graphics/Rect;III)Landroid/graphics/Rect;",
        "Landroidx/camera/core/CameraXConfig;",
        "k",
        "()Landroidx/camera/core/CameraXConfig;",
        "b",
        "Lid8;",
        "o",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "Landroid/content/Context;",
        "c",
        "i",
        "()Landroid/content/Context;",
        "appContext",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "d",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "hasSetCameraXConfig",
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


# static fields
.field public static final a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 7
    .line 8
    new-instance v0, Lb4d;

    .line 9
    .line 10
    invoke-direct {v0}, Lb4d;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->b:Lid8;

    .line 18
    .line 19
    new-instance v0, Lc4d;

    .line 20
    .line 21
    invoke-direct {v0}, Lc4d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->c:Lid8;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->w()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->q(Ljava/util/List;I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final q(Ljava/util/List;I)Ljava/util/List;
    .locals 6

    .line 1
    const-string p1, "supportedSizes"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v1, v0

    .line 26
    check-cast v1, Landroid/util/Size;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    mul-int v2, v2, v1

    .line 37
    .line 38
    int-to-long v1, v2

    .line 39
    const-wide/32 v3, 0x1fa400

    .line 40
    .line 41
    .line 42
    cmp-long v5, v1, v3

    .line 43
    .line 44
    if-gtz v5, :cond_0

    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object p1
.end method

.method public static final w()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    sget-object v0, Lk93;->a:Lk93;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk93;->h()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final e(II)I
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-double p1, p1

    .line 11
    div-double/2addr v0, p1

    .line 12
    const-wide p1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    sub-double p1, v0, p1

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    sub-double/2addr v0, v2

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    cmpg-double v2, p1, v0

    .line 34
    .line 35
    if-gtz v2, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    return p1
.end method

.method public final f(FFFF)Landroid/graphics/RectF;
    .locals 2

    .line 1
    div-float v0, p1, p3

    .line 2
    .line 3
    div-float v1, p2, p4

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-float p3, p3, v0

    .line 10
    .line 11
    mul-float p4, p4, v0

    .line 12
    .line 13
    sub-float/2addr p1, p3

    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    .line 16
    div-float/2addr p1, v0

    .line 17
    sub-float/2addr p2, p4

    .line 18
    div-float/2addr p2, v0

    .line 19
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    .line 21
    add-float/2addr p3, p1

    .line 22
    add-float/2addr p4, p2

    .line 23
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final g(Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    rem-int/lit8 p4, p4, 0x4

    .line 6
    .line 7
    if-eqz p4, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p4, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p4, v1, :cond_2

    .line 14
    .line 15
    const/4 p2, 0x3

    .line 16
    if-eq p4, p2, :cond_1

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    move-object p1, p2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    .line 26
    .line 27
    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    sub-int p4, p3, p4

    .line 30
    .line 31
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    sub-int/2addr p3, v2

    .line 36
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    invoke-direct {p2, p4, v1, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Rect;->sort()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    new-instance p4, Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    sub-int v1, p2, v1

    .line 50
    .line 51
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    sub-int v2, p3, v2

    .line 54
    .line 55
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    sub-int/2addr p2, v3

    .line 58
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    sub-int/2addr p3, p1

    .line 61
    invoke-direct {p4, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4}, Landroid/graphics/Rect;->sort()V

    .line 65
    .line 66
    .line 67
    move-object p1, p4

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    new-instance p3, Landroid/graphics/Rect;

    .line 70
    .line 71
    iget p4, p1, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    sub-int v1, p2, v1

    .line 76
    .line 77
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    .line 79
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 80
    .line 81
    sub-int/2addr p2, p1

    .line 82
    invoke-direct {p3, p4, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/graphics/Rect;->sort()V

    .line 86
    .line 87
    .line 88
    move-object p1, p3

    .line 89
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-lez p2, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-lez p2, :cond_5

    .line 100
    .line 101
    move-object v0, p1

    .line 102
    :cond_5
    return-object v0
.end method

.method public final h([Landroid/util/Size;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;D)Landroid/util/Size;
    .locals 1
    .param p1    # [Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sizes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "performance"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->s([Landroid/util/Size;)Landroid/util/Size;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Ltxb;->a:Ltxb;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, p4}, Ltxb;->d([Landroid/util/Size;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;D)Landroid/util/Size;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    return-object v0
.end method

.method public final i()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j(II)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->e(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eq p1, p2, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->d:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->d:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object v0, Landroidx/camera/core/resolutionselector/AspectRatioStrategy;->c:Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Luk8;->c:Luk8;

    .line 22
    .line 23
    if-ne p1, p2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 p2, 0x0

    .line 27
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "OpayScannerView getTargetSize ====== aspectRatio:RATIO_16_9: "

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 p2, 0x2

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, p1, v2, p2, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final k()Landroidx/camera/core/CameraXConfig;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->i()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lgt;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    :goto_0
    const/4 v7, 0x1

    .line 19
    if-ge v4, v2, :cond_4

    .line 20
    .line 21
    aget-object v8, v1, v4

    .line 22
    .line 23
    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const-string v9, "getCameraCharacteristics(...)"

    .line 28
    .line 29
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 33
    .line 34
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Ljava/lang/Integer;

    .line 39
    .line 40
    if-nez v8, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-ne v9, v7, :cond_1

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_3

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sget-object v0, Luk8;->c:Luk8;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "OpayScannerView CameraXController hasBack : "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v4, 0x2

    .line 85
    invoke-static {v0, v1, v2, v4, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v8, "OpayScannerView CameraXController hasFront : "

    .line 94
    .line 95
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1, v2, v4, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    :cond_5
    if-nez v5, :cond_7

    .line 113
    .line 114
    if-nez v6, :cond_7

    .line 115
    .line 116
    :cond_6
    return-object v2

    .line 117
    :cond_7
    if-eqz v5, :cond_8

    .line 118
    .line 119
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    .line 120
    .line 121
    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v7}, Landroidx/camera/core/CameraSelector$Builder;->b(I)Landroidx/camera/core/CameraSelector$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->a()Landroidx/camera/core/CameraSelector;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    .line 137
    .line 138
    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3}, Landroidx/camera/core/CameraSelector$Builder;->b(I)Landroidx/camera/core/CameraSelector$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->a()Landroidx/camera/core/CameraSelector;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-static {}, Landroidx/camera/camera2/Camera2Config;->c()Landroidx/camera/core/CameraXConfig;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1}, Landroidx/camera/core/CameraXConfig$Builder;->b(Landroidx/camera/core/CameraXConfig;)Landroidx/camera/core/CameraXConfig$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1, v0}, Landroidx/camera/core/CameraXConfig$Builder;->d(Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/CameraXConfig$Builder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/camera/core/CameraXConfig$Builder;->a()Landroidx/camera/core/CameraXConfig;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    return-object v0
.end method

.method public final l(Landroid/view/View;Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_7

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_5

    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_6

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gtz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez v1, :cond_6

    .line 31
    .line 32
    if-gtz p1, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    rem-int/lit8 v2, p5, 0x2

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v2, 0x0

    .line 44
    :goto_0
    if-eqz v2, :cond_4

    .line 45
    .line 46
    move v5, p4

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    move v5, p3

    .line 49
    :goto_1
    if-eqz v2, :cond_5

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_5
    move p3, p4

    .line 53
    :goto_2
    int-to-float p4, v5

    .line 54
    int-to-float v1, v1

    .line 55
    div-float v2, p4, v1

    .line 56
    .line 57
    int-to-float v6, p3

    .line 58
    int-to-float p1, p1

    .line 59
    div-float v7, v6, p1

    .line 60
    .line 61
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    mul-float v1, v1, v2

    .line 66
    .line 67
    sub-float/2addr v1, p4

    .line 68
    const/high16 p4, 0x40000000    # 2.0f

    .line 69
    .line 70
    div-float/2addr v1, p4

    .line 71
    mul-float p1, p1, v2

    .line 72
    .line 73
    sub-float/2addr p1, v6

    .line 74
    div-float/2addr p1, p4

    .line 75
    iget p4, p2, Landroid/graphics/Rect;->left:I

    .line 76
    .line 77
    int-to-float p4, p4

    .line 78
    mul-float p4, p4, v2

    .line 79
    .line 80
    sub-float/2addr p4, v1

    .line 81
    float-to-int p4, p4

    .line 82
    iget v6, p2, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    int-to-float v6, v6

    .line 85
    mul-float v6, v6, v2

    .line 86
    .line 87
    sub-float/2addr v6, p1

    .line 88
    float-to-int v6, v6

    .line 89
    iget v7, p2, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    int-to-float v7, v7

    .line 92
    mul-float v7, v7, v2

    .line 93
    .line 94
    sub-float/2addr v7, v1

    .line 95
    float-to-int v1, v7

    .line 96
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    int-to-float p2, p2

    .line 99
    mul-float p2, p2, v2

    .line 100
    .line 101
    sub-float/2addr p2, p1

    .line 102
    float-to-int p1, p2

    .line 103
    new-instance p2, Landroid/graphics/Rect;

    .line 104
    .line 105
    add-int/lit8 v2, v5, -0x1

    .line 106
    .line 107
    invoke-static {p4, v3, v2}, Lkotlin/ranges/c;->i(III)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    add-int/lit8 v7, p3, -0x1

    .line 112
    .line 113
    invoke-static {v6, v3, v7}, Lkotlin/ranges/c;->i(III)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/2addr p4, v4

    .line 118
    invoke-static {v1, p4, v5}, Lkotlin/ranges/c;->i(III)I

    .line 119
    .line 120
    .line 121
    move-result p4

    .line 122
    add-int/2addr v6, v4

    .line 123
    invoke-static {p1, v6, p3}, Lkotlin/ranges/c;->i(III)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-direct {p2, v2, v3, p4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p2, v5, p3, p5}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->g(Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object p1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    goto :goto_4

    .line 137
    :cond_6
    :goto_3
    return-object v0

    .line 138
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_5
    return-object v0
.end method

.method public final m(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 16
    .param p1    # Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-lez v3, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-gtz v3, :cond_2

    .line 20
    .line 21
    :cond_1
    move-object/from16 v3, p0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_2
    if-nez p1, :cond_3

    .line 26
    .line 27
    return-object v2

    .line 28
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getPreviewSize()Landroid/util/Size;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_4

    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_4
    sget-object v4, Lri3;->a:Lri3;

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->i()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Lri3;->a(Landroid/content/Context;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x1

    .line 47
    if-ne v4, v6, :cond_6

    .line 48
    .line 49
    if-eq v1, v6, :cond_5

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    if-ne v1, v4, :cond_6

    .line 53
    .line 54
    :cond_5
    const/4 v4, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_6
    const/4 v4, 0x0

    .line 57
    :goto_0
    if-eqz v4, :cond_7

    .line 58
    .line 59
    move/from16 v7, p4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_7
    move/from16 v7, p3

    .line 63
    .line 64
    :goto_1
    if-eqz v4, :cond_8

    .line 65
    .line 66
    move/from16 v4, p3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_8
    move/from16 v4, p4

    .line 70
    .line 71
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->getTextureView()Landroid/view/TextureView;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    int-to-float v11, v9

    .line 92
    int-to-float v10, v10

    .line 93
    div-float v10, v11, v10

    .line 94
    .line 95
    int-to-float v12, v3

    .line 96
    int-to-float v8, v8

    .line 97
    div-float v8, v12, v8

    .line 98
    .line 99
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 104
    .line 105
    int-to-float v10, v10

    .line 106
    mul-float v10, v10, v8

    .line 107
    .line 108
    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    int-to-float v13, v13

    .line 111
    mul-float v13, v13, v8

    .line 112
    .line 113
    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    int-to-float v14, v14

    .line 116
    mul-float v14, v14, v8

    .line 117
    .line 118
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 119
    .line 120
    int-to-float v0, v0

    .line 121
    mul-float v0, v0, v8

    .line 122
    .line 123
    if-ne v9, v7, :cond_9

    .line 124
    .line 125
    if-ne v3, v4, :cond_9

    .line 126
    .line 127
    new-instance v3, Landroid/graphics/Rect;

    .line 128
    .line 129
    float-to-int v8, v10

    .line 130
    add-int/lit8 v9, v7, -0x1

    .line 131
    .line 132
    invoke-static {v8, v5, v9}, Lkotlin/ranges/c;->i(III)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    float-to-int v9, v13

    .line 137
    add-int/lit8 v10, v4, -0x1

    .line 138
    .line 139
    invoke-static {v9, v5, v10}, Lkotlin/ranges/c;->i(III)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    float-to-int v9, v14

    .line 144
    invoke-static {v9, v6, v7}, Lkotlin/ranges/c;->i(III)I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    float-to-int v0, v0

    .line 149
    invoke-static {v0, v6, v4}, Lkotlin/ranges/c;->i(III)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-direct {v3, v8, v5, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    .line 155
    .line 156
    move-object v2, v3

    .line 157
    move-object/from16 v3, p0

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catch_0
    move-exception v0

    .line 161
    move-object/from16 v3, p0

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_9
    int-to-float v3, v7

    .line 165
    div-float v8, v3, v11

    .line 166
    .line 167
    int-to-float v9, v4

    .line 168
    div-float v15, v9, v12

    .line 169
    .line 170
    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    mul-float v11, v11, v8

    .line 175
    .line 176
    sub-float/2addr v11, v3

    .line 177
    const/high16 v3, 0x40000000    # 2.0f

    .line 178
    .line 179
    div-float/2addr v11, v3

    .line 180
    mul-float v12, v12, v8

    .line 181
    .line 182
    sub-float/2addr v12, v9

    .line 183
    div-float/2addr v12, v3

    .line 184
    mul-float v10, v10, v8

    .line 185
    .line 186
    sub-float/2addr v10, v11

    .line 187
    float-to-int v3, v10

    .line 188
    mul-float v13, v13, v8

    .line 189
    .line 190
    sub-float/2addr v13, v12

    .line 191
    float-to-int v9, v13

    .line 192
    mul-float v14, v14, v8

    .line 193
    .line 194
    sub-float/2addr v14, v11

    .line 195
    float-to-int v10, v14

    .line 196
    mul-float v0, v0, v8

    .line 197
    .line 198
    sub-float/2addr v0, v12

    .line 199
    float-to-int v0, v0

    .line 200
    new-instance v8, Landroid/graphics/Rect;

    .line 201
    .line 202
    add-int/lit8 v11, v7, -0x1

    .line 203
    .line 204
    invoke-static {v3, v5, v11}, Lkotlin/ranges/c;->i(III)I

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    add-int/lit8 v12, v4, -0x1

    .line 209
    .line 210
    invoke-static {v9, v5, v12}, Lkotlin/ranges/c;->i(III)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    add-int/2addr v3, v6

    .line 215
    invoke-static {v10, v3, v7}, Lkotlin/ranges/c;->i(III)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    add-int/2addr v9, v6

    .line 220
    invoke-static {v0, v9, v4}, Lkotlin/ranges/c;->i(III)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-direct {v8, v11, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    move-object/from16 v3, p0

    .line 228
    .line 229
    move-object v2, v8

    .line 230
    :goto_3
    :try_start_1
    invoke-virtual {v3, v2, v7, v4, v1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->g(Landroid/graphics/Rect;III)Landroid/graphics/Rect;

    .line 231
    .line 232
    .line 233
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    goto :goto_6

    .line 235
    :catch_1
    move-exception v0

    .line 236
    goto :goto_5

    .line 237
    :goto_4
    return-object v2

    .line 238
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    move-object v0, v2

    .line 242
    :goto_6
    return-object v0
.end method

.method public final n(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;III)Landroid/graphics/Rect;
    .locals 5
    .param p1    # Landroidx/camera/view/PreviewView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_b

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_2
    const/16 v1, 0x10e

    .line 23
    .line 24
    const/16 v2, 0x5a

    .line 25
    .line 26
    if-eq p5, v2, :cond_4

    .line 27
    .line 28
    if-ne p5, v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 v3, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 34
    :goto_1
    if-eqz v3, :cond_5

    .line 35
    .line 36
    move v4, p4

    .line 37
    goto :goto_2

    .line 38
    :cond_5
    move v4, p3

    .line 39
    :goto_2
    if-eqz v3, :cond_6

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_6
    move p3, p4

    .line 43
    :goto_3
    invoke-virtual {p0, p1, p2, v4, p3}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->t(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p5, :cond_a

    .line 48
    .line 49
    if-eq p5, v2, :cond_9

    .line 50
    .line 51
    const/16 p2, 0xb4

    .line 52
    .line 53
    if-eq p5, p2, :cond_8

    .line 54
    .line 55
    if-eq p5, v1, :cond_7

    .line 56
    .line 57
    move-object p1, v0

    .line 58
    goto :goto_5

    .line 59
    :cond_7
    new-instance p2, Landroid/graphics/Rect;

    .line 60
    .line 61
    iget p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    sub-int p4, p3, p4

    .line 64
    .line 65
    iget p5, p1, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    sub-int/2addr p3, v1

    .line 70
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    invoke-direct {p2, p4, p5, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/graphics/Rect;->sort()V

    .line 76
    .line 77
    .line 78
    :goto_4
    move-object p1, p2

    .line 79
    goto :goto_5

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_7

    .line 82
    :cond_8
    new-instance p2, Landroid/graphics/Rect;

    .line 83
    .line 84
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    sub-int p4, v4, p4

    .line 87
    .line 88
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    sub-int p5, p3, p5

    .line 91
    .line 92
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    sub-int/2addr v4, v1

    .line 95
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    sub-int/2addr p3, p1

    .line 98
    invoke-direct {p2, p4, p5, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/graphics/Rect;->sort()V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_9
    new-instance p2, Landroid/graphics/Rect;

    .line 106
    .line 107
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    sub-int p4, v4, p4

    .line 112
    .line 113
    iget p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 114
    .line 115
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    sub-int/2addr v4, p1

    .line 118
    invoke-direct {p2, p3, p4, p5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/graphics/Rect;->sort()V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_a
    :goto_5
    if-eqz p1, :cond_b

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-lez p2, :cond_b

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 134
    .line 135
    .line 136
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-lez p2, :cond_b

    .line 138
    .line 139
    move-object v0, p1

    .line 140
    :cond_b
    :goto_6
    return-object v0

    .line 141
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    sget-object p2, Lere;->a:Lere;

    .line 145
    .line 146
    invoke-virtual {p2, p1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    return-object v0
.end method

.method public final o()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->i()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "getDisplayMetrics(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    .line 20
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 21
    .line 22
    sget-object v2, Luk8;->c:Luk8;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "OpayScannerView displayMetrics: width: "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "      height: "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x2

    .line 51
    invoke-static {v2, v3, v4, v5, v4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 55
    .line 56
    invoke-direct {v2}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->j(II)Landroidx/camera/core/resolutionselector/AspectRatioStrategy;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->d(Landroidx/camera/core/resolutionselector/AspectRatioStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Landroidx/camera/core/resolutionselector/ResolutionStrategy;

    .line 68
    .line 69
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->r(II)Landroid/util/Size;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-direct {v3, v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionStrategy;-><init>(Landroid/util/Size;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->f(Landroidx/camera/core/resolutionselector/ResolutionStrategy;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Ld4d;

    .line 82
    .line 83
    invoke-direct {v1}, Ld4d;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->e(Lkqc;)Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroidx/camera/core/resolutionselector/ResolutionSelector$Builder;->a()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "build(...)"

    .line 95
    .line 96
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method public final r(II)Landroid/util/Size;
    .locals 8

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object p2, Luk8;->c:Luk8;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "OpayScannerView getTargetSize ====== widthPixels:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, "   heightPixels:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-static {p2, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, p1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->e(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    sget-object v1, Lteam/opay/opb/qrcode/core/common/ScanABConfig;->Companion:Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/common/ScanABConfig$Companion;->k()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v4, 0x1

    .line 52
    const/16 v5, 0x1e0

    .line 53
    .line 54
    const/16 v6, 0x2d0

    .line 55
    .line 56
    if-ne p1, v4, :cond_4

    .line 57
    .line 58
    const/16 p1, 0x438

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    if-lt v0, v6, :cond_0

    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->o()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 69
    .line 70
    if-eq v0, v1, :cond_0

    .line 71
    .line 72
    :goto_0
    const/16 v5, 0x438

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_0
    :goto_1
    const/16 v5, 0x2d0

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    const/16 v1, 0x3fc

    .line 79
    .line 80
    if-lt v0, v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->o()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v4, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 87
    .line 88
    if-eq v1, v4, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    if-lt v0, v6, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :goto_2
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_4
    const/16 p1, 0x3c0

    .line 101
    .line 102
    if-eqz v1, :cond_6

    .line 103
    .line 104
    if-lt v0, v6, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->o()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 111
    .line 112
    if-eq v0, v1, :cond_5

    .line 113
    .line 114
    :goto_3
    const/16 v5, 0x3c0

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_5
    :goto_4
    const/16 v5, 0x2d0

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_6
    const/16 v1, 0x384

    .line 121
    .line 122
    if-lt v0, v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->o()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v4, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 129
    .line 130
    if-eq v1, v4, :cond_7

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_7
    if-lt v0, v6, :cond_8

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_8
    :goto_5
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :goto_6
    new-instance p1, Landroid/util/Size;

    .line 142
    .line 143
    int-to-double v6, v5

    .line 144
    mul-double v6, v6, v0

    .line 145
    .line 146
    invoke-static {v6, v7}, Lkotlin/math/a;->b(D)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-direct {p1, v0, v5}, Landroid/util/Size;-><init>(II)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v1, "OpayScannerView getTargetSize ====== targetSize:"

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {p2, v0, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-object p1
.end method

.method public final s([Landroid/util/Size;)Landroid/util/Size;
    .locals 12
    .param p1    # [Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "sizes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->i()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getDisplayMetrics(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    .line 30
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->r(II)Landroid/util/Size;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v1, v0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->e(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    array-length v4, p1

    .line 60
    const/4 v5, 0x0

    .line 61
    :goto_1
    if-ge v5, v4, :cond_5

    .line 62
    .line 63
    aget-object v6, p1, v5

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    int-to-long v7, v7

    .line 70
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    int-to-long v9, v9

    .line 75
    mul-long v7, v7, v9

    .line 76
    .line 77
    const-wide/32 v9, 0x1fa400

    .line 78
    .line 79
    .line 80
    cmp-long v11, v7, v9

    .line 81
    .line 82
    if-lez v11, :cond_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-ne v7, v8, :cond_4

    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-le v7, v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    int-to-double v7, v7

    .line 110
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    int-to-double v9, v9

    .line 115
    div-double/2addr v7, v9

    .line 116
    const-wide v9, 0x3ff199999999999aL    # 1.1

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    cmpl-double v11, v7, v9

    .line 122
    .line 123
    if-lez v11, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    int-to-double v7, v7

    .line 131
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    int-to-double v9, v9

    .line 136
    div-double/2addr v7, v9

    .line 137
    sub-double/2addr v7, v0

    .line 138
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 139
    .line 140
    .line 141
    move-result-wide v7

    .line 142
    const-wide v9, 0x3fc999999999999aL    # 0.2

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    cmpg-double v11, v7, v9

    .line 148
    .line 149
    if-gez v11, :cond_4

    .line 150
    .line 151
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    new-instance p1, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;

    .line 158
    .line 159
    invoke-direct {p1, v0, v1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$compareBy$1;-><init>(D)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$thenByDescending$1;

    .line 163
    .line 164
    invoke-direct {v0, p1}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil$getTargetSizeForCamera2$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/util/Size;

    .line 176
    .line 177
    return-object p1
.end method

.method public final t(Landroidx/camera/view/PreviewView;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    int-to-float v1, v1

    .line 16
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sub-int/2addr v2, v3

    .line 23
    int-to-float v2, v2

    .line 24
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sub-int/2addr v3, v4

    .line 31
    int-to-float v3, v3

    .line 32
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v0, v4

    .line 39
    int-to-float v0, v0

    .line 40
    invoke-direct {p2, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-float v0, v0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-float p1, p1

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    cmpg-float v3, v0, v2

    .line 56
    .line 57
    if-lez v3, :cond_1

    .line 58
    .line 59
    cmpg-float v2, p1, v2

    .line 60
    .line 61
    if-gtz v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    int-to-float v2, p3

    .line 65
    int-to-float v3, p4

    .line 66
    invoke-virtual {p0, v0, p1, v2, v3}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->f(FFFF)Landroid/graphics/RectF;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    invoke-virtual {p0, v0, p1, p3}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->u(FLandroid/graphics/RectF;I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    invoke-virtual {p0, v2, p1, p4}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->v(FLandroid/graphics/RectF;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 83
    .line 84
    invoke-virtual {p0, v3, p1, p3}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->u(FLandroid/graphics/RectF;I)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1, p4}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->v(FLandroid/graphics/RectF;I)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-static {v0, v1, p3}, Lkotlin/ranges/c;->i(III)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v2, v1, p4}, Lkotlin/ranges/c;->i(III)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v3, v1, p3}, Lkotlin/ranges/c;->i(III)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    invoke-static {p1, v1, p4}, Lkotlin/ranges/c;->i(III)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-direct {p2, v0, v2, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .line 114
    .line 115
    return-object p2

    .line 116
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-direct {p1, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method

.method public final u(FLandroid/graphics/RectF;I)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    sub-float/2addr p1, v0

    .line 15
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    div-float/2addr p1, p2

    .line 20
    int-to-float p2, p3

    .line 21
    mul-float p1, p1, p2

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    return p1
.end method

.method public final v(FLandroid/graphics/RectF;I)I
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v0, v0, v1

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 13
    .line 14
    sub-float/2addr p1, v0

    .line 15
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    div-float/2addr p1, p2

    .line 20
    int-to-float p2, p3

    .line 21
    mul-float p1, p1, p2

    .line 22
    .line 23
    float-to-int p1, p1

    .line 24
    return p1
.end method

.method public final declared-synchronized x()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    sget-object v1, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_4

    .line 18
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->k()Landroidx/camera/core/CameraXConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v3, Landroidx/camera/lifecycle/ProcessCameraProvider;->i:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->b(Landroidx/camera/core/CameraXConfig;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception v1

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_5
    sget-object v1, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_2
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_3
    :try_start_6
    sget-object v2, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 53
    throw v0
.end method
