.class public final Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;
.super Lteam/opay/opb/qrcode/hms/business/Hilt_QRCodeHmsScanFragment;
.source "QRCodeHmsScanFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$Companion;,
        Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0001\u0018\u0000 X2\u00020\u0001:\u0001YB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003Jk\u0010\u0017\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\tJ+\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\u0008\u0010!\u001a\u0004\u0018\u00010 2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010$J!\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J/\u0010/\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\u000e\u0010,\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0+2\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00081\u0010\u0003J=\u00105\u001a\u00020\u00042\u0006\u00102\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0006\u00103\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u00085\u00106J\u000f\u00107\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00089\u0010\u0003J\u000f\u0010:\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008:\u0010\u0003J\u000f\u0010;\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0003R\u001b\u0010A\u001a\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u001b\u0010G\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010FR\u0016\u0010J\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\"\u0010W\u001a\u0010\u0012\u000c\u0012\n T*\u0004\u0018\u00010\u000e0\u000e0S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010V\u00a8\u0006Z"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;",
        "Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "G0",
        "(Landroid/os/Bundle;)V",
        "N0",
        "M0",
        "",
        "isSuccess",
        "",
        "apiTime",
        "Lteam/opay/core/http/arch/Resource;",
        "resource",
        "qrFrom",
        "qrContentSubType",
        "qrContentType",
        "bizType",
        "serverScanId",
        "O0",
        "(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "F0",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "getFragmentTab",
        "()Lteam/opay/core/common/spi/FragmentTab;",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "L0",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Y",
        "qrcode",
        "isDecodeLocalBitmap",
        "decodeTime",
        "R",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "onBackPressed",
        "()Z",
        "o0",
        "p0",
        "onDestroyView",
        "Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;",
        "o",
        "Lid8;",
        "C0",
        "()Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;",
        "viewModel",
        "Lp9c;",
        "p",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "B0",
        "()Lp9c;",
        "binding",
        "q",
        "Ljava/lang/String;",
        "scanType",
        "Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;",
        "r",
        "Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;",
        "scanConfig",
        "Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "s",
        "Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;",
        "trackUtil",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "t",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "getAlbumContent",
        "u",
        "Companion",
        "opay-qrcode-hms_release"
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
.field public static final u:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic v:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

.field public s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Landroidx/activity/result/ActivityResultLauncher;
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
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/opb/qrcode/hms/databinding/QrHmsFragmentScanHmsBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->v:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->u:Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/Hilt_QRCodeHmsScanFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->o:Lid8;

    .line 31
    .line 32
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 33
    .line 34
    const-class v1, Lp9c;

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 40
    .line 41
    const-string v0, "1"

    .line 42
    .line 43
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->q:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    .line 46
    .line 47
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lt7c;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lt7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "registerForActivityResult(...)"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 65
    .line 66
    return-void
.end method

.method public static final A0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->W()Z

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
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h0(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g0()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 23
    .line 24
    const-string v1, "httpViewGroup"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->j()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->q()V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->q:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->N(Landroid/net/Uri;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final D0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 13

    .line 1
    move-object v11, p0

    .line 2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lp9c;->c:Lteam/opay/core/widget/PulseLoaderView;

    .line 7
    .line 8
    const-string v1, "httpViewGroup"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    if-eqz p6, :cond_0

    .line 15
    .line 16
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v12

    .line 22
    :goto_0
    sget-object v2, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v9, 0x1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    if-eqz p6, :cond_2

    .line 35
    .line 36
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v0, v12

    .line 42
    :goto_2
    if-nez v0, :cond_3

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    sget-object v1, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$a;->a:[I

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    aget v0, v1, v0

    .line 53
    .line 54
    :goto_3
    if-eq v0, v9, :cond_a

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    if-eq v0, v1, :cond_4

    .line 58
    .line 59
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    sub-long/2addr v0, p1

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    const/4 v1, 0x0

    .line 82
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;->b()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v7, v0

    .line 95
    goto :goto_5

    .line 96
    :cond_6
    move-object v7, v12

    .line 97
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;->d()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    move-object v8, v0

    .line 110
    goto :goto_6

    .line 111
    :cond_7
    move-object v8, v12

    .line 112
    :goto_6
    move-object v0, p0

    .line 113
    move-object/from16 v3, p6

    .line 114
    .line 115
    move-object/from16 v4, p3

    .line 116
    .line 117
    move-object/from16 v5, p4

    .line 118
    .line 119
    move-object/from16 v6, p5

    .line 120
    .line 121
    invoke-direct/range {v0 .. v8}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->O0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_9

    .line 129
    .line 130
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;

    .line 135
    .line 136
    if-eqz v0, :cond_c

    .line 137
    .line 138
    sget-object v1, Lux6;->a:Lux6;

    .line 139
    .line 140
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v3, v11, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 145
    .line 146
    if-nez v3, :cond_8

    .line 147
    .line 148
    const-string v3, "scanConfig"

    .line 149
    .line 150
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_8
    move-object v12, v3

    .line 155
    :goto_7
    invoke-virtual {v12}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->b()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v4, Lv7c;

    .line 164
    .line 165
    invoke-direct {v4, p0, v0}, Lv7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2, v0, v3, v4}, Lux6;->d(Landroid/app/Activity;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    .line 169
    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_9
    invoke-static {p0, v12, v9, v12}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->d0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    sub-long/2addr v0, p1

    .line 181
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const/16 v9, 0xc0

    .line 186
    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    const/4 v7, 0x0

    .line 190
    const/4 v8, 0x0

    .line 191
    move-object v0, p0

    .line 192
    move-object/from16 v3, p6

    .line 193
    .line 194
    move-object/from16 v4, p3

    .line 195
    .line 196
    move-object/from16 v5, p4

    .line 197
    .line 198
    move-object/from16 v6, p5

    .line 199
    .line 200
    invoke-static/range {v0 .. v10}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->P0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {p6 .. p6}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_b

    .line 208
    .line 209
    invoke-virtual {v0}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    :cond_b
    invoke-virtual {p0, v12}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->c0(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_c
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 217
    .line 218
    return-object v0
.end method

.method public static final E0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->a0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final H0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;[Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->W()Z

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
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lkotlin/collections/a;->Q([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/huawei/hms/ml/scan/HmsScan;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getOriginalValue()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    :goto_0
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    :cond_2
    move-object v4, v1

    .line 32
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_5

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->q0()V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlin/collections/a;->Q([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/huawei/hms/ml/scan/HmsScan;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget p1, p1, Lcom/huawei/hms/ml/scan/HmsScanBase;->scanType:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object p1, v2

    .line 57
    :goto_1
    sget-object v0, Lwx6;->a:Lwx6;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lwx6;->c(Ljava/lang/Integer;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v0, p1}, Lwx6;->b(Ljava/lang/Integer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1, v5, v6, v2}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    move-object v3, p0

    .line 77
    invoke-virtual/range {v3 .. v8}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public static final I0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->W()Z

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
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {p0, p1, v1, v0, v1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->A(Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public static final J0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->s()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->N0()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final K0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->getLightStatus()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->switchLight()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lp9c;->f:Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v1}, Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;->c(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->switchLight()Z

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lp9c;->f:Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v0, v2, v1}, Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;->c(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->t()V

    .line 65
    .line 66
    .line 67
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method

.method private final M0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h0(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->q0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->t:Landroidx/activity/result/ActivityResultLauncher;

    .line 9
    .line 10
    const-string v1, "image/*"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final O0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
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
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->c()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v3

    .line 23
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v5, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v5, v3

    .line 40
    :goto_1
    invoke-virtual {p3}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v6, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v6, v3

    .line 53
    :goto_2
    move v2, p1

    .line 54
    move-object v3, p2

    .line 55
    move-object/from16 v7, p4

    .line 56
    .line 57
    move-object/from16 v8, p5

    .line 58
    .line 59
    move-object/from16 v9, p6

    .line 60
    .line 61
    move-object/from16 v10, p7

    .line 62
    .line 63
    move-object/from16 v11, p8

    .line 64
    .line 65
    invoke-virtual/range {v1 .. v11}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->v(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-void
.end method

.method public static synthetic P0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v5, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v5, p2

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x8

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object/from16 v7, p4

    .line 18
    .line 19
    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    move-object v8, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object/from16 v8, p5

    .line 26
    .line 27
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    move-object v9, v2

    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-object/from16 v9, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v10, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move-object/from16 v10, p7

    .line 42
    .line 43
    :goto_4
    and-int/lit16 v0, v0, 0x80

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    move-object v11, v2

    .line 48
    goto :goto_5

    .line 49
    :cond_5
    move-object/from16 v11, p8

    .line 50
    .line 51
    :goto_5
    move-object v3, p0

    .line 52
    move v4, p1

    .line 53
    move-object v6, p3

    .line 54
    invoke-direct/range {v3 .. v11}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->O0(ZLjava/lang/String;Lteam/opay/core/http/arch/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final initView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lp9c;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 6
    .line 7
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "scanConfig"

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v1, v2

    .line 18
    :cond_0
    invoke-virtual {v1}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v4, ""

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-object v1, v4

    .line 27
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/CorpActionBar;->setTitle(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v2, v0

    .line 39
    :goto_0
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lp9c;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 50
    .line 51
    sget v1, Lteam/opay/opb/qrcode/hms/R$string;->qr_hms_album:I

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "getString(...)"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lr7c;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lr7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/widget/CorpActionBar;->t(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lp9c;->b:Lteam/opay/core/widget/CorpActionBar;

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/CorpActionBar;->l(Z)V

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lp9c;->f:Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;

    .line 86
    .line 87
    new-instance v1, Ls7c;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Ls7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;->setOnTorchClick(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lp9c;->f:Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;

    .line 100
    .line 101
    const-string v1, "torchView"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v0, v0, Lp9c;->f:Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;

    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1, v4}, Lteam/opay/opb/qrcode/hms/widget/HmsTorchView;->c(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static synthetic r0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->A0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->J0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->E0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->I0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;[Lcom/huawei/hms/ml/scan/HmsScan;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->H0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;[Lcom/huawei/hms/ml/scan/HmsScan;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->D0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->K0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final B0()Lp9c;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->p:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->v:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lp9c;

    .line 13
    .line 14
    return-object v0
.end method

.method public final C0()Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final F0()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$b;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->j0(Lvka;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final G0(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    .line 21
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32
    .line 33
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->q:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    packed-switch v3, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_0
    const-string v1, "2"

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    new-instance v1, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 57
    .line 58
    invoke-direct {v1}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setContext(Landroid/app/Activity;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setBoundingBox(Landroid/graphics/Rect;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE39_SCAN_TYPE:I

    .line 74
    .line 75
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE93_SCAN_TYPE:I

    .line 76
    .line 77
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODE128_SCAN_TYPE:I

    .line 78
    .line 79
    sget v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN13_SCAN_TYPE:I

    .line 80
    .line 81
    sget v5, Lcom/huawei/hms/ml/scan/HmsScanBase;->EAN8_SCAN_TYPE:I

    .line 82
    .line 83
    sget v6, Lcom/huawei/hms/ml/scan/HmsScanBase;->ITF14_SCAN_TYPE:I

    .line 84
    .line 85
    sget v7, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_A_SCAN_TYPE:I

    .line 86
    .line 87
    sget v8, Lcom/huawei/hms/ml/scan/HmsScanBase;->UPCCODE_E_SCAN_TYPE:I

    .line 88
    .line 89
    sget v9, Lcom/huawei/hms/ml/scan/HmsScanBase;->CODABAR_SCAN_TYPE:I

    .line 90
    .line 91
    filled-new-array/range {v2 .. v9}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setFormat(I[I)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->build()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i0(Lcom/huawei/hms/hmsscankit/RemoteView;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_1
    const-string v1, "1"

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    new-instance v1, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 117
    .line 118
    invoke-direct {v1}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setContext(Landroid/app/Activity;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setBoundingBox(Landroid/graphics/Rect;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sget v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    .line 134
    .line 135
    sget v2, Lcom/huawei/hms/ml/scan/HmsScanBase;->AZTEC_SCAN_TYPE:I

    .line 136
    .line 137
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->DATAMATRIX_SCAN_TYPE:I

    .line 138
    .line 139
    sget v4, Lcom/huawei/hms/ml/scan/HmsScanBase;->PDF417_SCAN_TYPE:I

    .line 140
    .line 141
    filled-new-array {v2, v3, v4}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setFormat(I[I)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->build()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i0(Lcom/huawei/hms/hmsscankit/RemoteView;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_2
    const-string v3, "0"

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_2

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    new-instance v2, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 167
    .line 168
    invoke-direct {v2}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setContext(Landroid/app/Activity;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2, v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setBoundingBox(Landroid/graphics/Rect;)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/16 v2, 0x1fff

    .line 184
    .line 185
    new-array v1, v1, [I

    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->setFormat(I[I)Lcom/huawei/hms/hmsscankit/RemoteView$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView$Builder;->build()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i0(Lcom/huawei/hms/hmsscankit/RemoteView;)V

    .line 196
    .line 197
    .line 198
    :goto_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    if-eqz v0, :cond_3

    .line 203
    .line 204
    new-instance v1, Lp7c;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Lp7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView;->setOnResultCallback(Lcom/huawei/hms/hmsscankit/OnResultCallback;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_4

    .line 217
    .line 218
    new-instance v1, Lq7c;

    .line 219
    .line 220
    invoke-direct {v1, p0}, Lq7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Lcom/huawei/hms/hmsscankit/RemoteView;->setOnErrorCallback(Lcom/huawei/hms/hmsscankit/OnErrorCallback;)V

    .line 224
    .line 225
    .line 226
    :cond_4
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_5

    .line 231
    .line 232
    invoke-virtual {v0, p1}, Lcom/huawei/hms/hmsscankit/RemoteView;->onCreate(Landroid/os/Bundle;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p1, p1, Lp9c;->d:Landroid/widget/FrameLayout;

    .line 240
    .line 241
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->P()Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    .line 247
    const/4 v2, -0x1

    .line 248
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lp9c;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "getRoot(...)"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final N0()V
    .locals 4

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
    move-result-object v2

    .line 11
    array-length v3, v2

    .line 12
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lynb;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->M0()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lgob;->c()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p5, "qrcode"

    .line 2
    .line 3
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p4}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->Q(Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    iget-object p5, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "scanConfig"

    .line 14
    .line 15
    if-nez p5, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object p5, v0

    .line 21
    :cond_0
    invoke-virtual {p5}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->e()Z

    .line 22
    .line 23
    .line 24
    move-result p5

    .line 25
    if-eqz p5, :cond_2

    .line 26
    .line 27
    iget-object p5, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 28
    .line 29
    if-eqz p5, :cond_1

    .line 30
    .line 31
    invoke-virtual {p5, p4, p2, p3}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object p2, Lux6;->a:Lux6;

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p2, p3, p1}, Lux6;->i(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-object p5, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 45
    .line 46
    if-eqz p5, :cond_3

    .line 47
    .line 48
    invoke-virtual {p5, p4, p2, p3}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->C0()Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    new-instance v9, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;

    .line 60
    .line 61
    iget-object v2, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 62
    .line 63
    if-nez v2, :cond_4

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move-object v0, v2

    .line 70
    :goto_0
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->b()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v5, "HMS"

    .line 79
    .line 80
    move-object v0, v9

    .line 81
    move-object v1, p1

    .line 82
    move-object v2, p3

    .line 83
    move-object v4, p4

    .line 84
    move-object v6, p2

    .line 85
    invoke-direct/range {v0 .. v6}, Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p5, v9}, Lteam/opay/opb/qrcode/hms/business/HmsQRCodeViewModel;->r(Lteam/opay/opb/qrcode/hms/business/data/DecodeQrCodeReq;)Landroidx/lifecycle/LiveData;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 93
    .line 94
    .line 95
    move-result-object p5

    .line 96
    const-string v0, "getViewLifecycleOwner(...)"

    .line 97
    .line 98
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v9, Lu7c;

    .line 102
    .line 103
    move-object v0, v9

    .line 104
    move-object v1, p0

    .line 105
    move-wide v2, v7

    .line 106
    move-object v5, p2

    .line 107
    move-object v6, p3

    .line 108
    invoke-direct/range {v0 .. v6}, Lu7c;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p5, v9}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public Y()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lp9c;->d:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const-string v1, "scanContainer"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->m0(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getFragmentTab()Lteam/opay/core/common/spi/FragmentTab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/FragmentTab;->QRCODE_HMS:Lteam/opay/core/common/spi/FragmentTab;

    .line 2
    .line 3
    return-object v0
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lp9c;->e:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 6
    .line 7
    const-string v1, "scanRayView"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->X()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->y0(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)Lp9c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lp9c;->e:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->e()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment$startAnimation$$inlined$doOnLayout$1;-><init>(Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

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
    .locals 13
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    const/16 v2, 0x21

    .line 16
    .line 17
    const-string v3, "key_uri"

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    :try_start_1
    const-class v1, Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {p1, v3, v1}, Lvx2;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/os/Parcelable;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-object p1, v0

    .line 36
    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p1, v0

    .line 40
    :goto_1
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, p1}, Lmx6;->a(Landroid/content/Context;Landroid/net/Uri;)Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 49
    .line 50
    const-string v1, "scanConfig"

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object p1, v0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->q:Ljava/lang/String;

    .line 63
    .line 64
    new-instance p1, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object v2, v0

    .line 74
    :cond_3
    invoke-virtual {v2}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iget-object v2, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->r:Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;

    .line 79
    .line 80
    if-nez v2, :cond_4

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object v0, v2

    .line 87
    :goto_2
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/business/data/ScanConfig;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    const-string v0, "default"

    .line 94
    .line 95
    :cond_5
    move-object v5, v0

    .line 96
    const/16 v11, 0x68

    .line 97
    .line 98
    const/4 v12, 0x0

    .line 99
    const-string v3, "HMS"

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    const-string v7, "2"

    .line 103
    .line 104
    const-wide/16 v8, 0x0

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    move-object v2, p1

    .line 108
    invoke-direct/range {v2 .. v12}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 112
    .line 113
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->F0()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->L0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->j0(Lvka;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 9
    .line 10
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    if-ne p1, p2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object p2, Lgob;->a:Lgob;

    .line 22
    .line 23
    invoke-virtual {p2}, Lgob;->c()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    array-length p3, p2

    .line 28
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1, p2}, Lynb;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->M0()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->w()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->Y()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->s:Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/core/utils/TrackScanUtil;->B()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->initView()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->G0(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public p0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/QRCodeHmsScanFragment;->B0()Lp9c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lp9c;->e:Lteam/opay/opb/qrcode/hms/widget/ScanRayView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/widget/ScanRayView;->f()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
