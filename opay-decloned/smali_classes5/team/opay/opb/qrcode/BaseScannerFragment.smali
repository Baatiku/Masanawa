.class public abstract Lteam/opay/opb/qrcode/BaseScannerFragment;
.super Lteam/opay/core/common/spi/IModuleFragment;
.source "BaseScannerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/BaseScannerFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008\u001f\u0010 JC\u0010&\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000c2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0004\u0008&\u0010\'J\u0019\u0010*\u001a\u00020\u00042\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J!\u0010.\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,2\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00042\u0008\u0010)\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u00080\u0010+J\u000f\u00101\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00081\u0010\u0003J\u000f\u00102\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00082\u0010\u0003J\u000f\u00103\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00083\u0010\u0003J\u000f\u00104\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u00084\u00105J\r\u00106\u001a\u00020\u001d\u00a2\u0006\u0004\u00086\u00105J\u000f\u00108\u001a\u0004\u0018\u000107\u00a2\u0006\u0004\u00088\u00109J\r\u0010:\u001a\u00020\u0004\u00a2\u0006\u0004\u0008:\u0010\u0003J\u0015\u0010<\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0018\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u001d\u00a2\u0006\u0004\u0008>\u00105J\r\u0010?\u001a\u00020\u001d\u00a2\u0006\u0004\u0008?\u00105J\r\u0010@\u001a\u00020\u0004\u00a2\u0006\u0004\u0008@\u0010\u0003J\r\u0010A\u001a\u00020\u0004\u00a2\u0006\u0004\u0008A\u0010\u0003J\u0015\u0010B\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u001d\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u0008D\u0010\u0003J\u000f\u0010E\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u0008E\u0010\u0003J\u000f\u0010F\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u0008F\u0010\u0003J\u0017\u0010G\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000cH\u0004\u00a2\u0006\u0004\u0008G\u0010HJ\u001b\u0010J\u001a\u00020\u00042\n\u0008\u0002\u0010I\u001a\u0004\u0018\u00010\u000cH\u0004\u00a2\u0006\u0004\u0008J\u0010HJ\u000f\u0010K\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u0008K\u0010\u0003Je\u0010S\u001a\u00020\u00042\u0006\u0010L\u001a\u00020\u001d2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u000c2\n\u0010O\u001a\u0006\u0012\u0002\u0008\u00030N2\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010\u000c2\u0008\u0010#\u001a\u0004\u0018\u00010\u000c2\u0008\u0010$\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010R\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008S\u0010TR\"\u0010Y\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010\u000e\"\u0004\u0008X\u0010HR\"\u0010]\u001a\u00020\u000c8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010V\u001a\u0004\u0008[\u0010\u000e\"\u0004\u0008\\\u0010HR\"\u0010a\u001a\u00020\u001d8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010_\u001a\u0004\u0008_\u00105\"\u0004\u0008`\u0010 R\"\u0010c\u001a\u00020\u001d8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010_\u001a\u0004\u0008c\u00105\"\u0004\u0008d\u0010 R\u0018\u0010h\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010k\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0016\u0010m\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010_R\u0016\u0010o\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010_R\u0016\u0010q\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010_R\u0018\u0010t\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\"\u0010y\u001a\u0010\u0012\u000c\u0012\n v*\u0004\u0018\u00010\u000c0\u000c0u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\"\u0010{\u001a\u0010\u0012\u000c\u0012\n v*\u0004\u0018\u00010\u000c0\u000c0u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010xR\"\u0010}\u001a\u0010\u0012\u000c\u0012\n v*\u0004\u0018\u00010\u000c0\u000c0u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008|\u0010x\u00a8\u0006~"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/BaseScannerFragment;",
        "Lteam/opay/core/common/spi/IModuleFragment;",
        "<init>",
        "()V",
        "",
        "q0",
        "r0",
        "n0",
        "Landroid/net/Uri;",
        "uri",
        "U",
        "(Landroid/net/Uri;)V",
        "",
        "a0",
        "()Ljava/lang/String;",
        "h0",
        "W",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "getFragmentTab",
        "()Lteam/opay/core/common/spi/FragmentTab;",
        "onLazyLoad",
        "Lteam/opay/opb/qrcode/scanner/OpayScannerView;",
        "c0",
        "()Lteam/opay/opb/qrcode/scanner/OpayScannerView;",
        "Lteam/opay/opb/qrcode/scanner/view/TorchView;",
        "d0",
        "()Lteam/opay/opb/qrcode/scanner/view/TorchView;",
        "showLoading",
        "hideLoading",
        "",
        "flashSupported",
        "R",
        "(Z)V",
        "isDecodeLocalBitmap",
        "qrcode",
        "qrContentSubType",
        "qrContentType",
        "decodeTime",
        "f0",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "onResume",
        "onPause",
        "onDestroyView",
        "onBackPressed",
        "()Z",
        "g0",
        "Lua7;",
        "e0",
        "()Lua7;",
        "S",
        "torchView",
        "T",
        "(Lteam/opay/opb/qrcode/scanner/view/TorchView;)V",
        "i0",
        "j0",
        "s0",
        "F0",
        "X",
        "(Z)Ljava/lang/String;",
        "A0",
        "H0",
        "o0",
        "t0",
        "(Ljava/lang/String;)V",
        "message",
        "v0",
        "k0",
        "isSuccess",
        "apiTime",
        "Lteam/opay/core/http/arch/Resource;",
        "resource",
        "qrFrom",
        "bizType",
        "serverScanId",
        "I0",
        "(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "a",
        "Ljava/lang/String;",
        "b0",
        "E0",
        "scanType",
        "b",
        "Y",
        "C0",
        "scanFrom",
        "c",
        "Z",
        "D0",
        "scanFullScreen",
        "d",
        "isOldScanBarCode",
        "B0",
        "Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;",
        "e",
        "Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;",
        "scanCameraConfig",
        "f",
        "Lteam/opay/opb/qrcode/scanner/OpayScannerView;",
        "mScannerView",
        "g",
        "permissionGranted",
        "h",
        "goSetting",
        "i",
        "isFocusPauseCamera",
        "j",
        "Lua7;",
        "mScanTrack",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "k",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestCameraPermission",
        "l",
        "requestStoragePermission",
        "m",
        "getAlbumContent",
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
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lua7;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Landroidx/activity/result/ActivityResultLauncher;
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

.field public final l:Landroidx/activity/result/ActivityResultLauncher;
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

.field public final m:Landroidx/activity/result/ActivityResultLauncher;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/spi/IModuleFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, La4d;->w:La4d$a;

    .line 5
    .line 6
    invoke-virtual {v0}, La4d$a;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "default"

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->b:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->c:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->g:Z

    .line 20
    .line 21
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 22
    .line 23
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lnw0;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lnw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "registerForActivityResult(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 41
    .line 42
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 43
    .line 44
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v2, Low0;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Low0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->l:Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    .line 61
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    .line 62
    .line 63
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lpw0;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lpw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->m:Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    .line 80
    return-void
.end method

.method public static final G0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->A0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->p0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/opb/qrcode/scanner/view/TorchView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->m0(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/opb/qrcode/scanner/view/TorchView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->G0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J0(Lteam/opay/opb/qrcode/BaseScannerFragment;ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    if-nez p10, :cond_4

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
    and-int/lit8 v1, v0, 0x40

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v10, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v10, p7

    .line 28
    .line 29
    :goto_2
    and-int/lit16 v0, v0, 0x80

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    move-object v11, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v11, p8

    .line 36
    .line 37
    :goto_3
    move-object v3, p0

    .line 38
    move v4, p1

    .line 39
    move-object v6, p3

    .line 40
    move-object/from16 v8, p5

    .line 41
    .line 42
    move-object/from16 v9, p6

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v11}, Lteam/opay/opb/qrcode/BaseScannerFragment;->I0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 49
    .line 50
    const-string v1, "Super calls with default arguments not supported in this target, function: trackParseResult"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public static synthetic K(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->l0(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->x0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->y0(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic N(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->z0(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic O(Lteam/opay/opb/qrcode/BaseScannerFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->V(Lteam/opay/opb/qrcode/BaseScannerFragment;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->u0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lteam/opay/opb/qrcode/scanner/OpayScannerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 2
    .line 3
    return-object p0
.end method

.method private final U(Landroid/net/Uri;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/opb/qrcode/BaseScannerFragment$decodeAlbumPic$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/opb/qrcode/BaseScannerFragment$decodeAlbumPic$1;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;Landroid/net/Uri;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final V(Lteam/opay/opb/qrcode/BaseScannerFragment;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->i0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->i:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->A0()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->showLoading()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->U(Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method private final a0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->e:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, "HMS"

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public static final l0(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "onDismissReason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/opb/qrcode/BaseScannerFragment$a;->a:[I

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
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->q0()V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->h:Z

    .line 32
    .line 33
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static final m0(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/opb/qrcode/scanner/view/TorchView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->T(Lteam/opay/opb/qrcode/scanner/view/TorchView;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final n0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->H0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->m:Landroidx/activity/result/ActivityResultLauncher;

    .line 8
    .line 9
    const-string v1, "image/*"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final p0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
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

.method private final q0()V
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

.method private final r0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lgob;->a:Lgob;

    .line 6
    .line 7
    invoke-virtual {v1}, Lgob;->c()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lynb;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->n0()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->l:Landroidx/activity/result/ActivityResultLauncher;

    .line 29
    .line 30
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public static final u0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->A0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic w0(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/BaseScannerFragment;->v0(Ljava/lang/String;)V

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

.method public static final x0(Lteam/opay/opb/qrcode/BaseScannerFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->A0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final y0(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->g:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lua7;->a()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->k0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public static final z0(Lteam/opay/opb/qrcode/BaseScannerFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->n0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lua7;->c()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->k0()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

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
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->i:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "getViewLifecycleOwner(...)"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->D(Landroid/app/Activity;Lag8;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public B0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public C0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public D0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public E0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final F0()V
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
    new-instance v2, Lrw0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lrw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lo9c;->n(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final H0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

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
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->i:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->s()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final I0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->e0()Lua7;

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
    invoke-interface/range {v1 .. v11}, Lua7;->g(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public abstract R(Z)V
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lua7;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->r0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final T(Lteam/opay/opb/qrcode/scanner/view/TorchView;)V
    .locals 2
    .param p1    # Lteam/opay/opb/qrcode/scanner/view/TorchView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "torchView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->g0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->E()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->m()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v1, ""

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0, v1}, Lteam/opay/opb/qrcode/scanner/view/TorchView;->c(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Lteam/opay/opb/qrcode/scanner/view/TorchView;->c(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->e:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;->i()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, "cameraX"

    .line 12
    .line 13
    :cond_1
    return-object v0
.end method

.method public final X(Z)Ljava/lang/String;
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

.method public Y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public b0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract c0()Lteam/opay/opb/qrcode/scanner/OpayScannerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract d0()Lteam/opay/opb/qrcode/scanner/view/TorchView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final e0()Lua7;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract f0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public final g0()Z
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

.method public final h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "getViewLifecycleOwner(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/opb/qrcode/BaseScannerFragment$b;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lteam/opay/opb/qrcode/BaseScannerFragment$b;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->A(Lag8;Le4d;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public abstract hideLoading()V
.end method

.method public final i0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<get-lifecycle>(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final j0()Z
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

.method public final k0()V
    .locals 12

    .line 1
    new-instance v11, Lteam/opay/core/common/base/DialogInfo;

    .line 2
    .line 3
    sget v0, Lteam/opay/opb/qrcode/R$string;->qr_sdk_camera_permission_denied_long:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v0, "getString(...)"

    .line 10
    .line 11
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lteam/opay/opb/qrcode/R$string;->qr_sdk_settings:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v1, Lteam/opay/core/common/R$string;->common_cancel:I

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v9, 0xe3

    .line 33
    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v0, v11

    .line 41
    invoke-direct/range {v0 .. v10}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 45
    .line 46
    invoke-virtual {v0, v11}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lqw0;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lqw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/core/common/base/BaseDialogFragment;->T(Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final o0()V
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
    new-instance v2, Lsw0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lsw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lo9c;->f(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
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
    iget-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 7
    .line 8
    const-string v0, "android.permission.CAMERA"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lua7;->d()V

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
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const/16 v2, 0x21

    .line 14
    .line 15
    const-string v3, "key_uri"

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    :try_start_1
    const-class v1, Landroid/net/Uri;

    .line 20
    .line 21
    invoke-static {p1, v3, v1}, Lvx2;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/os/Parcelable;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object p1, v0

    .line 34
    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object p1, v0

    .line 38
    :goto_1
    new-instance v1, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 39
    .line 40
    invoke-direct {v1, p1}, Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;-><init>(Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->e:Lteam/opay/opb/qrcode/scanner/config/ScanCameraConfig;

    .line 44
    .line 45
    sget-object p1, Ltk8;->c:Ltk8;

    .line 46
    .line 47
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->a0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "BaseScanCameraxFragment scanSDK :"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x2

    .line 69
    invoke-static {p1, v1, v0, v2, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->W()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "BaseScanCameraxFragment cameraType :"

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {p1, v1, v0, v2, v0}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 3
    .line 4
    iget-object v1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->w()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 12
    .line 13
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 14
    .line 15
    .line 16
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->r()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseLazyFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->g0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->i:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "getViewLifecycleOwner(...)"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->D(Landroid/app/Activity;Lag8;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->g:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->g0()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->h:Z

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->h:Z

    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->k:Landroidx/activity/result/ActivityResultLauncher;

    .line 54
    .line 55
    const-string v1, "android.permission.CAMERA"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->k0()V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
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
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->c0()Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/common/spi/c;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    xor-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    xor-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    new-instance v3, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 28
    .line 29
    invoke-direct {v3}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->W()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->b(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->a0()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->g(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->b0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->h(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->Y()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->e(Ljava/lang/String;)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->Z()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v3, v4}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->f(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3, v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->c(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->d(Z)Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig$Builder;->a()Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->o(Lteam/opay/opb/qrcode/scanner/config/ScannerViewConfig;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    move-object p1, p2

    .line 89
    :goto_0
    iput-object p1, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->getScanTrack()Lua7;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :cond_1
    iput-object p2, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->j:Lua7;

    .line 98
    .line 99
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->h0()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->d0()Lteam/opay/opb/qrcode/scanner/view/TorchView;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    new-instance p2, Lmw0;

    .line 109
    .line 110
    invoke-direct {p2, p0, p1}, Lmw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;Lteam/opay/opb/qrcode/scanner/view/TorchView;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/view/TorchView;->setOnTorchClick(Lkotlin/jvm/functions/Function0;)V

    .line 114
    .line 115
    .line 116
    const-string p2, ""

    .line 117
    .line 118
    invoke-virtual {p1, v0, p2}, Lteam/opay/opb/qrcode/scanner/view/TorchView;->c(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public final s0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/BaseScannerFragment;->j0()Z

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
    iget-object v0, p0, Lteam/opay/opb/qrcode/BaseScannerFragment;->f:Lteam/opay/opb/qrcode/scanner/OpayScannerView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/OpayScannerView;->v()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public abstract showLoading()V
.end method

.method public final t0(Ljava/lang/String;)V
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
    sget-object v0, Lo9c;->a:Lo9c;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ltw0;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Ltw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2}, Lo9c;->g(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final v0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

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
    new-instance v2, Luw0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Luw0;-><init>(Lteam/opay/opb/qrcode/BaseScannerFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lo9c;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
