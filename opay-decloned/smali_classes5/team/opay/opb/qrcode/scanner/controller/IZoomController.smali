.class public abstract Lteam/opay/opb/qrcode/scanner/controller/IZoomController;
.super Ljava/lang/Object;
.source "IZoomController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u0006*\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\"\u0010#J\u0015\u0010$\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010#J\r\u0010%\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010\u0003J\u0015\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\'\u0010#J\r\u0010(\u001a\u00020\u0004\u00a2\u0006\u0004\u0008(\u0010\u0015J\r\u0010)\u001a\u00020\u0004\u00a2\u0006\u0004\u0008)\u0010\u0015J\r\u0010*\u001a\u00020\u0004\u00a2\u0006\u0004\u0008*\u0010\u0015J\r\u0010+\u001a\u00020\u0004\u00a2\u0006\u0004\u0008+\u0010\u0015J\r\u0010,\u001a\u00020\u0006\u00a2\u0006\u0004\u0008,\u0010\u0019J\u0017\u0010/\u001a\u00020\n2\u0006\u0010.\u001a\u00020-H\u0007\u00a2\u0006\u0004\u0008/\u00100J)\u00101\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u00081\u0010\u000cJ\u000f\u00102\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00082\u0010\u0003R\u001a\u00108\u001a\u0002038\u0004X\u0084D\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u0014\u0010:\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00089\u0010\u0014R\u0014\u0010<\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008;\u0010\u0014R\u001b\u0010B\u001a\u00020=8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010AR\"\u0010F\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u0014\u001a\u0004\u0008D\u0010\u0019\"\u0004\u0008E\u0010\u001cR\"\u0010J\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010\u0014\u001a\u0004\u0008H\u0010\u0019\"\u0004\u0008I\u0010\u001cR\u0016\u0010M\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010O\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010LR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010U\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010\u0014R\u0014\u0010W\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008V\u0010\u0014R\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u0014R\u0016\u0010[\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010\u0017R\u0014\u0010]\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\\\u0010\u0017R\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0016\u0010c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010LR\u0014\u0010f\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010eR\u0016\u0010h\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010LR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010o\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010n\u00a8\u0006p"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/IZoomController;",
        "",
        "<init>",
        "()V",
        "",
        "isAutoZoomRatio",
        "",
        "zoomValue",
        "",
        "animatorDuration",
        "",
        "C",
        "(ZFLjava/lang/Long;)V",
        "start",
        "end",
        "q",
        "(FFJ)V",
        "B",
        "(F)F",
        "u",
        "F",
        "()Z",
        "t",
        "J",
        "x",
        "()F",
        "targetZoomValue",
        "S",
        "(F)V",
        "minZoomRatio",
        "maxZoomRatio",
        "D",
        "(Ljava/lang/Float;Ljava/lang/Float;)V",
        "enable",
        "Q",
        "(Z)V",
        "P",
        "L",
        "focusStopZoom",
        "R",
        "E",
        "H",
        "G",
        "I",
        "A",
        "Landroid/view/View;",
        "previewView",
        "T",
        "(Landroid/view/View;)V",
        "M",
        "K",
        "",
        "a",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "b",
        "maxZoomRatioLimit",
        "c",
        "minZoomRatioLimit",
        "Landroid/content/Context;",
        "d",
        "Lid8;",
        "getAppContext",
        "()Landroid/content/Context;",
        "appContext",
        "e",
        "z",
        "setMMinZoomRatio",
        "mMinZoomRatio",
        "f",
        "y",
        "setMMaxZoomRatio",
        "mMaxZoomRatio",
        "g",
        "Z",
        "isEnableAutoZoom",
        "h",
        "isEnableGestureZoom",
        "Landroid/os/Handler;",
        "i",
        "Landroid/os/Handler;",
        "handler",
        "j",
        "pendingScale",
        "k",
        "sensitivity",
        "l",
        "lastZoomRatio",
        "m",
        "doubleTapAnimatorDuration",
        "n",
        "zoomDelayTime",
        "Landroid/animation/ValueAnimator;",
        "o",
        "Landroid/animation/ValueAnimator;",
        "zoomAnimator",
        "p",
        "isZoomRatioProcessing",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isFocusStopZoom",
        "r",
        "isDestroyed",
        "Landroid/view/ScaleGestureDetector;",
        "s",
        "Landroid/view/ScaleGestureDetector;",
        "scaleGestureDetector",
        "Landroid/view/GestureDetector;",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:F

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z

.field public i:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:F

.field public final k:F

.field public l:F

.field public m:J

.field public final n:J

.field public o:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Z

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Z

.field public s:Landroid/view/ScaleGestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "OpayScannerView"

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/high16 v0, 0x41000000    # 8.0f

    .line 9
    .line 10
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->b:F

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->c:F

    .line 15
    .line 16
    new-instance v1, Lib7;

    .line 17
    .line 18
    invoke-direct {v1}, Lib7;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->d:Lid8;

    .line 26
    .line 27
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->e:F

    .line 28
    .line 29
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->f:F

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->h:Z

    .line 35
    .line 36
    new-instance v1, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 46
    .line 47
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->j:F

    .line 48
    .line 49
    const v1, 0x3fa66666    # 1.3f

    .line 50
    .line 51
    .line 52
    iput v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->k:F

    .line 53
    .line 54
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->l:F

    .line 55
    .line 56
    const-wide/16 v0, 0x96

    .line 57
    .line 58
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->m:J

    .line 59
    .line 60
    const-wide/16 v0, 0x12c

    .line 61
    .line 62
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->n:J

    .line 63
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic N(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->M(ZFLjava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: setCommonZoomRatio"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final O(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->C(ZFLjava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final U(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->t:Landroid/view/GestureDetector;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->s:Landroid/view/ScaleGestureDetector;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 p0, 0x1

    .line 16
    return p0
.end method

.method public static synthetic a(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->v(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->O(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->w(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->r(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->s()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->U(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->t()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic h(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->l:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic j(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->j:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->B(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)F
    .locals 0

    .line 1
    iget p0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->k:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic m(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->l:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic p(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final r(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "anim"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->r:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->S(F)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final s()Landroid/content/Context;
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

.method public static final v(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 3
    .line 4
    return-void
.end method

.method public static final w(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final A()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public final B(F)F
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->e:F

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->f:F

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lkotlin/ranges/c;->h(FFF)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final C(ZFLjava/lang/Long;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->J()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 14
    .line 15
    if-nez v0, :cond_7

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float v0, p2, v0

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->G()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    return-void

    .line 35
    :cond_3
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->x()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    mul-float p2, p2, v0

    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->B(F)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->B(F)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :goto_0
    cmpg-float p2, p1, v0

    .line 56
    .line 57
    if-nez p2, :cond_5

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    if-eqz p3, :cond_6

    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    const-wide/16 v3, 0x0

    .line 70
    .line 71
    cmp-long p2, v1, v3

    .line 72
    .line 73
    if-lez p2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide p2

    .line 79
    invoke-virtual {p0, v0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->q(FFJ)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->S(F)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->u()V

    .line 87
    .line 88
    .line 89
    :cond_7
    :goto_1
    return-void
.end method

.method public final D(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->c:F

    .line 8
    .line 9
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->b:F

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lkotlin/ranges/c;->h(FFF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->e:F

    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->c:F

    .line 24
    .line 25
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->b:F

    .line 26
    .line 27
    invoke-static {p1, p2, v0}, Lkotlin/ranges/c;->h(FFF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->f:F

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final F()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->J()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->J()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract J()Z
.end method

.method public K()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->r:Z

    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    return-void
.end method

.method public final L()V
    .locals 6

    .line 1
    iget v2, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->e:F

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->N(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final M(ZFLjava/lang/Long;)V
    .locals 2
    .param p3    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->F()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    new-instance v1, Lhb7;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2, p3}, Lhb7;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;ZFLjava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->C(ZFLjava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_0
    return-void
.end method

.method public final P(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final R(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract S(F)V
.end method

.method public final T(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "previewView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$b;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->s:Landroid/view/ScaleGestureDetector;

    .line 21
    .line 22
    new-instance v0, Landroid/view/GestureDetector;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$c;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->t:Landroid/view/GestureDetector;

    .line 37
    .line 38
    new-instance v0, Lgb7;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lgb7;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final q(FFJ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [F

    .line 14
    .line 15
    aput p1, v1, v0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    aput p2, v1, p1

    .line 19
    .line 20
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 28
    .line 29
    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Llb7;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Llb7;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$a;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController$a;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->o:Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    .line 61
    .line 62
    const-string p3, "ScanView Exception animateZoom: "

    .line 63
    .line 64
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lere;->a:Lere;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lere;->b(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 73
    .line 74
    :goto_2
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->p:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->H()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljb7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljb7;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->n:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lkb7;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lkb7;-><init>(Lteam/opay/opb/qrcode/scanner/controller/IZoomController;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public abstract x()F
.end method

.method public final y()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public final z()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/controller/IZoomController;->e:F

    .line 2
    .line 3
    return v0
.end method
