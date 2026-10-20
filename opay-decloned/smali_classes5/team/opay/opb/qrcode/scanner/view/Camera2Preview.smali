.class public final Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
.super Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;
.source "Camera2Preview.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0003n\u0084\u0001\u0008\u0000\u0018\u0000 <2\u00020\u0001:\u0002\u00a6\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000bJ\u000f\u0010\u0014\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\u000f\u0010\u0015\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\rJ\u000f\u0010\u0017\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\rJ%\u0010\u001d\u001a\u0010\u0012\u000c\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b0\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ3\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J%\u0010$\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008&\u0010\rJ\u001f\u0010)\u001a\u00020\t2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008)\u0010\u000bJ\u001f\u0010*\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008*\u0010\u000bJ\u0015\u0010-\u001a\u00020\t2\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\r\u0010/\u001a\u00020\u000e\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\u000e\u00a2\u0006\u0004\u00081\u00100J\r\u00102\u001a\u00020\t\u00a2\u0006\u0004\u00082\u0010\rJ\r\u00103\u001a\u00020\t\u00a2\u0006\u0004\u00083\u0010\rJ\r\u00104\u001a\u00020\t\u00a2\u0006\u0004\u00084\u0010\rJ\u001b\u00109\u001a\u0008\u0012\u0004\u0012\u000208072\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020\t\u00a2\u0006\u0004\u0008;\u0010\rJ\r\u0010<\u001a\u00020\u000e\u00a2\u0006\u0004\u0008<\u00100J\u0015\u0010?\u001a\u00020\t2\u0006\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\r\u0010A\u001a\u00020=\u00a2\u0006\u0004\u0008A\u0010BJ\r\u0010C\u001a\u00020=\u00a2\u0006\u0004\u0008C\u0010BJ\r\u0010D\u001a\u00020\t\u00a2\u0006\u0004\u0008D\u0010\rJ\r\u0010E\u001a\u00020\t\u00a2\u0006\u0004\u0008E\u0010\rJ\r\u0010G\u001a\u00020F\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u0008I\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010P\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010<R\u0016\u0010R\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010<R\u0016\u0010T\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010<R\u0016\u0010W\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010g\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u0010i\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010<R\u0016\u0010k\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010\nR\u0016\u0010m\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010VR\u0014\u0010q\u001a\u00020n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u0010#\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0016\u0010v\u001a\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001a\u0010\u0081\u0001\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u007f\u0010\u0080\u0001R\u001b\u0010\u0083\u0001\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0001\u0010\u0080\u0001R\u0017\u0010\u0086\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008?\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0014\u0010\u0088\u0001R\u001b\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0013\u0010\u008b\u0001R\u001b\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u000c\u0010\u008e\u0001R\u001b\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u0091\u0001R\u0017\u0010\u0095\u0001\u001a\u00030\u0093\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u001d\u0010\u0094\u0001R\u001b\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00081\u0010\u0097\u0001R\u001b\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0099\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008/\u0010\u009a\u0001R\u0017\u0010\u009e\u0001\u001a\u00030\u009c\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008$\u0010\u009d\u0001R\u0018\u0010\u00a0\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009f\u0001\u0010VR\u0017\u0010\u00a1\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010VR\u0017\u0010\u00a2\u0001\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\nR\u0014\u0010\u00a5\u0001\u001a\u00020\u00068F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "width",
        "height",
        "",
        "I",
        "(II)V",
        "w",
        "()V",
        "",
        "Q",
        "(II)Z",
        "viewWidth",
        "viewHeight",
        "v",
        "u",
        "O",
        "R",
        "U",
        "Landroid/hardware/camera2/CameraManager;",
        "cameraManager",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "y",
        "(Landroid/hardware/camera2/CameraManager;)Ljava/util/List;",
        "cameraIds",
        "facing",
        "x",
        "(Ljava/util/List;Landroid/hardware/camera2/CameraManager;I)Ljava/util/List;",
        "cameraId",
        "B",
        "(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/lang/String;",
        "E",
        "previewWidth",
        "previewHeight",
        "P",
        "L",
        "Landroid/media/Image;",
        "image",
        "N",
        "(Landroid/media/Image;)V",
        "A",
        "()Z",
        "z",
        "W",
        "S",
        "V",
        "Landroid/hardware/camera2/params/StreamConfigurationMap;",
        "map",
        "",
        "Landroid/util/Size;",
        "D",
        "(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;",
        "K",
        "F",
        "",
        "newZoom",
        "t",
        "(F)V",
        "getCurrentZoom",
        "()F",
        "getMaxZoomRatio",
        "J",
        "M",
        "Landroid/view/TextureView;",
        "getTextureView",
        "()Landroid/view/TextureView;",
        "getPreviewSize",
        "()Landroid/util/Size;",
        "Landroid/graphics/Rect;",
        "c",
        "Landroid/graphics/Rect;",
        "sensorArraySize",
        "d",
        "maxDigitalZoom",
        "e",
        "maxEnableZoom",
        "f",
        "minEnableZoom",
        "g",
        "Z",
        "isDestroyed",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "h",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "getPerformance",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "setPerformance",
        "(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V",
        "performance",
        "Lhv1;",
        "i",
        "Lhv1;",
        "getCameraPreviewListener",
        "()Lhv1;",
        "setCameraPreviewListener",
        "(Lhv1;)V",
        "cameraPreviewListener",
        "j",
        "mAspectTolerance",
        "k",
        "mImageFormat",
        "l",
        "isScanningPaused",
        "team/opay/opb/qrcode/scanner/view/Camera2Preview$b",
        "m",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;",
        "mSurfaceTextureListener",
        "n",
        "Ljava/lang/String;",
        "o",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;",
        "textureView",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "p",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "captureSession",
        "Landroid/hardware/camera2/CameraDevice;",
        "q",
        "Landroid/hardware/camera2/CameraDevice;",
        "cameraDevice",
        "r",
        "Landroid/util/Size;",
        "previewSize",
        "s",
        "readerOutputSize",
        "team/opay/opb/qrcode/scanner/view/Camera2Preview$c",
        "Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;",
        "stateCallback",
        "Landroid/os/HandlerThread;",
        "Landroid/os/HandlerThread;",
        "backgroundThread",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "backgroundHandler",
        "Landroid/media/ImageReader;",
        "Landroid/media/ImageReader;",
        "imageReader",
        "Landroid/view/Surface;",
        "Landroid/view/Surface;",
        "surface",
        "Landroid/media/ImageReader$OnImageAvailableListener;",
        "Landroid/media/ImageReader$OnImageAvailableListener;",
        "onImageAvailableListener",
        "Landroid/hardware/camera2/CaptureRequest$Builder;",
        "Landroid/hardware/camera2/CaptureRequest$Builder;",
        "previewRequestBuilder",
        "Landroid/hardware/camera2/CaptureRequest;",
        "Landroid/hardware/camera2/CaptureRequest;",
        "previewRequest",
        "Ljava/util/concurrent/Semaphore;",
        "Ljava/util/concurrent/Semaphore;",
        "cameraOpenCloseLock",
        "C",
        "flashSupported",
        "flashIsOn",
        "sensorOrientation",
        "getDisplayOrientation",
        "()I",
        "displayOrientation",
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
.field public static final F:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Landroid/hardware/camera2/CaptureRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final B:Ljava/util/concurrent/Semaphore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public C:Z

.field public D:Z

.field public E:I

.field public c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:F

.field public e:F

.field public f:F

.field public volatile g:Z

.field public h:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lhv1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:F

.field public k:I

.field public l:Z

.field public final m:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;

.field public o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroid/hardware/camera2/CameraCaptureSession;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Landroid/hardware/camera2/CameraDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroid/os/HandlerThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Landroid/media/ImageReader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Landroid/view/Surface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final y:Landroid/media/ImageReader$OnImageAvailableListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->F:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$Companion;

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

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v5, 0x6

    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    invoke-direct/range {v1 .. v6}, Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->d:F

    .line 18
    .line 19
    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    .line 21
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->e:F

    .line 22
    .line 23
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 24
    .line 25
    sget-object p1, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_LOW:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 28
    .line 29
    const p1, 0x3e4ccccd    # 0.2f

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->j:F

    .line 33
    .line 34
    const/16 p1, 0x23

    .line 35
    .line 36
    iput p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->k:I

    .line 37
    .line 38
    new-instance p1, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->m:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;

    .line 44
    .line 45
    iput-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 46
    .line 47
    new-instance p1, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->t:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;

    .line 53
    .line 54
    new-instance p1, Lvq1;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lvq1;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->y:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 60
    .line 61
    new-instance p1, Ljava/util/concurrent/Semaphore;

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B:Ljava/util/concurrent/Semaphore;

    .line 68
    .line 69
    return-void
.end method

.method public static synthetic C(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final G(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/media/ImageReader;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->l:Z

    .line 3
    .line 4
    if-nez v1, :cond_4

    .line 5
    .line 6
    iget-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ne v2, p1, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne v2, v1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->N(Landroid/media/Image;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    if-eqz p1, :cond_5

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lhv1;->d(Landroid/media/Image;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    new-instance v2, Lxq1;

    .line 63
    .line 64
    invoke-direct {v2, p0, p1, v1}, Lxq1;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->N(Landroid/media/Image;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "acquireLatestImage(...)"

    .line 79
    .line 80
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->N(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->N(Landroid/media/Image;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_2
    return-void
.end method

.method public static final H(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->L(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final T(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 5

    .line 1
    sget-object v0, Luk8;->c:Luk8;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "camera preview openCamera texture width: "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " height: "

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->I(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic b(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->H(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/media/ImageReader;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->G(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/media/ImageReader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->T(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic o(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->I(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic r(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic s(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->A:Landroid/hardware/camera2/CaptureRequest;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->C:Z

    .line 2
    .line 3
    return v0
.end method

.method public final B(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->y(Landroid/hardware/camera2/CameraManager;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x(Ljava/util/List;Landroid/hardware/camera2/CameraManager;I)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v3}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x(Ljava/util/List;Landroid/hardware/camera2/CameraManager;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v6, 0x17

    .line 18
    .line 19
    const/4 v7, 0x2

    .line 20
    if-lt v5, v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1, v7}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x(Ljava/util/List;Landroid/hardware/camera2/CameraManager;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    new-array v0, v7, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    aput-object v2, v0, v3

    .line 38
    .line 39
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/List;Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/4 v0, -0x1

    .line 62
    if-ne p2, v0, :cond_1

    .line 63
    .line 64
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    add-int/2addr p2, v1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    rem-int/2addr p2, v0

    .line 77
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/String;

    .line 82
    .line 83
    :goto_1
    return-object p1
.end method

.method public final D(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 5
    .param p1    # Landroid/hardware/camera2/params/StreamConfigurationMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "map"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->k:I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Number;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    array-length v2, v1

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-nez v2, :cond_0

    .line 52
    .line 53
    :cond_2
    if-eqz v1, :cond_3

    .line 54
    .line 55
    array-length p1, v1

    .line 56
    if-nez p1, :cond_4

    .line 57
    .line 58
    :cond_3
    new-array v1, v4, [Landroid/util/Size;

    .line 59
    .line 60
    new-instance p1, Landroid/util/Size;

    .line 61
    .line 62
    const/16 v0, 0x500

    .line 63
    .line 64
    const/16 v2, 0x2d0

    .line 65
    .line 66
    invoke-direct {p1, v0, v2}, Landroid/util/Size;-><init>(II)V

    .line 67
    .line 68
    .line 69
    aput-object p1, v1, v3

    .line 70
    .line 71
    :cond_4
    return-object v1
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getContext(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lgt;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "cameraId"

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getCameraCharacteristics(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/graphics/Rect;

    .line 44
    .line 45
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->c:Landroid/graphics/Rect;

    .line 46
    .line 47
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Float;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->e:F

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/ranges/c;->e(FF)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->d:F

    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public final F()Z
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->d:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->c:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final I(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.permission.CAMERA"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lzq2;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->Q(II)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-static {p1}, Lgt;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    move-object p1, p2

    .line 42
    :goto_0
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B:Ljava/util/concurrent/Semaphore;

    .line 43
    .line 44
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v2, 0xbb8

    .line 47
    .line 48
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string p2, "Camera2 Time out waiting to lock camera opening."

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Lere;->a:Lere;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-interface {p2, p1}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto :goto_4

    .line 78
    :catch_2
    move-exception p1

    .line 79
    goto :goto_5

    .line 80
    :catch_3
    move-exception p1

    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_4
    :goto_1
    return-void

    .line 84
    :cond_5
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    if-eqz p1, :cond_8

    .line 90
    .line 91
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    const-string v0, "cameraId"

    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    move-object p2, v0

    .line 102
    :goto_2
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->t:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$c;

    .line 103
    .line 104
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 105
    .line 106
    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto/16 :goto_7

    .line 110
    .line 111
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v1, "Camera2 openCamera Exception: "

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    .line 133
    .line 134
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lere;->a:Lere;

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_7

    .line 150
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v1, "Camera2 openCamera SecurityException: "

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    .line 172
    .line 173
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    sget-object p1, Lere;->a:Lere;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 182
    .line 183
    if-eqz p1, :cond_8

    .line 184
    .line 185
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v1, "Camera2 openCamera InterruptedException: "

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    .line 211
    .line 212
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    sget-object p1, Lere;->a:Lere;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 221
    .line 222
    if-eqz p1, :cond_8

    .line 223
    .line 224
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    goto :goto_7

    .line 228
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v1, "Camera2 openCamera CameraAccessException: "

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    .line 250
    .line 251
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    sget-object p1, Lere;->a:Lere;

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lere;->b(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 260
    .line 261
    if-eqz p1, :cond_8

    .line 262
    .line 263
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    :cond_8
    :goto_7
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final K()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final L(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 7
    .line 8
    new-instance v0, Landroid/util/Size;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->P(II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final M()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final N(Landroid/media/Image;)V
    .locals 1
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B:Ljava/util/concurrent/Semaphore;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final P(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;->a(II)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Lteam/opay/opb/qrcode/scanner/view/AutoFitTextureView;->a(II)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final Q(II)Z
    .locals 11

    .line 1
    const-string p1, " h"

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getContext(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lgt;->d(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p0, v0, v2, v1, v2}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->C(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_e

    .line 24
    .line 25
    invoke-static {v3}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v4, "getCameraCharacteristics(...)"

    .line 38
    .line 39
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 49
    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/lang/Exception;

    .line 57
    .line 58
    const-string v1, "Camera2 configuration map is null"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto/16 :goto_b

    .line 69
    .line 70
    :cond_1
    :goto_0
    return p2

    .line 71
    :cond_2
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    check-cast v5, Ljava/lang/Number;

    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iput v5, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->E:I

    .line 87
    .line 88
    invoke-virtual {p0, v4}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->D(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    sget-object v5, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->a:Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;

    .line 93
    .line 94
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 95
    .line 96
    iget v7, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->j:F

    .line 97
    .line 98
    float-to-double v7, v7

    .line 99
    invoke-virtual {v5, v4, v6, v7, v8}, Lteam/opay/opb/qrcode/scanner/internal/ScanViewUtil;->h([Landroid/util/Size;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;D)Landroid/util/Size;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iput-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 104
    .line 105
    sget-object v5, Luk8;->c:Luk8;

    .line 106
    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    move-object v4, v2

    .line 119
    :goto_1
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 120
    .line 121
    if-eqz v6, :cond_4

    .line 122
    .line 123
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    move-object v6, v2

    .line 133
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v8, "zhh previewSize: w "

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v5, v4, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 160
    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    :goto_3
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 173
    .line 174
    if-eqz v6, :cond_6

    .line 175
    .line 176
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    goto :goto_4

    .line 181
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    :goto_4
    new-instance v7, Landroid/util/Size;

    .line 186
    .line 187
    invoke-direct {v7, v4, v6}, Landroid/util/Size;-><init>(II)V

    .line 188
    .line 189
    .line 190
    iput-object v7, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 191
    .line 192
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    iget-object v8, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 201
    .line 202
    if-eqz v8, :cond_7

    .line 203
    .line 204
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    goto :goto_5

    .line 213
    :cond_7
    move-object v8, v2

    .line 214
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v10, "zhh readerOutputSize: w "

    .line 220
    .line 221
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-static {v5, v7, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v8, "previewSize: w "

    .line 246
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v5, v7, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v4, v6}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->P(II)V

    .line 267
    .line 268
    .line 269
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 270
    .line 271
    if-eqz v4, :cond_8

    .line 272
    .line 273
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    goto :goto_6

    .line 278
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    :goto_6
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 283
    .line 284
    if-eqz v6, :cond_9

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    goto :goto_7

    .line 291
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    :goto_7
    iget v7, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->k:I

    .line 296
    .line 297
    invoke-static {v4, v6, v7, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->y:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 302
    .line 303
    iget-object v7, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 304
    .line 305
    invoke-virtual {v4, v6, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 306
    .line 307
    .line 308
    iput-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 309
    .line 310
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 311
    .line 312
    if-eqz v4, :cond_a

    .line 313
    .line 314
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    goto :goto_8

    .line 323
    :cond_a
    move-object v4, v2

    .line 324
    :goto_8
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->s:Landroid/util/Size;

    .line 325
    .line 326
    if-eqz v6, :cond_b

    .line 327
    .line 328
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    goto :goto_9

    .line 337
    :cond_b
    move-object v6, v2

    .line 338
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v8, "readerSize: w "

    .line 344
    .line 345
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-static {v5, p1, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 365
    .line 366
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 371
    .line 372
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->C:Z

    .line 377
    .line 378
    iput-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .line 380
    if-eqz v3, :cond_c

    .line 381
    .line 382
    const/4 p2, 0x1

    .line 383
    :cond_c
    if-nez p2, :cond_d

    .line 384
    .line 385
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 386
    .line 387
    if-eqz p1, :cond_d

    .line 388
    .line 389
    new-instance v0, Ljava/lang/Exception;

    .line 390
    .line 391
    const-string v1, "Camera2 setUpCameraOutputs error"

    .line 392
    .line 393
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 397
    .line 398
    .line 399
    :cond_d
    return p2

    .line 400
    :cond_e
    :goto_a
    :try_start_1
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 401
    .line 402
    if-eqz p1, :cond_f

    .line 403
    .line 404
    new-instance v0, Ljava/lang/Exception;

    .line 405
    .line 406
    const-string v1, "Camera2 cameraId is null"

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-interface {p1, v0}, Lhv1;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    .line 413
    .line 414
    :cond_f
    return p2

    .line 415
    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v2, "Camera2 setUpCameraOutputs Exception: "

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    new-instance v1, Ljava/lang/RuntimeException;

    .line 437
    .line 438
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    sget-object p1, Lere;->a:Lere;

    .line 442
    .line 443
    invoke-virtual {p1, v1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 444
    .line 445
    .line 446
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 447
    .line 448
    if-eqz p1, :cond_10

    .line 449
    .line 450
    invoke-interface {p1, v1}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 451
    .line 452
    .line 453
    :cond_10
    return p2
.end method

.method public final R()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "CameraBackground"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u:Landroid/os/HandlerThread;

    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method

.method public final S()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->R()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lwq1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lwq1;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Luk8;->c:Luk8;

    .line 24
    .line 25
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v6, "camera preview texture notready width: "

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " height: "

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v0, v3, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 66
    .line 67
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->m:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$b;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sget-object v0, Luk8;->c:Luk8;

    .line 73
    .line 74
    const-string v3, "startCameraPreview"

    .line 75
    .line 76
    invoke-static {v0, v3, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u:Landroid/os/HandlerThread;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u:Landroid/os/HandlerThread;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iput-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :goto_2
    return-void
.end method

.method public final V()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->u()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->U()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final W()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->D:Z

    .line 10
    .line 11
    xor-int/lit8 v1, v0, 0x1

    .line 12
    .line 13
    iput-boolean v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->D:Z

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 47
    :try_start_0
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {v3, v2, v0, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v2, v0

    .line 70
    :cond_3
    :goto_1
    iput-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->A:Landroid/hardware/camera2/CaptureRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    sget-object v3, Luk8;->c:Luk8;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v3, v2, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_3
    return-void
.end method

.method public final getCameraPreviewListener()Lhv1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentZoom()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->c:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 17
    .line 18
    return v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-nez v1, :cond_2

    .line 22
    .line 23
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    int-to-float v2, v2

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-float v1, v1

    .line 59
    div-float/2addr v3, v2

    .line 60
    div-float/2addr v1, v0

    .line 61
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    :goto_1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->f:F

    .line 73
    .line 74
    return v0
.end method

.method public final getDisplayOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->E:I

    .line 2
    .line 3
    add-int/lit16 v0, v0, 0x168

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x168

    .line 6
    .line 7
    return v0
.end method

.method public final getMaxZoomRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->d:F

    .line 2
    .line 3
    return v0
.end method

.method public final getPerformance()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextureView()Landroid/view/TextureView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCameraPreviewListener(Lhv1;)V
    .locals 0
    .param p1    # Lhv1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 2
    .line 3
    return-void
.end method

.method public final setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V
    .locals 1
    .param p1    # Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->h:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 7
    .line 8
    return-void
.end method

.method public final t(F)V
    .locals 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->c:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    div-float/2addr v2, p1

    .line 22
    float-to-int v2, v2

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    div-float/2addr v3, p1

    .line 29
    float-to-int p1, v3

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    div-int/lit8 v4, v2, 0x2

    .line 35
    .line 36
    sub-int/2addr v3, v4

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v3, v4}, Lkotlin/ranges/c;->c(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    div-int/lit8 v6, p1, 0x2

    .line 47
    .line 48
    sub-int/2addr v5, v6

    .line 49
    invoke-static {v5, v4}, Lkotlin/ranges/c;->c(II)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/2addr v2, v3

    .line 54
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 55
    .line 56
    invoke-static {v2, v5}, Lkotlin/ranges/c;->f(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    add-int/2addr p1, v4

    .line 61
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    invoke-static {p1, v0}, Lkotlin/ranges/c;->f(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-direct {v0, v3, v4, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 73
    .line 74
    invoke-virtual {v1, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->v:Landroid/os/Handler;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->B:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    const-wide/16 v2, 0x7d0

    .line 6
    .line 7
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->O()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_5

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->p:Landroid/hardware/camera2/CameraCaptureSession;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :cond_1
    :goto_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v1, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 64
    .line 65
    .line 66
    :cond_4
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 67
    .line 68
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x:Landroid/view/Surface;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 73
    .line 74
    .line 75
    :cond_5
    iput-object v1, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x:Landroid/view/Surface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    :goto_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->O()V

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    .line 85
    .line 86
    const-string v2, "Camera2 close exception:"

    .line 87
    .line 88
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lere;->a:Lere;

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lz3d;->a:Lz3d;

    .line 97
    .line 98
    const-string v2, "camera2"

    .line 99
    .line 100
    const-string v3, "3"

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v1, v2, v3, v0}, Lz3d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_4
    return-void

    .line 111
    :goto_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->O()V

    .line 112
    .line 113
    .line 114
    throw v0
.end method

.method public final v(II)V
    .locals 3

    .line 1
    sget-object v0, Luk8;->c:Luk8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "configTransform viewWidth:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", viewHeight:"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-static {v0, p1, p2, v1, p2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final w()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    iget-boolean v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->g:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->o:Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/Exception;

    .line 21
    .line 22
    const-string v2, "Camera2 create preview session error: texture is null"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto/16 :goto_7

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    sget-object v3, Luk8;->c:Luk8;

    .line 36
    .line 37
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move-object v4, v5

    .line 52
    :goto_1
    iget-object v6, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 53
    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    move-object v6, v5

    .line 66
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v8, "zhh createCameraPreviewSession previewSize width: "

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, " height: "

    .line 80
    .line 81
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v3, v4, v5, v1, v5}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    :goto_3
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->r:Landroid/util/Size;

    .line 108
    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    goto :goto_4

    .line 116
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    :goto_4
    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Landroid/view/Surface;

    .line 124
    .line 125
    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 126
    .line 127
    .line 128
    iput-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x:Landroid/view/Surface;

    .line 129
    .line 130
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 131
    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    goto :goto_5

    .line 139
    :cond_7
    move-object v2, v5

    .line 140
    :goto_5
    iput-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 141
    .line 142
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 143
    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_8

    .line 151
    .line 152
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 153
    .line 154
    if-eqz v3, :cond_8

    .line 155
    .line 156
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 157
    .line 158
    .line 159
    :cond_8
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x:Landroid/view/Surface;

    .line 160
    .line 161
    if-eqz v2, :cond_9

    .line 162
    .line 163
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->z:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 164
    .line 165
    if-eqz v3, :cond_9

    .line 166
    .line 167
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->q:Landroid/hardware/camera2/CameraDevice;

    .line 171
    .line 172
    if-eqz v2, :cond_b

    .line 173
    .line 174
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->x:Landroid/view/Surface;

    .line 175
    .line 176
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->w:Landroid/media/ImageReader;

    .line 177
    .line 178
    if-eqz v4, :cond_a

    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    goto :goto_6

    .line 185
    :cond_a
    move-object v4, v5

    .line 186
    :goto_6
    new-array v1, v1, [Landroid/view/Surface;

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    aput-object v3, v1, v6

    .line 190
    .line 191
    aput-object v4, v1, v0

    .line 192
    .line 193
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    new-instance v1, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;

    .line 198
    .line 199
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview$a;-><init>(Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v0, v1, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v3, "Camera2 create preview session exception: "

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    new-instance v2, Ljava/lang/RuntimeException;

    .line 231
    .line 232
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lere;->a:Lere;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Lere;->b(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->i:Lhv1;

    .line 241
    .line 242
    if-eqz v0, :cond_b

    .line 243
    .line 244
    invoke-interface {v0, v2}, Lhv1;->c(Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    :cond_b
    :goto_8
    return-void
.end method

.method public final x(Ljava/util/List;Landroid/hardware/camera2/CameraManager;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/hardware/camera2/CameraManager;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "getCameraCharacteristics(...)"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v2, p3, :cond_0

    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method public final y(Landroid/hardware/camera2/CameraManager;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getCameraIdList(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v2, :cond_2

    .line 19
    .line 20
    aget-object v5, v0, v4

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v7, "getCameraCharacteristics(...)"

    .line 27
    .line 28
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, [I

    .line 38
    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-static {v6, v3}, Lkotlin/collections/a;->F([II)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const/4 v6, 0x0

    .line 47
    :goto_1
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-object v1
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/scanner/view/Camera2Preview;->D:Z

    .line 2
    .line 3
    return v0
.end method
