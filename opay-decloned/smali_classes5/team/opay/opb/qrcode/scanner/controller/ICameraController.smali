.class public abstract Lteam/opay/opb/qrcode/scanner/controller/ICameraController;
.super Ljava/lang/Object;
.source "ICameraController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/scanner/controller/ICameraController$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J1\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J=\u0010#\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!H&\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010)\u001a\u0004\u0018\u00010!2\u0008\u0010(\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\rH&\u00a2\u0006\u0004\u0008+\u0010\u000fJ\u000f\u0010,\u001a\u00020\rH&\u00a2\u0006\u0004\u0008,\u0010\u000fJ\u000f\u0010-\u001a\u00020\nH&\u00a2\u0006\u0004\u0008-\u0010\u0003J\u000f\u0010.\u001a\u00020\nH&\u00a2\u0006\u0004\u0008.\u0010\u0003J\u000f\u0010/\u001a\u00020\nH&\u00a2\u0006\u0004\u0008/\u0010\u0003J\u000f\u00100\u001a\u00020\nH&\u00a2\u0006\u0004\u00080\u0010\u0003J\u000f\u00101\u001a\u00020\nH&\u00a2\u0006\u0004\u00081\u0010\u0003J\u000f\u00102\u001a\u00020\nH&\u00a2\u0006\u0004\u00082\u0010\u0003R\u001b\u00108\u001a\u0002038DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\u001b\u0010=\u001a\u0002098TX\u0094\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u00105\u001a\u0004\u0008;\u0010<R\u001f\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010?0>8\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u001d\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\r0>8\u0006\u00a2\u0006\u000c\n\u0004\u0008E\u0010A\u001a\u0004\u0008F\u0010CR\u001d\u0010K\u001a\u0008\u0012\u0004\u0012\u00020H0>8\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010A\u001a\u0004\u0008J\u0010CR\u001d\u0010O\u001a\u0008\u0012\u0004\u0012\u00020L0>8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010A\u001a\u0004\u0008N\u0010CR$\u0010V\u001a\u0004\u0018\u00010L8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u0016\u0010X\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010WR\u0014\u0010Y\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008,\u0010WR\u0014\u0010Z\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008J\u0010WR\u001a\u0010_\u001a\u00020[8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u0010\\\u001a\u0004\u0008]\u0010^R\u001a\u0010a\u001a\u00020[8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008F\u0010\\\u001a\u0004\u0008`\u0010^R$\u0010g\u001a\u0004\u0018\u00010\u00138\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR$\u0010m\u001a\u0004\u0018\u00010\u001f8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010h\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u0018\u0010o\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010nR\"\u0010t\u001a\u00020\u00118\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010p\u001a\u0004\u0008q\u0010r\"\u0004\u0008W\u0010sR\"\u0010y\u001a\u00020\r8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010u\u001a\u0004\u0008v\u0010\u000f\"\u0004\u0008w\u0010x\u00a8\u0006z"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/controller/ICameraController;",
        "",
        "<init>",
        "()V",
        "",
        "p",
        "()J",
        "",
        "imageWidth",
        "imageHeight",
        "",
        "B",
        "(II)V",
        "",
        "h",
        "()Z",
        "C",
        "",
        "scanType",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "imageAnalyzer",
        "isEnableAutoZoom",
        "isEnableGestureZoom",
        "t",
        "(Ljava/lang/String;Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;ZZ)V",
        "Landroid/app/Activity;",
        "activity",
        "Lag8;",
        "lifecycleOwner",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "Leb7;",
        "finderView",
        "Landroid/graphics/Rect;",
        "customFrameRect",
        "K",
        "(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V",
        "F",
        "(Landroid/graphics/Rect;)V",
        "Landroid/view/View;",
        "previewView",
        "o",
        "(Landroid/view/View;)Landroid/graphics/Rect;",
        "v",
        "i",
        "L",
        "y",
        "E",
        "x",
        "D",
        "A",
        "Landroid/content/Context;",
        "a",
        "Lid8;",
        "getAppContext",
        "()Landroid/content/Context;",
        "appContext",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "b",
        "s",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "performance",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "k",
        "()Landroidx/lifecycle/MutableLiveData;",
        "cameraOpenFailedLiveData",
        "d",
        "l",
        "cameraReadyLiveData",
        "Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;",
        "e",
        "j",
        "cameraDecodeResultLiveData",
        "Lteam/opay/opb/qrcode/core/data/ImageItem;",
        "f",
        "m",
        "cameraStartDecodeLiveData",
        "g",
        "Lteam/opay/opb/qrcode/core/data/ImageItem;",
        "getDecodeImageItem",
        "()Lteam/opay/opb/qrcode/core/data/ImageItem;",
        "setDecodeImageItem",
        "(Lteam/opay/opb/qrcode/core/data/ImageItem;)V",
        "decodeImageItem",
        "J",
        "lastProcessTime",
        "lowDeviceInterval",
        "highDeviceInterval",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "n",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "focusStopDecode",
        "w",
        "isHandleDecodeImage",
        "Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "r",
        "()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;",
        "I",
        "(Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;)V",
        "mScanImageAnalyzer",
        "Leb7;",
        "q",
        "()Leb7;",
        "H",
        "(Leb7;)V",
        "mFinderView",
        "Landroid/graphics/Rect;",
        "mCustomFrameRect",
        "Ljava/lang/String;",
        "getMScanType",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "mScanType",
        "Z",
        "u",
        "G",
        "(Z)V",
        "isDestroyed",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/ImageItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lteam/opay/opb/qrcode/core/data/ImageItem;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:J

.field public final i:J

.field public final j:J

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Leb7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx77;

    .line 5
    .line 6
    invoke-direct {v0}, Lx77;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->a:Lid8;

    .line 14
    .line 15
    new-instance v0, Ly77;

    .line 16
    .line 17
    invoke-direct {v0}, Ly77;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->b:Lid8;

    .line 25
    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->c:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->d:Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->e:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->f:Landroidx/lifecycle/MutableLiveData;

    .line 53
    .line 54
    const-wide/16 v0, 0x64

    .line 55
    .line 56
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->i:J

    .line 57
    .line 58
    const-wide/16 v0, 0x50

    .line 59
    .line 60
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->j:J

    .line 61
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    sget-object v0, La4d;->w:La4d$a;

    .line 78
    .line 79
    invoke-virtual {v0}, La4d$a;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->p:Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method

.method public static synthetic e()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->g()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->z()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final g()Landroid/content/Context;
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

.method public static final z()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
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
.method public abstract A()V
.end method

.method public final B(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->g:Lteam/opay/opb/qrcode/core/data/ImageItem;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/ImageItem;->b()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->g:Lteam/opay/opb/qrcode/core/data/ImageItem;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/data/ImageItem;->a()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, p2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    new-instance v0, Lteam/opay/opb/qrcode/core/data/ImageItem;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v0, p1, p2}, Lteam/opay/opb/qrcode/core/data/ImageItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->g:Lteam/opay/opb/qrcode/core/data/ImageItem;

    .line 50
    .line 51
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->f:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->h:J

    .line 6
    .line 7
    return-void
.end method

.method public abstract D()V
.end method

.method public abstract E()V
.end method

.method public final F(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->o:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-void
.end method

.method public final G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public final H(Leb7;)V
    .locals 0
    .param p1    # Leb7;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n:Leb7;

    .line 2
    .line 3
    return-void
.end method

.method public final I(Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;)V
    .locals 0
    .param p1    # Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->m:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 2
    .line 3
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public abstract K(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leb7;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract L()V
.end method

.method public final h()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->h:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->p()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public abstract i()Z
.end method

.method public final j()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/CommonDecodeResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->c:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->d:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/opb/qrcode/core/data/ImageItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n:Leb7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Leb7;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n:Leb7;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Leb7;->getFramingRect()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->o:Landroid/graphics/Rect;

    .line 25
    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-lez v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-gtz v2, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v1, v0

    .line 42
    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 43
    .line 44
    if-eqz p1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-gtz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lez v0, :cond_5

    .line 63
    .line 64
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return-object v1
.end method

.method public final p()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->s()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lteam/opay/opb/qrcode/scanner/controller/ICameraController$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->j:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 26
    .line 27
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    iget-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->i:J

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-wide v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->i:J

    .line 35
    .line 36
    :goto_0
    return-wide v0
.end method

.method public final q()Leb7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->n:Leb7;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->m:Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->b:Lid8;

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

.method public abstract t(Ljava/lang/String;Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;ZZ)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/opb/qrcode/core/common/IImageAnalyzer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract v()Z
.end method

.method public final w()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract x()V
.end method

.method public abstract y()V
.end method
