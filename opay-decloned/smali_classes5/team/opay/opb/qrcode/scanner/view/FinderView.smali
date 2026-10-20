.class public final Lteam/opay/opb/qrcode/scanner/view/FinderView;
.super Landroid/widget/FrameLayout;
.source "FinderView.kt"

# interfaces
.implements Leb7;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0011\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\rJ\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0019J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0019J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0019J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008)\u0010\'J\u0017\u0010,\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010/\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008/\u0010\u0019J\u0017\u00101\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00081\u0010\u0019J\u0017\u00103\u001a\u00020\u000b2\u0006\u00102\u001a\u00020$H\u0016\u00a2\u0006\u0004\u00083\u0010\'J\u0017\u00105\u001a\u00020\u000b2\u0006\u00104\u001a\u00020$H\u0016\u00a2\u0006\u0004\u00085\u0010\'J\u000f\u00106\u001a\u00020$H\u0016\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u000b2\u0006\u00108\u001a\u00020$H\u0016\u00a2\u0006\u0004\u00089\u0010\'J\u000f\u0010:\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008:\u00107J\u0019\u0010<\u001a\u00020\u000b2\u0008\u0010;\u001a\u0004\u0018\u00010*H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0019R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010AR\u0014\u0010E\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010D\u00a8\u0006F"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/FinderView;",
        "Landroid/widget/FrameLayout;",
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
        "a",
        "()V",
        "Landroid/graphics/Rect;",
        "getFramingRect",
        "()Landroid/graphics/Rect;",
        "Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;",
        "config",
        "setViewFinderConfig",
        "(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V",
        "c",
        "d",
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
        "isFullScreen",
        "setFullScreen",
        "getFullScreen",
        "()Z",
        "isUseDefaultFinderView",
        "setUseDefaultFinderView",
        "b",
        "topOffsetRatio",
        "setTopOffsetRatio",
        "(Ljava/lang/Float;)V",
        "topOffset",
        "setTopOffset",
        "Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;",
        "Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;",
        "frameView",
        "Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;",
        "Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;",
        "laserView",
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


# instance fields
.field public final a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance v0, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 6
    new-instance v7, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 7
    new-instance v1, Ln16;

    invoke-direct {v1, p0}, Ln16;-><init>(Lteam/opay/opb/qrcode/scanner/view/FinderView;)V

    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setOnFramingRectChanged(Lkotlin/jvm/functions/Function2;)V

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/view/FinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic e(Lteam/opay/opb/qrcode/scanner/view/FinderView;Landroid/graphics/Rect;F)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/FinderView;->f(Lteam/opay/opb/qrcode/scanner/view/FinderView;Landroid/graphics/Rect;F)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final f(Lteam/opay/opb/qrcode/scanner/view/FinderView;Landroid/graphics/Rect;F)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->setSpacingWidth(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->setFramingRect(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->getFramingRect()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFullScreen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->getFullScreen()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setBorderAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderAlpha(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderCornerRadius(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderCornerRounded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderCornerRounded(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderLineHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderLineLength(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderLineLength(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setBorderStrokeWidth(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setFullScreen(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->setFullScreen(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setLaserColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setLaserEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->setLaserEnabled(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setMaskColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setSquareViewFinder(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTopOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setTopOffset(I)V

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setTopOffsetRatio(Ljava/lang/Float;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUseDefaultFinderView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setUseDefaultFinderView(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->b:Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderLaserView;->setUseDefaultFinderView(Z)V

    .line 9
    .line 10
    .line 11
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setViewFinderConfig(Lteam/opay/opb/qrcode/scanner/core/ViewFinderConfig;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setViewFinderOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/FinderView;->a:Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/opb/qrcode/scanner/view/FinderFrameView;->setViewFinderOffset(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
