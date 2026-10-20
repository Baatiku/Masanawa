.class public final Lteam/opay/qrcode/android/core/ViewFinderView;
.super Landroid/view/View;
.source "ViewFinderView.kt"

# interfaces
.implements Ldb7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/qrcode/android/core/ViewFinderView$Companion;,
        Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 z2\u00020\u00012\u00020\u0002:\u0002{|B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0013J\u0017\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0013J\u0017\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u0017\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0013J\u0017\u0010)\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0013J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008+\u0010\u001fJ\u000f\u0010,\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008,\u0010\u000cJ\u0015\u0010/\u001a\u00020\n2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00103\u001a\u00020\n2\u0006\u00102\u001a\u000201H\u0016\u00a2\u0006\u0004\u00083\u00104J\u0015\u00105\u001a\u00020\n2\u0006\u00102\u001a\u000201\u00a2\u0006\u0004\u00085\u00104J/\u0010:\u001a\u00020\n2\u0006\u00106\u001a\u00020\u00102\u0006\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008:\u0010;J\r\u0010<\u001a\u00020\n\u00a2\u0006\u0004\u0008<\u0010\u000cR\u0018\u0010>\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010=R\u0016\u0010@\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010?R\u0014\u0010A\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010?R\u0014\u0010B\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010?R\u0014\u0010D\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010?R\u0014\u0010F\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010?R\u0014\u0010H\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010?R\"\u0010P\u001a\u00020I8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\"\u0010T\u001a\u00020I8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008Q\u0010K\u001a\u0004\u0008R\u0010M\"\u0004\u0008S\u0010OR\"\u0010X\u001a\u00020I8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008U\u0010K\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010OR\"\u0010]\u001a\u00020\u00108\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010?\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010\u0013R\"\u0010c\u001a\u00020\u001c8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010\u001fR\u0016\u0010f\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0016\u0010h\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010?R\u0016\u0010j\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010_R\u0016\u0010m\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010q\u001a\u00020n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010s\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010?R\u0016\u0010u\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010?R\u0016\u0010y\u001a\u00020v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010x\u00a8\u0006}"
    }
    d2 = {
        "Lteam/opay/qrcode/android/core/ViewFinderView;",
        "Landroid/view/View;",
        "Ldb7;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attributeSet",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "c",
        "()V",
        "Landroid/graphics/Rect;",
        "getFramingRect",
        "()Landroid/graphics/Rect;",
        "",
        "laserColor",
        "setLaserColor",
        "(I)V",
        "maskColor",
        "setMaskColor",
        "borderColor",
        "setBorderColor",
        "borderStrokeWidth",
        "setBorderStrokeWidth",
        "borderLineLength",
        "setBorderLineLength",
        "",
        "isLaserEnabled",
        "setLaserEnabled",
        "(Z)V",
        "isBorderCornersRounded",
        "setBorderCornerRounded",
        "",
        "alpha",
        "setBorderAlpha",
        "(F)V",
        "borderCornersRadius",
        "setBorderCornerRadius",
        "offset",
        "setViewFinderOffset",
        "isSquareViewFinder",
        "setSquareViewFinder",
        "a",
        "Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;",
        "style",
        "setLaserAnimationStyle",
        "(Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "b",
        "xNew",
        "yNew",
        "xOld",
        "yOld",
        "onSizeChanged",
        "(IIII)V",
        "d",
        "Landroid/graphics/Rect;",
        "framingRect",
        "I",
        "scannerAlpha",
        "mDefaultLaserColor",
        "mDefaultMaskColor",
        "e",
        "mDefaultBorderColor",
        "f",
        "mDefaultBorderStrokeWidth",
        "g",
        "mDefaultBorderLineLength",
        "Landroid/graphics/Paint;",
        "h",
        "Landroid/graphics/Paint;",
        "getMLaserPaint",
        "()Landroid/graphics/Paint;",
        "setMLaserPaint",
        "(Landroid/graphics/Paint;)V",
        "mLaserPaint",
        "i",
        "getMFinderMaskPaint",
        "setMFinderMaskPaint",
        "mFinderMaskPaint",
        "j",
        "getMBorderPaint",
        "setMBorderPaint",
        "mBorderPaint",
        "k",
        "getMBorderLineLength",
        "()I",
        "setMBorderLineLength",
        "mBorderLineLength",
        "l",
        "Z",
        "getMSquareViewFinder",
        "()Z",
        "setMSquareViewFinder",
        "mSquareViewFinder",
        "m",
        "F",
        "mBordersAlpha",
        "n",
        "mViewFinderOffset",
        "o",
        "mIsLaserEnabled",
        "p",
        "Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;",
        "mLaserStyle",
        "",
        "q",
        "J",
        "ANIMATION_DELAY",
        "r",
        "mLaserStepCount",
        "s",
        "mLaserStep",
        "Landroid/graphics/Picture;",
        "t",
        "Landroid/graphics/Picture;",
        "mLaserPicture",
        "u",
        "Companion",
        "LASER_STYLE",
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


# static fields
.field public static final A:I

.field public static final B:F

.field public static final C:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final D:I

.field public static final u:Lteam/opay/qrcode/android/core/ViewFinderView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:F

.field public static final x:F

.field public static final y:F

.field public static final z:F


# instance fields
.field public a:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Paint;

.field public j:Landroid/graphics/Paint;

.field public k:I

.field public l:Z

.field public m:F

.field public n:I

.field public o:Z

.field public p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:J

.field public r:I

.field public s:I

.field public t:Landroid/graphics/Picture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/qrcode/android/core/ViewFinderView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/qrcode/android/core/ViewFinderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/qrcode/android/core/ViewFinderView;->u:Lteam/opay/qrcode/android/core/ViewFinderView$Companion;

    .line 8
    .line 9
    const-string v0, "ViewFinderView"

    .line 10
    .line 11
    sput-object v0, Lteam/opay/qrcode/android/core/ViewFinderView;->v:Ljava/lang/String;

    .line 12
    .line 13
    const/high16 v0, 0x3f400000    # 0.75f

    .line 14
    .line 15
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->w:F

    .line 16
    .line 17
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->x:F

    .line 18
    .line 19
    const/high16 v0, 0x3f200000    # 0.625f

    .line 20
    .line 21
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->y:F

    .line 22
    .line 23
    const v0, 0x3fb33333    # 1.4f

    .line 24
    .line 25
    .line 26
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->z:F

    .line 27
    .line 28
    const/16 v0, 0x32

    .line 29
    .line 30
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->A:I

    .line 31
    .line 32
    const v0, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->B:F

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    new-array v0, v0, [I

    .line 40
    .line 41
    fill-array-data v0, :array_0

    .line 42
    .line 43
    .line 44
    sput-object v0, Lteam/opay/qrcode/android/core/ViewFinderView;->C:[I

    .line 45
    .line 46
    const/16 v0, 0xa

    .line 47
    .line 48
    sput v0, Lteam/opay/qrcode/android/core/ViewFinderView;->D:I

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_laser:I

    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->c:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_mask:I

    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->d:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_border:I

    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->e:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lteam/opay/qrcode/R$integer;->qrcode_viewfinder_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->f:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lteam/opay/qrcode/R$integer;->qrcode_viewfinder_border_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->g:I

    .line 7
    sget-object p1, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->SCAN_LINE_TRAVERSE:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    const-wide/16 v0, 0x50

    .line 8
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 9
    new-instance p1, Landroid/graphics/Picture;

    invoke-direct {p1}, Landroid/graphics/Picture;-><init>()V

    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->t:Landroid/graphics/Picture;

    .line 10
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_laser:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->c:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_mask:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->d:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lteam/opay/qrcode/R$color;->qrcode_viewfinder_border:I

    invoke-static {p1, p2}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->e:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lteam/opay/qrcode/R$integer;->qrcode_viewfinder_border_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->f:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lteam/opay/qrcode/R$integer;->qrcode_viewfinder_border_length:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->g:I

    .line 17
    sget-object p1, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->SCAN_LINE_TRAVERSE:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    const-wide/16 p1, 0x50

    .line 18
    iput-wide p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 19
    new-instance p1, Landroid/graphics/Picture;

    invoke-direct {p1}, Landroid/graphics/Picture;-><init>()V

    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->t:Landroid/graphics/Picture;

    .line 20
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sget-object v2, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->CENTER_LINE_BLINK:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMLaserPaint()Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lteam/opay/qrcode/android/core/ViewFinderView;->C:[I

    .line 30
    .line 31
    iget v3, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 32
    .line 33
    aget v3, v2, v3

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    array-length v2, v2

    .line 43
    rem-int/2addr v1, v2

    .line 44
    iput v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    add-int/2addr v1, v2

    .line 55
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x2

    .line 58
    .line 59
    int-to-float v4, v2

    .line 60
    add-int/lit8 v2, v1, -0x1

    .line 61
    .line 62
    int-to-float v5, v2

    .line 63
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    int-to-float v6, v2

    .line 68
    add-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    int-to-float v7, v1

    .line 71
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMLaserPaint()Landroid/graphics/Paint;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    move-object v3, p1

    .line 76
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    sget-object v2, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->CORNER_BLINK:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-ne v1, v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object v1, Lteam/opay/qrcode/android/core/ViewFinderView;->C:[I

    .line 99
    .line 100
    iget v2, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 101
    .line 102
    aget v2, v1, v2

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    .line 106
    .line 107
    iget p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 110
    .line 111
    array-length v1, v1

    .line 112
    rem-int/2addr p1, v1

    .line 113
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->b:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    sget-object v2, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->SCAN_LINE_TRAVERSE:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-ne v1, v2, :cond_2

    .line 129
    .line 130
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    iget v3, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->r:I

    .line 137
    .line 138
    div-int/2addr v2, v3

    .line 139
    iget v3, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 140
    .line 141
    mul-int v2, v2, v3

    .line 142
    .line 143
    add-int/2addr v1, v2

    .line 144
    iget-object v2, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->t:Landroid/graphics/Picture;

    .line 145
    .line 146
    new-instance v3, Landroid/graphics/RectF;

    .line 147
    .line 148
    const/16 v4, 0x14

    .line 149
    .line 150
    invoke-static {v4}, Ljmf;->d(I)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    sub-int v5, v1, v5

    .line 155
    .line 156
    int-to-float v5, v5

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    int-to-float v6, v6

    .line 162
    invoke-static {v4}, Ljmf;->d(I)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    add-int/2addr v1, v4

    .line 167
    int-to-float v1, v1

    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 173
    .line 174
    .line 175
    iget p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 176
    .line 177
    add-int/lit8 p1, p1, 0x1

    .line 178
    .line 179
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 180
    .line 181
    iget v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->r:I

    .line 182
    .line 183
    rem-int/2addr p1, v1

    .line 184
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 185
    .line 186
    :cond_2
    :goto_0
    iget-wide v2, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 187
    .line 188
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 189
    .line 190
    sget v1, Lteam/opay/qrcode/android/core/ViewFinderView;->D:I

    .line 191
    .line 192
    sub-int v4, p1, v1

    .line 193
    .line 194
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 195
    .line 196
    sub-int v5, p1, v1

    .line 197
    .line 198
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 199
    .line 200
    add-int v6, p1, v1

    .line 201
    .line 202
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 203
    .line 204
    add-int v7, p1, v1

    .line 205
    .line 206
    move-object v1, p0

    .line 207
    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final c()V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/qrcode/android/core/ViewFinderView;->setMLaserPaint(Landroid/graphics/Paint;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMLaserPaint()Landroid/graphics/Paint;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->c:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMLaserPaint()Landroid/graphics/Paint;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sget-object v1, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->SCAN_LINE_TRAVERSE:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    const-wide/16 v0, 0x1e

    .line 42
    .line 43
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 44
    .line 45
    const/16 v2, 0xbb8

    .line 46
    .line 47
    int-to-long v2, v2

    .line 48
    div-long/2addr v2, v0

    .line 49
    long-to-int v0, v2

    .line 50
    iput v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->r:I

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget v2, Lteam/opay/qrcode/R$drawable;->scan_laser:I

    .line 60
    .line 61
    invoke-static {v1, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const/16 v1, 0xc8

    .line 73
    .line 74
    :goto_0
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 v2, 0xa

    .line 82
    .line 83
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "@@@@@: "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, ", "

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->t:Landroid/graphics/Picture;

    .line 111
    .line 112
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    const-string v4, "beginRecording(...)"

    .line 117
    .line 118
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const v4, -0xe23061

    .line 122
    .line 123
    .line 124
    const v5, 0x1dcff

    .line 125
    .line 126
    .line 127
    filled-new-array {v5, v4, v5}, [I

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    .line 132
    .line 133
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 134
    .line 135
    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 136
    .line 137
    .line 138
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 v7, 0x7

    .line 142
    const/4 v8, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    invoke-static/range {v3 .. v8}, Lmj3;->b(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v4, Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-direct {v4, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Landroid/graphics/RectF;

    .line 156
    .line 157
    int-to-float v1, v1

    .line 158
    int-to-float v2, v2

    .line 159
    const/4 v5, 0x0

    .line 160
    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 161
    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-virtual {v9, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->t:Landroid/graphics/Picture;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    sget-object v1, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->CORNER_BLINK:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-ne v0, v1, :cond_3

    .line 186
    .line 187
    const-wide/16 v0, 0xa0

    .line 188
    .line 189
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_3
    const-wide/16 v0, 0x50

    .line 193
    .line 194
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 195
    .line 196
    :goto_2
    new-instance v0, Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lteam/opay/qrcode/android/core/ViewFinderView;->setMFinderMaskPaint(Landroid/graphics/Paint;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMFinderMaskPaint()Landroid/graphics/Paint;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->d:I

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Landroid/graphics/Paint;

    .line 214
    .line 215
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0}, Lteam/opay/qrcode/android/core/ViewFinderView;->setMBorderPaint(Landroid/graphics/Paint;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget v1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->e:I

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 235
    .line 236
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    sget-object v1, Lqi3;->a:Lqi3;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    const-string v3, "getContext(...)"

    .line 250
    .line 251
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget v3, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->f:I

    .line 255
    .line 256
    int-to-float v3, v3

    .line 257
    invoke-virtual {v1, v2, v3}, Lqi3;->a(Landroid/content/Context;F)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    int-to-float v1, v1

    .line 262
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 271
    .line 272
    .line 273
    iget v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->g:I

    .line 274
    .line 275
    iput v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->k:I

    .line 276
    .line 277
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lqi3;->a:Lqi3;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "getContext(...)"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lqi3;->b(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-boolean v2, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->l:Z

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-eq v1, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->B:F

    .line 43
    .line 44
    :goto_0
    mul-float v1, v1, v2

    .line 45
    .line 46
    float-to-int v1, v1

    .line 47
    move v2, v1

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->B:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eq v1, v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-float v1, v1

    .line 66
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->y:F

    .line 67
    .line 68
    mul-float v1, v1, v2

    .line 69
    .line 70
    float-to-int v1, v1

    .line 71
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->z:F

    .line 72
    .line 73
    int-to-float v3, v1

    .line 74
    mul-float v2, v2, v3

    .line 75
    .line 76
    float-to-int v2, v2

    .line 77
    move v8, v2

    .line 78
    move v2, v1

    .line 79
    move v1, v8

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    int-to-float v1, v1

    .line 86
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->w:F

    .line 87
    .line 88
    mul-float v1, v1, v2

    .line 89
    .line 90
    float-to-int v1, v1

    .line 91
    sget v2, Lteam/opay/qrcode/android/core/ViewFinderView;->x:F

    .line 92
    .line 93
    int-to-float v3, v1

    .line 94
    mul-float v2, v2, v3

    .line 95
    .line 96
    float-to-int v2, v2

    .line 97
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-le v1, v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    sget v3, Lteam/opay/qrcode/android/core/ViewFinderView;->A:I

    .line 108
    .line 109
    sub-int/2addr v1, v3

    .line 110
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-le v2, v3, :cond_4

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    sget v3, Lteam/opay/qrcode/android/core/ViewFinderView;->A:I

    .line 121
    .line 122
    sub-int/2addr v2, v3

    .line 123
    :cond_4
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 124
    .line 125
    sub-int/2addr v3, v1

    .line 126
    div-int/lit8 v3, v3, 0x2

    .line 127
    .line 128
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 129
    .line 130
    sub-int/2addr v0, v2

    .line 131
    div-int/lit8 v0, v0, 0x2

    .line 132
    .line 133
    new-instance v4, Landroid/graphics/Rect;

    .line 134
    .line 135
    iget v5, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->n:I

    .line 136
    .line 137
    add-int v6, v3, v5

    .line 138
    .line 139
    add-int v7, v0, v5

    .line 140
    .line 141
    add-int/2addr v3, v1

    .line 142
    sub-int/2addr v3, v5

    .line 143
    add-int/2addr v0, v2

    .line 144
    sub-int/2addr v0, v5

    .line 145
    invoke-direct {v4, v6, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    .line 147
    .line 148
    iput-object v4, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->a:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 152
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw v0
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMBorderLineLength()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMBorderPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->j:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mBorderPaint"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMFinderMaskPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->i:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mFinderMaskPaint"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMLaserPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->h:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mLaserPaint"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMSquareViewFinder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->o:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lteam/opay/qrcode/android/core/ViewFinderView;->b(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    mul-float v0, v0, p1

    .line 5
    .line 6
    float-to-int v0, v0

    .line 7
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->m:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/CornerPathEffect;

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setBorderCornerRounded(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMBorderPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lqi3;->a:Lqi3;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "getContext(...)"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    invoke-virtual {v1, v2, p1}, Lqi3;->a(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-float p1, p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setLaserAnimationStyle(Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;)V
    .locals 4
    .param p1    # Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    sget-object v0, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->SCAN_LINE_TRAVERSE:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x1e

    .line 21
    .line 22
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 23
    .line 24
    const/16 p1, 0x7d0

    .line 25
    .line 26
    int-to-long v2, p1

    .line 27
    div-long/2addr v2, v0

    .line 28
    long-to-int p1, v2

    .line 29
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->r:I

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->s:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->p:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget-object v0, Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;->CORNER_BLINK:Lteam/opay/qrcode/android/core/ViewFinderView$LASER_STYLE;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    const-wide/16 v0, 0xa0

    .line 50
    .line 51
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-wide/16 v0, 0x50

    .line 55
    .line 56
    iput-wide v0, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->q:J

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMLaserPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMBorderLineLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMBorderPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->j:Landroid/graphics/Paint;

    .line 7
    .line 8
    return-void
.end method

.method public final setMFinderMaskPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->i:Landroid/graphics/Paint;

    .line 7
    .line 8
    return-void
.end method

.method public final setMLaserPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    return-void
.end method

.method public final setMSquareViewFinder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/qrcode/android/core/ViewFinderView;->getMFinderMaskPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setViewFinderOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/qrcode/android/core/ViewFinderView;->n:I

    .line 2
    .line 3
    return-void
.end method
