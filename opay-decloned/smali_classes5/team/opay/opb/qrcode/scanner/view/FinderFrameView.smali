.class public Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;
.super Landroid/view/View;
.source "FinderFrameView.kt"

# interfaces
.implements Leb7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/scanner/view/FinderFrameView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0010\u0018\u0000 f2\u00020\u00012\u00020\u0002:\u0001gB\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0015J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u0017\u0010\"\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008%\u0010#J\u000f\u0010&\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008)\u0010#J\u0017\u0010,\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0015J\u0017\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00081\u0010\u0015J\u0017\u00103\u001a\u00020\u000b2\u0006\u00102\u001a\u00020 H\u0016\u00a2\u0006\u0004\u00083\u0010#J\u000f\u00104\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00084\u0010\rJ\u0011\u00106\u001a\u0004\u0018\u000105H\u0016\u00a2\u0006\u0004\u00086\u00107J\u0017\u0010:\u001a\u00020\u000b2\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u0017\u0010<\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008<\u0010\u0011J/\u0010A\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u00072\u0006\u0010?\u001a\u00020\u00072\u0006\u0010@\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008A\u0010BJ\r\u0010C\u001a\u00020\u000b\u00a2\u0006\u0004\u0008C\u0010\rJ\u000f\u0010D\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008D\u0010\rJ\u000f\u0010E\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008E\u0010\rJ\u0017\u0010G\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008G\u0010#J\u000f\u0010H\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008H\u0010\'J\u0019\u0010J\u001a\u00020\u000b2\u0008\u0010I\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010M\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0015R\u0018\u0010O\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010NR\u0016\u0010R\u001a\u00020P8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010QR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008D\u0010QR\u0016\u0010T\u001a\u00020P8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010QR\u0014\u0010V\u001a\u00020*8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010UR\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010XR\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010ZR\u0014\u0010]\u001a\u00020[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010\\R8\u0010e\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u000105\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u000b\u0018\u00010^8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010d\u00a8\u0006h"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;",
        "Landroid/view/View;",
        "Leb7;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "g",
        "()V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "f",
        "(Landroid/graphics/Canvas;)V",
        "e",
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
        "borderLineHeight",
        "setBorderLineHeight",
        "",
        "isLaserEnabled",
        "setLaserEnabled",
        "(Z)V",
        "isFullScreen",
        "setFullScreen",
        "getFullScreen",
        "()Z",
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
        "Landroid/graphics/Rect;",
        "getFramingRect",
        "()Landroid/graphics/Rect;",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "config",
        "setViewFinderConfig",
        "(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V",
        "onDraw",
        "xNew",
        "yNew",
        "xOld",
        "yOld",
        "onSizeChanged",
        "(IIII)V",
        "h",
        "c",
        "d",
        "isUseDefaultFinderView",
        "setUseDefaultFinderView",
        "b",
        "topOffsetRatio",
        "setTopOffsetRatio",
        "(Ljava/lang/Float;)V",
        "topOffset",
        "setTopOffset",
        "Landroid/graphics/Rect;",
        "framingRect",
        "Landroid/graphics/Paint;",
        "Landroid/graphics/Paint;",
        "mLaserPaint",
        "mFinderMaskPaint",
        "mBorderPaint",
        "F",
        "mSpacingWidth",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;",
        "finderAttr",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "Landroid/graphics/Path;",
        "Landroid/graphics/Path;",
        "path",
        "Lkotlin/Function2;",
        "i",
        "Lkotlin/jvm/functions/Function2;",
        "getOnFramingRectChanged",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnFramingRectChanged",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onFramingRectChanged",
        "j",
        "Companion",
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
.field public static final j:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public final e:F

.field public final f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Rect;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->j:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41700000    # 15.0f

    .line 5
    iput p2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 6
    new-instance p2, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    invoke-direct {p2, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 7
    new-instance p1, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;

    invoke-direct {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 9
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 6
    .line 7
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-float v1, v1

    .line 12
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->e()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 25
    .line 26
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    int-to-float v4, v4

    .line 29
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    int-to-float v5, v5

    .line 32
    add-float/2addr v5, v2

    .line 33
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 37
    .line 38
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    int-to-float v5, v5

    .line 44
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 48
    .line 49
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    int-to-float v4, v4

    .line 52
    add-float/2addr v4, v1

    .line 53
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    int-to-float v5, v5

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 60
    .line 61
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const-string v6, "mBorderPaint"

    .line 65
    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v4, v5

    .line 72
    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 76
    .line 77
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    int-to-float v4, v4

    .line 80
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 81
    .line 82
    int-to-float v7, v7

    .line 83
    add-float/2addr v7, v2

    .line 84
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 88
    .line 89
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    int-to-float v4, v4

    .line 92
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 93
    .line 94
    int-to-float v7, v7

    .line 95
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 99
    .line 100
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    int-to-float v4, v4

    .line 103
    sub-float/2addr v4, v1

    .line 104
    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    int-to-float v7, v7

    .line 107
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 111
    .line 112
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 113
    .line 114
    if-nez v4, :cond_1

    .line 115
    .line 116
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v4, v5

    .line 120
    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 124
    .line 125
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 126
    .line 127
    int-to-float v4, v4

    .line 128
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    .line 130
    int-to-float v7, v7

    .line 131
    sub-float/2addr v7, v2

    .line 132
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 136
    .line 137
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    int-to-float v4, v4

    .line 140
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    int-to-float v7, v7

    .line 143
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 147
    .line 148
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    int-to-float v4, v4

    .line 151
    sub-float/2addr v4, v1

    .line 152
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 153
    .line 154
    int-to-float v7, v7

    .line 155
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 159
    .line 160
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 161
    .line 162
    if-nez v4, :cond_2

    .line 163
    .line 164
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object v4, v5

    .line 168
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 172
    .line 173
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 174
    .line 175
    int-to-float v4, v4

    .line 176
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    int-to-float v7, v7

    .line 179
    sub-float/2addr v7, v2

    .line 180
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 184
    .line 185
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 186
    .line 187
    int-to-float v3, v3

    .line 188
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 189
    .line 190
    int-to-float v4, v4

    .line 191
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 195
    .line 196
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 197
    .line 198
    int-to-float v3, v3

    .line 199
    add-float/2addr v3, v1

    .line 200
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    int-to-float v0, v0

    .line 203
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h:Landroid/graphics/Path;

    .line 207
    .line 208
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 209
    .line 210
    if-nez v1, :cond_3

    .line 211
    .line 212
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_3
    move-object v5, v1

    .line 217
    :goto_0
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-eqz v3, :cond_4

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    int-to-float v4, v4

    .line 19
    iget v5, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 20
    .line 21
    add-float v8, v4, v5

    .line 22
    .line 23
    iget-object v4, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const-string v11, "mFinderMaskPaint"

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v9, v10

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v9, v4

    .line 36
    :goto_0
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object/from16 v4, p1

    .line 39
    .line 40
    move v7, v1

    .line 41
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 45
    .line 46
    int-to-float v4, v4

    .line 47
    iget v5, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 48
    .line 49
    add-float v14, v4, v5

    .line 50
    .line 51
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    int-to-float v4, v4

    .line 54
    add-float v15, v4, v5

    .line 55
    .line 56
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    int-to-float v4, v4

    .line 61
    sub-float v16, v4, v5

    .line 62
    .line 63
    iget-object v4, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 64
    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v17, v10

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move-object/from16 v17, v4

    .line 74
    .line 75
    :goto_1
    const/4 v13, 0x0

    .line 76
    move-object/from16 v12, p1

    .line 77
    .line 78
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    int-to-float v4, v4

    .line 86
    iget v5, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 87
    .line 88
    sub-float v6, v4, v5

    .line 89
    .line 90
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 91
    .line 92
    int-to-float v4, v4

    .line 93
    add-float v7, v4, v5

    .line 94
    .line 95
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    int-to-float v4, v4

    .line 100
    sub-float v8, v4, v5

    .line 101
    .line 102
    iget-object v4, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 103
    .line 104
    if-nez v4, :cond_2

    .line 105
    .line 106
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v9, v10

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    move-object v9, v4

    .line 112
    :goto_2
    move-object/from16 v4, p1

    .line 113
    .line 114
    move v5, v6

    .line 115
    move v6, v7

    .line 116
    move v7, v1

    .line 117
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    int-to-float v3, v3

    .line 125
    iget v4, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 126
    .line 127
    sub-float v6, v3, v4

    .line 128
    .line 129
    int-to-float v8, v2

    .line 130
    iget-object v2, v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 131
    .line 132
    if-nez v2, :cond_3

    .line 133
    .line 134
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v9, v10

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    move-object v9, v2

    .line 140
    :goto_3
    const/4 v5, 0x0

    .line 141
    move-object/from16 v4, p1

    .line 142
    .line 143
    move v7, v1

    .line 144
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->h()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->b:Landroid/graphics/Paint;

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 28
    .line 29
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->j()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 44
    .line 45
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->b()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 58
    .line 59
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->g()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    int-to-float v1, v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 72
    .line 73
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->d()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 83
    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 88
    .line 89
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-lez v1, :cond_1

    .line 94
    .line 95
    new-instance v1, Landroid/graphics/CornerPathEffect;

    .line 96
    .line 97
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 98
    .line 99
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->c()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    int-to-float v2, v2

    .line 104
    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 108
    .line 109
    .line 110
    :cond_1
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 111
    .line 112
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 25
    .line 26
    :goto_0
    return-object v0
.end method

.method public getFullScreen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getOnFramingRectChanged()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized h()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-lez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lri3;->a:Lri3;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "getContext(...)"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lri3;->a(Landroid/content/Context;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 45
    .line 46
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->k()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    if-eq v1, v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-float v1, v1

    .line 60
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 61
    .line 62
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->c()Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_0
    mul-float v1, v1, v2

    .line 77
    .line 78
    float-to-int v1, v1

    .line 79
    move v2, v1

    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    int-to-float v1, v1

    .line 90
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 91
    .line 92
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->d()Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    if-eq v1, v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    int-to-float v1, v1

    .line 114
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 115
    .line 116
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a()Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/Number;

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    mul-float v1, v1, v2

    .line 131
    .line 132
    float-to-int v1, v1

    .line 133
    int-to-float v2, v1

    .line 134
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 135
    .line 136
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->a()Lkotlin/Pair;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    mul-float v2, v2, v3

    .line 151
    .line 152
    float-to-int v2, v2

    .line 153
    move v7, v2

    .line 154
    move v2, v1

    .line 155
    move v1, v7

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    int-to-float v1, v1

    .line 162
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 163
    .line 164
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->b()Lkotlin/Pair;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Ljava/lang/Number;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    mul-float v1, v1, v2

    .line 179
    .line 180
    float-to-int v1, v1

    .line 181
    int-to-float v2, v1

    .line 182
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 183
    .line 184
    invoke-virtual {v3}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->b()Lkotlin/Pair;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Ljava/lang/Number;

    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    mul-float v2, v2, v3

    .line 199
    .line 200
    float-to-int v2, v2

    .line 201
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-le v1, v3, :cond_4

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    add-int/lit8 v1, v1, -0x32

    .line 212
    .line 213
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-le v2, v3, :cond_5

    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    add-int/lit8 v2, v2, -0x32

    .line 224
    .line 225
    :cond_5
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 226
    .line 227
    sub-int/2addr v3, v1

    .line 228
    div-int/lit8 v3, v3, 0x2

    .line 229
    .line 230
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 231
    .line 232
    sub-int/2addr v0, v2

    .line 233
    int-to-float v0, v0

    .line 234
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 235
    .line 236
    invoke-virtual {v4}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->m()Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    if-eqz v4, :cond_6

    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    goto :goto_2

    .line 247
    :cond_6
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 248
    .line 249
    invoke-virtual {v4}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;->e()F

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    :goto_2
    div-float/2addr v0, v4

    .line 254
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 255
    .line 256
    invoke-virtual {v4}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->l()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    int-to-float v4, v4

    .line 261
    add-float/2addr v0, v4

    .line 262
    new-instance v4, Landroid/graphics/Rect;

    .line 263
    .line 264
    iget-object v5, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 265
    .line 266
    invoke-virtual {v5}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    add-int/2addr v5, v3

    .line 271
    float-to-int v0, v0

    .line 272
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 273
    .line 274
    invoke-virtual {v6}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    add-int/2addr v6, v0

    .line 279
    add-int/2addr v3, v1

    .line 280
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 281
    .line 282
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    sub-int/2addr v3, v1

    .line 287
    add-int/2addr v0, v2

    .line 288
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 289
    .line 290
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->n()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    sub-int/2addr v0, v1

    .line 295
    invoke-direct {v4, v5, v6, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 296
    .line 297
    .line 298
    iput-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 299
    .line 300
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->i:Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    if-eqz v0, :cond_7

    .line 303
    .line 304
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e:F

    .line 305
    .line 306
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-interface {v0, v4, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .line 312
    .line 313
    :cond_7
    monitor-exit p0

    .line 314
    return-void

    .line 315
    :cond_8
    :goto_3
    monitor-exit p0

    .line 316
    return-void

    .line 317
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    throw v0
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a:Landroid/graphics/Rect;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->o()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 39
    .line 40
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->p()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->e(Landroid/graphics/Canvas;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->h()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 2

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
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->q(F)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "mBorderPaint"

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->r(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mBorderPaint"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->s(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mBorderPaint"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    new-instance v1, Landroid/graphics/CornerPathEffect;

    .line 17
    .line 18
    int-to-float p1, p1

    .line 19
    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setBorderCornerRounded(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->t(Z)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "mBorderPaint"

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, p1

    .line 20
    :goto_0
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 23
    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v0, p1

    .line 35
    :goto_1
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    return-void
.end method

.method public setBorderLineHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->u(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->v(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->w(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->d:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mBorderPaint"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    int-to-float p1, p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->x(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->y(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->b:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mLaserPaint"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->z(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->A(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->c:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "mFinderMaskPaint"

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setOnFramingRectChanged(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Rect;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->i:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->B(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTopOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->C(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTopOffsetRatio(Ljava/lang/Float;)V
    .locals 1
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->D(Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseDefaultFinderView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->E(Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setViewFinderConfig(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->g:Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;

    .line 7
    .line 8
    return-void
.end method

.method public setViewFinderOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->f:Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/core/ViewFinderAttr;->F(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
