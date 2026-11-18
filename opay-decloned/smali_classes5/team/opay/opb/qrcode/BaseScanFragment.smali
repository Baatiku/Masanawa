.class public abstract Lteam/opay/opb/qrcode/BaseScanFragment;
.super Lteam/opay/core/common/spi/IModuleFragment;
.source "BaseScanFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005*\u0002\u008e\u0001\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000eJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J3\u0010$\u001a\u00020\u00042\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010\u001e2\u0006\u0010\"\u001a\u00020!2\u0008\u0010#\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020!\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008(\u0010\u0003JC\u0010,\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010)\u001a\u00020\u001e2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u001eH&\u00a2\u0006\u0004\u0008,\u0010-J\u0015\u0010.\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u001eH\u0004\u00a2\u0006\u0004\u00080\u00101J\u001b\u00103\u001a\u00020\u00042\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u001eH\u0004\u00a2\u0006\u0004\u00083\u00101J\u0017\u00104\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0004\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u00086\u0010\u0003J\u000f\u00107\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u00087\u0010\u0003J\u000f\u00108\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00088\u0010\u0003J\r\u00109\u001a\u00020!\u00a2\u0006\u0004\u00089\u0010\'J\u000f\u0010:\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008:\u0010\'J\u000f\u0010<\u001a\u0004\u0018\u00010;\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u0004\u00a2\u0006\u0004\u0008>\u0010\u0003Ji\u0010F\u001a\u00020\u00042\u0006\u0010?\u001a\u00020!2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u001e2\n\u0010B\u001a\u0006\u0012\u0002\u0008\u00030A2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008F\u0010GR\u001b\u0010M\u001a\u00020H8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR\"\u0010S\u001a\u00020\u001e8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u00101R\"\u0010W\u001a\u00020\u001e8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010O\u001a\u0004\u0008U\u0010Q\"\u0004\u0008V\u00101R\"\u0010\\\u001a\u00020!8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008X\u0010<\u001a\u0004\u0008Y\u0010\'\"\u0004\u0008Z\u0010[R$\u0010b\u001a\u0004\u0018\u00010\u00178\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010\u0019\"\u0004\u0008`\u0010aR\"\u0010f\u001a\u00020!8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010<\u001a\u0004\u0008d\u0010\'\"\u0004\u0008e\u0010[R\u0016\u0010h\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010<R\u0016\u0010j\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010<R$\u0010r\u001a\u0004\u0018\u00010k8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\"\u0010t\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010<\u001a\u0004\u0008t\u0010\'\"\u0004\u0008u\u0010[R\"\u0010}\u001a\u00020v8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008w\u0010x\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R(\u0010\u0085\u0001\u001a\u00020~8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\'\u0010\u008d\u0001\u001a\u0012\u0012\r\u0012\u000b \u008a\u0001*\u0004\u0018\u00010\u001e0\u001e0\u0089\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u0018\u0010\u0091\u0001\u001a\u00030\u008e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/BaseScanFragment;",
        "Lteam/opay/core/common/spi/IModuleFragment;",
        "<init>",
        "()V",
        "",
        "n0",
        "p0",
        "f0",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "getFragmentTab",
        "()Lteam/opay/core/common/spi/FragmentTab;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/net/Uri;",
        "uri",
        "S",
        "(Landroid/net/Uri;)V",
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
        "a0",
        "()Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
        "onActivityCreated",
        "onLazyLoad",
        "onResume",
        "onPause",
        "",
        "code",
        "barcodeFormat",
        "",
        "isDecodeLocalBitmap",
        "decodeTime",
        "d0",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "e0",
        "()Z",
        "m0",
        "qrcode",
        "qrContentSubType",
        "qrContentType",
        "c0",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "V",
        "(Z)Ljava/lang/String;",
        "r0",
        "(Ljava/lang/String;)V",
        "message",
        "t0",
        "B0",
        "(Landroid/view/View;)V",
        "x0",
        "q0",
        "onDestroyView",
        "k0",
        "onBackPressed",
        "Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "Z",
        "()Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "D0",
        "isSuccess",
        "apiTime",
        "Lteam/opay/core/http/arch/Resource;",
        "resource",
        "qrFrom",
        "bizType",
        "serverScanId",
        "E0",
        "(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Lteam/opay/opb/qrcode/scan/AlbumViewModel;",
        "a",
        "Lid8;",
        "T",
        "()Lteam/opay/opb/qrcode/scan/AlbumViewModel;",
        "albumViewModel",
        "b",
        "Ljava/lang/String;",
        "Y",
        "()Ljava/lang/String;",
        "setScanType",
        "scanType",
        "c",
        "W",
        "A0",
        "scanFrom",
        "d",
        "l0",
        "y0",
        "(Z)V",
        "isOldScanBarCode",
        "e",
        "Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;",
        "b0",
        "setZxingScannerView",
        "(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V",
        "zxingScannerView",
        "f",
        "X",
        "setScanFullScreen",
        "scanFullScreen",
        "g",
        "permissionGranted",
        "h",
        "goSetting",
        "Lpla;",
        "i",
        "Lpla;",
        "U",
        "()Lpla;",
        "z0",
        "(Lpla;)V",
        "onZxingCallback",
        "j",
        "isFocusPauseCamera",
        "setFocusPauseCamera",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "k",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "getPerformanceLevel",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "setPerformanceLevel",
        "(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V",
        "performanceLevel",
        "",
        "l",
        "J",
        "getDeviceRam",
        "()J",
        "setDeviceRam",
        "(J)V",
        "deviceRam",
        "m",
        "Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "trackUtil",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "n",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermission",
        "team/opay/opb/qrcode/BaseScanFragment$b",
        "o",
        "Lteam/opay/opb/qrcode/BaseScanFragment$b;",
        "zxingResultHandler",
        "opay-qrcode_release"
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

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z

.field public e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lpla;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Z

.field public k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:J

.field public m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lteam/opay/opb/qrcode/BaseScanFragment$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/spi/IModuleFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/opb/qrcode/BaseScanFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->a:Lid8;

    .line 31
    .line 32
    const-string v0, "1"

    .line 33
    .line 34
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "default"

    .line 37
    .line 38
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->c:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->g:Z

    .line 42
    .line 43
    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_MIDDLE:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 44
    .line 45
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 46
    .line 47
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 48
    .line 49
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcw0;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "registerForActivityResult(...)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    .line 67
    .line 68
    new-instance v0, Lteam/opay/opb/qrcode/BaseScanFragment$b;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lteam/opay/opb/qrcode/BaseScanFragment$b;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->o:Lteam/opay/opb/qrcode/BaseScanFragment$b;

    .line 74
    .line 75
    return-void
.end method

.method public static final C0(Lteam/opay/opb/qrcode/BaseScanFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->p0()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->h:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic F0(Lteam/opay/opb/qrcode/BaseScanFragment;ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    if-nez p10, :cond_6

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v5, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v5, p2

    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v7, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object/from16 v7, p4

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v8, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v8, p5

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    move-object v9, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v9, p6

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    move-object v10, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v10, p7

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    move-object v11, v2

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v11, p8

    .line 52
    .line 53
    :goto_5
    move-object v3, p0

    .line 54
    move v4, p1

    .line 55
    move-object v6, p3

    .line 56
    invoke-virtual/range {v3 .. v11}, Lteam/opay/opb/qrcode/BaseScanFragment;->E0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 61
    .line 62
    const-string v1, "Super calls with default arguments not supported in this target, function: trackParseResult"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public static synthetic H(Lteam/opay/opb/qrcode/BaseScanFragment;Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->g0(Lteam/opay/opb/qrcode/BaseScanFragment;Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->j0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->s0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->h0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->i0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->v0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/opb/qrcode/BaseScanFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->C0(Lteam/opay/opb/qrcode/BaseScanFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->w0(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->o0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/opb/qrcode/BaseScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lteam/opay/opb/qrcode/BaseScanFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final g0(Lteam/opay/opb/qrcode/BaseScanFragment;Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->q0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;

    .line 14
    .line 15
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v2, v1}, Lpla;->e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapException;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, v1, p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->o(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object p1, Lo9c;->a:Lo9c;

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lfw0;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lfw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lo9c;->m(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move-object v1, p1

    .line 68
    check-cast v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->p(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 78
    .line 79
    if-eqz p0, :cond_b

    .line 80
    .line 81
    check-cast p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$GetLocalBitmapSuccess;->a()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p0, p1}, Lpla;->c(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_4
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->q0()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    move-object v1, p1

    .line 104
    check-cast v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 105
    .line 106
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->m(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    check-cast p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalNoQrCodeFound;->a()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {v0, p1}, Lpla;->a(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    sget-object p1, Lo9c;->a:Lo9c;

    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Lgw0;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lgw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0, v1}, Lo9c;->n(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 142
    .line 143
    if-eqz v0, :cond_a

    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->q0()V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    move-object v1, p1

    .line 153
    check-cast v1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 154
    .line 155
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;->a()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v0, v2, v1}, Lpla;->f(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    check-cast p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;

    .line 171
    .line 172
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;->a()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeLocalError;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, v1, p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->l(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 181
    .line 182
    .line 183
    :cond_9
    sget-object p1, Lo9c;->a:Lo9c;

    .line 184
    .line 185
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, Lhw0;

    .line 190
    .line 191
    invoke-direct {v1, p0}, Lhw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0, v1}, Lo9c;->n(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_a
    instance-of v0, p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    check-cast p1, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;

    .line 203
    .line 204
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;->b()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;->a()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;->d()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/data/AlbumDecodeResult$DecodeResult;->c()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, v0, v1, v2, p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->d0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    return-object p0

    .line 226
    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 227
    .line 228
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 229
    .line 230
    .line 231
    throw p0
.end method

.method public static final h0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->x0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final i0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->x0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final j0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->x0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final n0()V
    .locals 3

    .line 1
    sget-object v0, Lo9c;->a:Lo9c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lbw0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lbw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lo9c;->f(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final o0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final p0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x10000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "package"

    .line 23
    .line 24
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final s0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->x0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/BaseScanFragment;->t0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: qrcodeParseFailed"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static final v0(Lteam/opay/opb/qrcode/BaseScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->x0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final w0(Lteam/opay/opb/qrcode/BaseScanFragment;Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    sget-object v0, Ltk8;->c:Ltk8;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "-----requestPermission -> granted = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-static {v0, v1, v2, v3, v2}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->g:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Lpla;->d()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->x()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->m0()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final B0(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/opb/qrcode/R$string;->qr_sdk_camera_permission_denied_explanation:I

    .line 7
    .line 8
    const/4 v1, -0x2

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget v2, Lteam/opay/core/common/R$color;->content:I

    .line 18
    .line 19
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget v2, Lteam/opay/core/common/R$color;->black_65:I

    .line 32
    .line 33
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget v1, Lteam/opay/core/common/R$color;->mint:I

    .line 46
    .line 47
    invoke-static {p1, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget v0, Lteam/opay/opb/qrcode/R$string;->qr_sdk_settings:I

    .line 56
    .line 57
    new-instance v1, Ldw0;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Ldw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final D0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->t()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final E0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/http/arch/Resource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lteam/opay/core/http/arch/Resource<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "resource"

    .line 2
    .line 3
    move-object v1, p3

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->Z()Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->c()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v3

    .line 30
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v5, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v5, v3

    .line 47
    :goto_1
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v6, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v6, v3

    .line 60
    :goto_2
    move-object v1, v0

    .line 61
    move v2, p1

    .line 62
    move-object v3, p2

    .line 63
    move-object/from16 v7, p4

    .line 64
    .line 65
    move-object/from16 v8, p5

    .line 66
    .line 67
    move-object/from16 v9, p6

    .line 68
    .line 69
    move-object/from16 v10, p7

    .line 70
    .line 71
    move-object/from16 v11, p8

    .line 72
    .line 73
    invoke-virtual/range {v1 .. v11}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->v(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final S(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->T()Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2, v0}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->u(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final T()Lteam/opay/opb/qrcode/scan/AlbumViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final U()Lpla;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V(Z)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "album"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "camera"

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method public W()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public X()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public Y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Z()Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract a0()Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final b0()Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract c0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final d0(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->k0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget-object v0, Libg;->a:Libg;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Libg;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, p2, v5, p4}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, p2, v5, p4}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3, p4}, Lpla;->g(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->m()V

    .line 46
    .line 47
    .line 48
    :cond_5
    move-object v1, p0

    .line 49
    move v2, p3

    .line 50
    move-object v3, p1

    .line 51
    move-object v4, p2

    .line 52
    move-object v6, p4

    .line 53
    invoke-virtual/range {v1 .. v6}, Lteam/opay/opb/qrcode/BaseScanFragment;->c0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final e0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.permission.CAMERA"

    .line 6
    .line 7
    filled-new-array {v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lynb;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final f0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->T()Lteam/opay/opb/qrcode/scan/AlbumViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scan/AlbumViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lew0;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lew0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/opb/qrcode/BaseScanFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/opb/qrcode/BaseScanFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getFragmentTab()Lteam/opay/core/common/spi/FragmentTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/FragmentTab;->EMPTY:Lteam/opay/core/common/spi/FragmentTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 46
    :cond_2
    return v1
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract m0()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/opb/qrcode/BaseScanFragment$onActivityCreated$1$1;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setOnCameraOpenFailedListener(La87;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    .line 19
    .line 20
    const-string v0, "android.permission.CAMERA"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->y()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onBackPressed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lk93;->a:Lk93;

    .line 5
    .line 6
    invoke-virtual {p1}, Lk93;->g()Lkotlin/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 17
    .line 18
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->l:J

    .line 29
    .line 30
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 3
    .line 4
    iget-object v1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setResultHandler(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->E()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onLazyLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->g:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->s()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseLazyFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "android.permission.CAMERA"

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Lynb;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->h:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->h:Z

    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->n:Landroidx/activity/result/ActivityResultLauncher;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->m0()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->r()V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->j:Z

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->o:Lteam/opay/opb/qrcode/BaseScanFragment$b;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setResultHandler(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    new-instance p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->l0()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->W()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/16 v9, 0x60

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    const-string v1, "OPAY"

    .line 25
    .line 26
    const-string v4, "camera2"

    .line 27
    .line 28
    const-string v5, "1"

    .line 29
    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v0, p1

    .line 34
    invoke-direct/range {v0 .. v10}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->B()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->a0()Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->Y()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->setFormats(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->Y()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setScanType(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->W()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setScanFrom(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->k:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setPerformance(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->X()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/BarcodeScannerView;->setFullScreen(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 p1, 0x0

    .line 83
    :goto_0
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 84
    .line 85
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->f0()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final q0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->G()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "qrcode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->q0()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lo9c;->a:Lo9c;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljw0;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Ljw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, v2}, Lo9c;->g(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->q0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo9c;->a:Lo9c;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Liw0;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Liw0;-><init>(Lteam/opay/opb/qrcode/BaseScanFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, v2}, Lo9c;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final x0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScanFragment;->k0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->j:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->e:Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->o:Lteam/opay/opb/qrcode/BaseScanFragment$b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView;->F(Lteam/opay/opb/qrcode/scanner/view/ZXingScannerView$a;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->m:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->j()V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public y0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final z0(Lpla;)V
    .locals 0
    .param p1    # Lpla;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScanFragment;->i:Lpla;

    .line 2
    .line 3
    return-void
.end method
