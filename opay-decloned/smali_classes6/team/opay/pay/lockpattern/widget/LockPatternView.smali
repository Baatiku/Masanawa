.class public final Lteam/opay/pay/lockpattern/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;,
        Lteam/opay/pay/lockpattern/widget/LockPatternView$Companion;,
        Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;,
        Lteam/opay/pay/lockpattern/widget/LockPatternView$a;,
        Lteam/opay/pay/lockpattern/widget/LockPatternView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0004tLuvB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0013J\'\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u000f\u0010\u0016\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000cJ\u000f\u0010\u0017\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000cJ\u000f\u0010\u0018\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000cJ9\u0010\u001e\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0019R\u00020\u00002\n\u0010\u001b\u001a\u00060\u0019R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ9\u0010 \u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0019R\u00020\u00002\n\u0010\u001b\u001a\u00060\u0019R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001fJ-\u0010!\u001a\u0008\u0018\u00010\u0019R\u00020\u00002\n\u0010\u001a\u001a\u00060\u0019R\u00020\u00002\n\u0010\u001b\u001a\u00060\u0019R\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010#\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0019R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010(\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010*\u001a\u00020\n2\u0006\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008*\u0010)J\u000f\u0010+\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008+\u0010\u000cJ%\u0010-\u001a\u0008\u0018\u00010\u0019R\u00020\u00002\u0006\u0010\u0017\u001a\u00020%2\u0006\u0010,\u001a\u00020%H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001b\u00100\u001a\u00020\n2\n\u0010/\u001a\u00060\u0019R\u00020\u0000H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00082\u0010\u000cJ\u000f\u00103\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00083\u0010\u000cJ\u0017\u00104\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u00084\u0010\u0010J\u001f\u00107\u001a\u00020\n2\u0006\u00105\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0017\u00a2\u0006\u0004\u0008<\u0010=J\u0019\u0010>\u001a\u00020;2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008>\u0010=J\u0015\u0010A\u001a\u00020\n2\u0006\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008A\u0010BJ\r\u0010C\u001a\u00020\n\u00a2\u0006\u0004\u0008C\u0010\u000cJ\u0015\u0010F\u001a\u00020\n2\u0006\u0010E\u001a\u00020D\u00a2\u0006\u0004\u0008F\u0010GJ\u0015\u0010J\u001a\u00020\n2\u0006\u0010I\u001a\u00020H\u00a2\u0006\u0004\u0008J\u0010KR\u0016\u0010N\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010O\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010MR\u0016\u0010Q\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010PR\u0016\u0010R\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010PR\u0016\u0010S\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010PR\u0016\u0010U\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010TR\u0016\u0010V\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010TR\u0016\u0010W\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010TR\u0016\u0010X\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010TR\"\u0010]\u001a\u00020;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010P\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u0016\u0010^\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010PR\u0016\u0010_\u001a\u00020;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010PR\u0016\u0010a\u001a\u00020D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010`R\u0016\u0010c\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010bR\u0016\u0010d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010bR\u0016\u0010e\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010bR\u0016\u0010f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010bR&\u0010i\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0018\u00010\u0019R\u00020\u00000g0g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010hR,\u0010m\u001a\u001a\u0012\u0008\u0012\u00060\u0019R\u00020\u00000jj\u000c\u0012\u0008\u0012\u00060\u0019R\u00020\u0000`k8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010nR\u0014\u0010s\u001a\u00020p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010r\u00a8\u0006w"
    }
    d2 = {
        "Lteam/opay/pay/lockpattern/widget/LockPatternView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "q",
        "()V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "j",
        "(Landroid/graphics/Canvas;)V",
        "i",
        "h",
        "(Landroid/graphics/Canvas;II)V",
        "g",
        "s",
        "r",
        "x",
        "t",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "preCell",
        "nextCell",
        "Landroid/graphics/Paint;",
        "paint",
        "d",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V",
        "f",
        "k",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "e",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V",
        "",
        "ex",
        "ey",
        "l",
        "(FF)V",
        "m",
        "n",
        "y",
        "c",
        "(FF)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "cell",
        "b",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)V",
        "o",
        "p",
        "onDraw",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "dispatchTouchEvent",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;",
        "mode",
        "setPattern",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V",
        "w",
        "",
        "delay",
        "v",
        "(J)V",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$a;",
        "patternListener",
        "setOnPatternListener",
        "(Lteam/opay/pay/lockpattern/widget/LockPatternView$a;)V",
        "a",
        "F",
        "movingX",
        "movingY",
        "Z",
        "isActionMove",
        "isActionDown",
        "isActionUp",
        "I",
        "mWidth",
        "mHeight",
        "cellRadius",
        "cellInnerRadius",
        "getHasTrack",
        "()Z",
        "setHasTrack",
        "(Z)V",
        "hasTrack",
        "isInStealthMode",
        "isTactileFeedbackEnabled",
        "J",
        "delayTime",
        "Landroid/graphics/Paint;",
        "defaultPaint",
        "selectOutterPaint",
        "selectInnerPaint",
        "errorInnerPaint",
        "",
        "[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
        "mCells",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "sCells",
        "Lteam/opay/pay/lockpattern/widget/LockPatternView$a;",
        "patterListener",
        "Ljava/lang/Runnable;",
        "u",
        "Ljava/lang/Runnable;",
        "mClearPatternRunnable",
        "DisplayMode",
        "Cell",
        "Companion",
        "sdk_release"
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
.field public static final v:Lteam/opay/pay/lockpattern/widget/LockPatternView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final w:D


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:J

.field public n:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lteam/opay/pay/lockpattern/widget/LockPatternView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final u:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->v:Lteam/opay/pay/lockpattern/widget/LockPatternView$Companion;

    .line 8
    .line 9
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->w:D

    .line 20
    .line 21
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->e:Z

    .line 6
    iput-boolean p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    const-wide/16 v0, 0x258

    .line 7
    iput-wide v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->m:J

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->n:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->o:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q:Landroid/graphics/Paint;

    const/4 v0, 0x3

    .line 12
    new-array v1, v0, [[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-array v3, v0, [Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lsj8;

    invoke-direct {v0, p0}, Lsj8;-><init>(Lteam/opay/pay/lockpattern/widget/LockPatternView;)V

    iput-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->u:Ljava/lang/Runnable;

    .line 15
    sget-object v0, Lteam/opay/pay/R$styleable;->pattern:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p2, Lteam/opay/pay/R$styleable;->pattern_hastrack:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q()V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/lockpattern/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/lockpattern/widget/LockPatternView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->u(Lteam/opay/pay/lockpattern/widget/LockPatternView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final u(Lteam/opay/pay/lockpattern/widget/LockPatternView;)V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->DEFAULT:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->g(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->o()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    sget-object p1, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->NORMAL:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(FF)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;
    .locals 13

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_4

    .line 7
    .line 8
    iget-object v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    array-length v3, v3

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v4, v3, :cond_3

    .line 15
    .line 16
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 17
    .line 18
    aget-object v5, v5, v2

    .line 19
    .line 20
    aget-object v5, v5, v4

    .line 21
    .line 22
    sget-object v6, Lrj8;->a:Lrj8;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    int-to-float v8, v8

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const/4 v8, 0x0

    .line 34
    :goto_2
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    int-to-float v7, v7

    .line 41
    move v9, v7

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    const/4 v9, 0x0

    .line 44
    :goto_3
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 45
    .line 46
    int-to-float v7, v7

    .line 47
    const/4 v10, 0x4

    .line 48
    int-to-float v10, v10

    .line 49
    div-float v12, v7, v10

    .line 50
    .line 51
    const/high16 v10, 0x42a00000    # 80.0f

    .line 52
    .line 53
    move v7, v8

    .line 54
    move v8, v9

    .line 55
    move v9, v10

    .line 56
    move v10, p1

    .line 57
    move v11, p2

    .line 58
    invoke-virtual/range {v6 .. v12}, Lrj8;->a(FFFFFF)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    return-object v5

    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 p1, 0x0

    .line 72
    return-object p1
.end method

.method public final d(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 4
    .line 5
    invoke-static {v0}, Lkmf;->f(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->k(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, p3, p4}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, p2, p3, p4}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final e(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 4
    .line 5
    invoke-static {v0}, Lkmf;->f(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lrj8;->a:Lrj8;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->a:F

    .line 25
    .line 26
    iget v4, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b:F

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Lrj8;->c(FFFF)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 33
    .line 34
    int-to-float v2, v1

    .line 35
    cmpl-float v2, v0, v2

    .line 36
    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    div-float/2addr v1, v0

    .line 41
    iget v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->a:F

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    sub-float/2addr v2, v3

    .line 49
    mul-float v1, v1, v2

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    add-float v4, v1, v2

    .line 57
    .line 58
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 59
    .line 60
    int-to-float v1, v1

    .line 61
    div-float/2addr v1, v0

    .line 62
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b:F

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    int-to-float v2, v2

    .line 69
    sub-float/2addr v0, v2

    .line 70
    mul-float v1, v1, v0

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-float p1, p1

    .line 77
    add-float v5, v1, p1

    .line 78
    .line 79
    iget v6, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->a:F

    .line 80
    .line 81
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b:F

    .line 82
    .line 83
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object v3, p2

    .line 87
    move-object v8, p3

    .line 88
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void
.end method

.method public final f(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .line 1
    sget-object v0, Lrj8;->a:Lrj8;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    int-to-float v3, v3

    .line 18
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-float v4, v4

    .line 23
    invoke-virtual {v0, v1, v2, v3, v4}, Lrj8;->c(FFFF)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v1, v0

    .line 31
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sub-int/2addr v2, v3

    .line 40
    int-to-float v2, v2

    .line 41
    mul-float v1, v1, v2

    .line 42
    .line 43
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    add-float v4, v1, v2

    .line 49
    .line 50
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    div-float/2addr v1, v0

    .line 54
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    int-to-float v2, v2

    .line 64
    mul-float v1, v1, v2

    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    int-to-float v2, v2

    .line 71
    add-float v5, v1, v2

    .line 72
    .line 73
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    sub-float v1, v0, v1

    .line 77
    .line 78
    div-float/2addr v1, v0

    .line 79
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    sub-int/2addr v2, v3

    .line 88
    int-to-float v2, v2

    .line 89
    mul-float v1, v1, v2

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    add-float v6, v1, v2

    .line 97
    .line 98
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 99
    .line 100
    int-to-float v1, v1

    .line 101
    sub-float v1, v0, v1

    .line 102
    .line 103
    div-float/2addr v1, v0

    .line 104
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sub-int/2addr p2, v0

    .line 113
    int-to-float p2, p2

    .line 114
    mul-float v1, v1, p2

    .line 115
    .line 116
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    int-to-float p1, p1

    .line 121
    add-float v7, v1, p1

    .line 122
    .line 123
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object v3, p3

    .line 127
    move-object v8, p4

    .line 128
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    aget-object v0, v0, p3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 18
    .line 19
    aget-object v2, v2, p2

    .line 20
    .line 21
    aget-object v2, v2, p3

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_1
    iget v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    iget-object v4, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->o:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 41
    .line 42
    aget-object v0, v0, p2

    .line 43
    .line 44
    aget-object v0, v0, p3

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 56
    .line 57
    aget-object p2, v2, p2

    .line 58
    .line 59
    aget-object p2, p2, p3

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    int-to-float v1, p2

    .line 68
    :cond_3
    iget p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 69
    .line 70
    int-to-float p2, p2

    .line 71
    iget-object p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final getHasTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    aget-object v0, v0, p3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 18
    .line 19
    aget-object v2, v2, p2

    .line 20
    .line 21
    aget-object v2, v2, p3

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_1
    iget v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    iget-object v4, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->o:Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 41
    .line 42
    aget-object v0, v0, p2

    .line 43
    .line 44
    aget-object v0, v0, p3

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 56
    .line 57
    aget-object p2, v2, p2

    .line 58
    .line 59
    aget-object p2, p2, p3

    .line 60
    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    int-to-float v1, p2

    .line 68
    :cond_3
    iget p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 69
    .line 70
    int-to-float p2, p2

    .line 71
    iget-object p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 2
    .line 3
    aget-object v0, v0, p2

    .line 4
    .line 5
    aget-object v0, v0, p3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 18
    .line 19
    aget-object p2, v2, p2

    .line 20
    .line 21
    aget-object p2, p2, p3

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float v1, p2

    .line 30
    :cond_1
    iget p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 31
    .line 32
    int-to-float p2, p2

    .line 33
    iget-object p3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->n:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ge v2, v0, :cond_a

    .line 20
    .line 21
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 22
    .line 23
    aget-object v5, v5, v2

    .line 24
    .line 25
    array-length v5, v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_1
    if-ge v6, v5, :cond_9

    .line 28
    .line 29
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 30
    .line 31
    aget-object v7, v7, v2

    .line 32
    .line 33
    aget-object v7, v7, v6

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v7}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->d()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    const/4 v7, 0x0

    .line 47
    :goto_2
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ne v8, v4, :cond_3

    .line 55
    .line 56
    iget-boolean v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, p1, v2, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->g(Landroid/graphics/Canvas;II)V

    .line 61
    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_2
    invoke-virtual {p0, p1, v2, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i(Landroid/graphics/Canvas;II)V

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0, p1, v2, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i(Landroid/graphics/Canvas;II)V

    .line 78
    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_5
    :goto_4
    if-nez v7, :cond_6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-ne v7, v3, :cond_8

    .line 89
    .line 90
    iget-boolean v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 91
    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0, p1, v2, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h(Landroid/graphics/Canvas;II)V

    .line 95
    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i(Landroid/graphics/Canvas;II)V

    .line 99
    .line 100
    .line 101
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_a
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-lez v0, :cond_e

    .line 114
    .line 115
    iget-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 116
    .line 117
    if-eqz v0, :cond_e

    .line 118
    .line 119
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v1, "get(...)"

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    check-cast v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 131
    .line 132
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/4 v5, 0x1

    .line 139
    :goto_6
    if-ge v5, v2, :cond_d

    .line 140
    .line 141
    iget-object v6, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    check-cast v6, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 151
    .line 152
    invoke-virtual {v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->d()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-ne v7, v4, :cond_b

    .line 157
    .line 158
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {p0, v0, v6, p1, v7}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->d(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_b
    invoke-virtual {v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->d()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-ne v7, v3, :cond_c

    .line 169
    .line 170
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {p0, v0, v6, p1, v7}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->d(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 173
    .line 174
    .line 175
    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 176
    .line 177
    move-object v0, v6

    .line 178
    goto :goto_6

    .line 179
    :cond_d
    iget-boolean v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c:Z

    .line 180
    .line 181
    if-eqz v1, :cond_e

    .line 182
    .line 183
    iget-boolean v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->e:Z

    .line 184
    .line 185
    if-nez v1, :cond_e

    .line 186
    .line 187
    iget-object v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {p0, v0, p1, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->e(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    :cond_e
    return-void
.end method

.method public final k(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr p2, v0

    .line 22
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-le p2, v3, :cond_2

    .line 27
    .line 28
    iget-object p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    aget-object p1, p2, p1

    .line 35
    .line 36
    aget-object v2, p1, v3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sub-int/2addr p2, v0

    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-le p2, v3, :cond_2

    .line 63
    .line 64
    iget-object p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 65
    .line 66
    aget-object p2, p2, v3

    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    aget-object v2, p2, p1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sub-int/2addr v0, v1

    .line 84
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-le v0, v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    sub-int/2addr p2, p1

    .line 99
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-le p1, v3, :cond_2

    .line 104
    .line 105
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 106
    .line 107
    aget-object p1, p1, v3

    .line 108
    .line 109
    aget-object v2, p1, v3

    .line 110
    .line 111
    :cond_2
    :goto_0
    return-object v2
.end method

.method public final l(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->e:Z

    .line 8
    .line 9
    sget-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->DEFAULT:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->t:Lteam/opay/pay/lockpattern/widget/LockPatternView$a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$a;->a()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c(FF)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final m(FF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c:Z

    .line 3
    .line 4
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->a:F

    .line 5
    .line 6
    iput p2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b:F

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c(FF)Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->b(Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p1, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->NORMAL:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->c:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->d:Z

    .line 8
    .line 9
    sget-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;->NORMAL:Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->t:Lteam/opay/pay/lockpattern/widget/LockPatternView$a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView$a;->b(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljmf;->r(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    mul-int/lit8 p1, p1, 0x7

    .line 15
    .line 16
    div-int/lit8 p1, p1, 0x9

    .line 17
    .line 18
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f:I

    .line 19
    .line 20
    iput p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->g:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->x()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq p1, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->m(FF)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->n()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->l(FF)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return v2
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->t()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r()V
    .locals 14

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v9, 0x0

    .line 10
    :goto_0
    const/4 v10, 0x3

    .line 11
    if-ge v9, v10, :cond_6

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    :goto_1
    if-ge v11, v10, :cond_5

    .line 15
    .line 16
    iget-object v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 17
    .line 18
    aget-object v12, v2, v9

    .line 19
    .line 20
    new-instance v13, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 21
    .line 22
    mul-int v2, v0, v11

    .line 23
    .line 24
    iget v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 25
    .line 26
    add-int v4, v2, v3

    .line 27
    .line 28
    mul-int v2, v0, v9

    .line 29
    .line 30
    add-int v5, v2, v3

    .line 31
    .line 32
    mul-int/lit8 v2, v9, 0x3

    .line 33
    .line 34
    add-int/2addr v2, v11

    .line 35
    add-int/lit8 v8, v2, 0x1

    .line 36
    .line 37
    move-object v2, v13

    .line 38
    move-object v3, p0

    .line 39
    move v6, v9

    .line 40
    move v7, v11

    .line 41
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;-><init>(Lteam/opay/pay/lockpattern/widget/LockPatternView;IIIII)V

    .line 42
    .line 43
    .line 44
    aput-object v13, v12, v11

    .line 45
    .line 46
    iget v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 47
    .line 48
    iget-object v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 49
    .line 50
    aget-object v3, v3, v9

    .line 51
    .line 52
    aget-object v3, v3, v11

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    invoke-virtual {v3}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->e()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    move-object v3, v4

    .line 67
    :goto_2
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 68
    .line 69
    aget-object v5, v5, v9

    .line 70
    .line 71
    aget-object v5, v5, v11

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-virtual {v5}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->f()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    goto :goto_3

    .line 84
    :cond_1
    move-object v5, v4

    .line 85
    :goto_3
    iget-object v6, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 86
    .line 87
    aget-object v6, v6, v9

    .line 88
    .line 89
    aget-object v6, v6, v11

    .line 90
    .line 91
    if-eqz v6, :cond_2

    .line 92
    .line 93
    invoke-virtual {v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->c()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    goto :goto_4

    .line 102
    :cond_2
    move-object v6, v4

    .line 103
    :goto_4
    iget-object v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 104
    .line 105
    aget-object v7, v7, v9

    .line 106
    .line 107
    aget-object v7, v7, v11

    .line 108
    .line 109
    if-eqz v7, :cond_3

    .line 110
    .line 111
    invoke-virtual {v7}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->a()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    goto :goto_5

    .line 120
    :cond_3
    move-object v7, v4

    .line 121
    :goto_5
    iget-object v8, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 122
    .line 123
    aget-object v8, v8, v9

    .line 124
    .line 125
    aget-object v8, v8, v11

    .line 126
    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    invoke-virtual {v8}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->b()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v12, "cellRadius = "

    .line 143
    .line 144
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v2, ", "

    .line 151
    .line 152
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v11, v11, 0x1

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_6
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljmf;->r(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    div-int/lit8 v0, v0, 0x5a

    .line 17
    .line 18
    iput v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljmf;->r(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    div-int/lit8 v0, v0, 0x1e

    .line 32
    .line 33
    iput v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->i:I

    .line 34
    .line 35
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f:I

    .line 36
    .line 37
    iget v2, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 38
    .line 39
    iget v3, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->g:I

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "mWidth = "

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "  cellRadius = "

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " cellInnerRadius = "

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " mHeight = "

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final setHasTrack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOnPatternListener(Lteam/opay/pay/lockpattern/widget/LockPatternView$a;)V
    .locals 1
    .param p1    # Lteam/opay/pay/lockpattern/widget/LockPatternView$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "patternListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->t:Lteam/opay/pay/lockpattern/widget/LockPatternView$a;

    .line 7
    .line 8
    return-void
.end method

.method public final setPattern(Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;)V
    .locals 4
    .param p1    # Lteam/opay/pay/lockpattern/widget/LockPatternView$DisplayMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$b;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const-string v1, "next(...)"

    .line 16
    .line 17
    const-string v2, "iterator(...)"

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    if-ne p1, v3, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast v2, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->g(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 56
    .line 57
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast v0, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->g(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->s:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->n:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget-object v1, Lhh2;->a:Lhh2;

    .line 4
    .line 5
    sget v2, Lteam/opay/pay/R$color;->osdk_EBEBEB:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lhh2;->a(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->o:Landroid/graphics/Paint;

    .line 24
    .line 25
    sget v4, Lteam/opay/pay/R$color;->omain_color_E2F5EB:I

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Lhh2;->a(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->p:Landroid/graphics/Paint;

    .line 41
    .line 42
    sget v4, Lteam/opay/pay/R$color;->mint:I

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Lhh2;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->q:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget v4, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Lhh2;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final v(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->m:J

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->u:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->u:Ljava/lang/Runnable;

    .line 15
    .line 16
    iget-wide v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->m:J

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->u:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x()V
    .locals 8

    .line 1
    iget v0, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->f:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/4 v3, 0x3

    .line 11
    if-ge v2, v3, :cond_3

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_1
    if-ge v4, v3, :cond_2

    .line 15
    .line 16
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 17
    .line 18
    aget-object v5, v5, v2

    .line 19
    .line 20
    aget-object v5, v5, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    mul-int v6, v0, v4

    .line 25
    .line 26
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 27
    .line 28
    add-int/2addr v6, v7

    .line 29
    invoke-virtual {v5, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->h(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v5, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->r:[[Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;

    .line 33
    .line 34
    aget-object v5, v5, v2

    .line 35
    .line 36
    aget-object v5, v5, v4

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    mul-int v6, v0, v2

    .line 41
    .line 42
    iget v7, p0, Lteam/opay/pay/lockpattern/widget/LockPatternView;->h:I

    .line 43
    .line 44
    add-int/2addr v6, v7

    .line 45
    invoke-virtual {v5, v6}, Lteam/opay/pay/lockpattern/widget/LockPatternView$Cell;->i(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-void
.end method
