.class public abstract Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;
.super Lteam/opay/core/common/spi/IModuleFragment;
.source "BaseHmsScanFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008!\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0019\u0010\r\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0003J\u000f\u0010\u001a\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001a\u0010\u0003J?\u0010!\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00102\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008!\u0010\"J\u001d\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u001b\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u0004\u00a2\u0006\u0004\u0008(\u0010\u0003J\u000f\u0010)\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008)\u0010\u0003JA\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u001b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00102\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001bH&\u00a2\u0006\u0004\u0008+\u0010\"J\u0015\u0010,\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u0010\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u001bH\u0004\u00a2\u0006\u0004\u0008.\u0010/J\u001b\u00101\u001a\u00020\u00042\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010\u001bH\u0004\u00a2\u0006\u0004\u00081\u0010/J\u0017\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0004\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u00086\u0010\u0003J\u000f\u00107\u001a\u00020\u0004H\u0004\u00a2\u0006\u0004\u00087\u0010\u0003J\r\u00108\u001a\u00020\u0010\u00a2\u0006\u0004\u00088\u0010\u0012J\r\u00109\u001a\u00020\u0010\u00a2\u0006\u0004\u00089\u0010\u0012R\u001b\u0010?\u001a\u00020:8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u0016\u0010I\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u0006R\u0016\u0010K\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010\u0006R\"\u0010S\u001a\u00020L8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\"\u0010[\u001a\u00020T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR$\u0010c\u001a\u0004\u0018\u00010\\8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010^\u001a\u0004\u0008_\u0010`\"\u0004\u0008a\u0010bR\"\u0010e\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u0010\u0006\u001a\u0004\u0008e\u0010\u0012\"\u0004\u0008f\u0010gR\"\u0010l\u001a\u0010\u0012\u000c\u0012\n i*\u0004\u0018\u00010\u001b0\u001b0h8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010k\u00a8\u0006m"
    }
    d2 = {
        "Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;",
        "Lteam/opay/core/common/spi/IModuleFragment;",
        "<init>",
        "()V",
        "",
        "U",
        "Z",
        "Lteam/opay/core/common/spi/FragmentTab;",
        "getFragmentTab",
        "()Lteam/opay/core/common/spi/FragmentTab;",
        "onLazyLoad",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onActivityCreated",
        "",
        "T",
        "()Z",
        "onResume",
        "onStart",
        "onPause",
        "onStop",
        "onDestroyView",
        "onDestroy",
        "p0",
        "o0",
        "",
        "code",
        "qrContentSubType",
        "qrContentType",
        "isDecodeLocalBitmap",
        "decodeTime",
        "S",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V",
        "Landroid/net/Uri;",
        "uri",
        "scanType",
        "N",
        "(Landroid/net/Uri;Ljava/lang/String;)V",
        "k0",
        "Y",
        "qrcode",
        "R",
        "Q",
        "(Z)Ljava/lang/String;",
        "a0",
        "(Ljava/lang/String;)V",
        "message",
        "c0",
        "Landroid/view/View;",
        "view",
        "m0",
        "(Landroid/view/View;)V",
        "g0",
        "q0",
        "W",
        "X",
        "Lteam/opay/opb/qrcode/hms/business/HmsViewModel;",
        "a",
        "Lid8;",
        "O",
        "()Lteam/opay/opb/qrcode/hms/business/HmsViewModel;",
        "hmsViewModel",
        "Lcom/huawei/hms/hmsscankit/RemoteView;",
        "b",
        "Lcom/huawei/hms/hmsscankit/RemoteView;",
        "P",
        "()Lcom/huawei/hms/hmsscankit/RemoteView;",
        "i0",
        "(Lcom/huawei/hms/hmsscankit/RemoteView;)V",
        "mScannerView",
        "c",
        "permissionGranted",
        "d",
        "goSetting",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "e",
        "Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "getPerformanceLevel",
        "()Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;",
        "setPerformanceLevel",
        "(Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;)V",
        "performanceLevel",
        "",
        "f",
        "J",
        "getDeviceRam",
        "()J",
        "setDeviceRam",
        "(J)V",
        "deviceRam",
        "Lvka;",
        "g",
        "Lvka;",
        "getOnHMSCallback",
        "()Lvka;",
        "j0",
        "(Lvka;)V",
        "onHMSCallback",
        "h",
        "isFocusPauseCamera",
        "h0",
        "(Z)V",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "i",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermission",
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


# instance fields
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/huawei/hms/hmsscankit/RemoteView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:J

.field public g:Lvka;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public final i:Landroidx/activity/result/ActivityResultLauncher;
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
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/spi/IModuleFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->a:Lid8;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->c:Z

    .line 34
    .line 35
    sget-object v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;->PERFORMANCE_MIDDLE:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 36
    .line 37
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 38
    .line 39
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 40
    .line 41
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lrr0;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lrr0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "registerForActivityResult(...)"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 59
    .line 60
    return-void
.end method

.method public static synthetic H(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->l0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->V(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->e0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->n0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->f0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final U()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->O()Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->w()Landroidx/lifecycle/LiveData;

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
    new-instance v2, Lqr0;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lqr0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$b;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final V(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 6
    .line 7
    if-eqz p0, :cond_4

    .line 8
    .line 9
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapException;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, v0, p1}, Lvka;->e(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapSuccess;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 28
    .line 29
    if-eqz p0, :cond_4

    .line 30
    .line 31
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapSuccess;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$GetLocalBitmapSuccess;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lvka;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    instance-of v0, p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalNoQrCodeFound;

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalNoQrCodeFound;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Lvka;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    instance-of v0, p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalError;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 64
    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalError;

    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalError;->a()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeLocalError;->b()Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {p0, v0, p1}, Lvka;->f(Ljava/lang/String;Lteam/opay/opb/qrcode/core/data/CompressBitmapInfo;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    instance-of v0, p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeResult;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object p0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 86
    .line 87
    if-eqz p0, :cond_4

    .line 88
    .line 89
    check-cast p1, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeResult;

    .line 90
    .line 91
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeResult;->c()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeResult;->b()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/hms/business/data/HmsAlbumDecodeResult$DecodeResult;->a()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p0, v0, v1, p1}, Lvka;->h(ZLjava/util/List;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 110
    .line 111
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method private final Z()V
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

.method public static final b0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic d0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->c0(Ljava/lang/String;)V

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

.method public static final e0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final f0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->c:Z

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
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lvka;->d()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->Y()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public static final l0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final n0(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;Lteam/opay/core/common/base/DismissReason;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "onDismissReason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment$a;->a:[I

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
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->Z()V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->d:Z

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


# virtual methods
.method public final N(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const-string v0, "scanType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->O()Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, p2}, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;->u(Landroid/net/Uri;Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final O()Lteam/opay/opb/qrcode/hms/business/HmsViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/opb/qrcode/hms/business/HmsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P()Lcom/huawei/hms/hmsscankit/RemoteView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(Z)Ljava/lang/String;
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

.method public abstract R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
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
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
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
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->X()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lsk8;->c:Lsk8;

    .line 13
    .line 14
    const-string p2, "QRCode handleResult ignored: Fragment or Activity destroyed"

    .line 15
    .line 16
    const/4 p3, 0x2

    .line 17
    const/4 p4, 0x0

    .line 18
    invoke-static {p1, p2, p4, p3, p4}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lux6;->a:Lux6;

    .line 23
    .line 24
    invoke-virtual {v0}, Lux6;->f()V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p5}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final T()Z
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

.method public final W()Z
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

.method public final X()Z
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

.method public abstract Y()V
.end method

.method public final a0(Ljava/lang/String;)V
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
    sget-object v0, Lux6;->a:Lux6;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ltr0;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Ltr0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2}, Lux6;->g(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lux6;->a:Lux6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lur0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lur0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lux6;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->X()Z

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
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->resumeContinuouslyScan()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lvka;->g()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->o0()V

    .line 26
    .line 27
    .line 28
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

.method public final h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final i0(Lcom/huawei/hms/hmsscankit/RemoteView;)V
    .locals 0
    .param p1    # Lcom/huawei/hms/hmsscankit/RemoteView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 2
    .line 3
    return-void
.end method

.method public final j0(Lvka;)V
    .locals 0
    .param p1    # Lvka;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 2
    .line 3
    return-void
.end method

.method public final k0()V
    .locals 3

    .line 1
    sget-object v0, Lux6;->a:Lux6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lsr0;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lsr0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lux6;->m(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final m0(Landroid/view/View;)V
    .locals 12
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
    new-instance p1, Lteam/opay/core/common/base/DialogInfo;

    .line 7
    .line 8
    sget v0, Lteam/opay/opb/qrcode/hms/R$string;->qr_hms_camera_permission_denied_long:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const-string v0, "getString(...)"

    .line 15
    .line 16
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lteam/opay/opb/qrcode/hms/R$string;->qr_hms_settings:I

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget v1, Lteam/opay/core/common/R$string;->common_cancel:I

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 v10, 0xe3

    .line 38
    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v1, p1

    .line 46
    invoke-direct/range {v1 .. v11}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lteam/opay/core/common/base/CorpDialogFragment;->u:Lteam/opay/core/common/base/CorpDialogFragment$Companion;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lteam/opay/core/common/base/CorpDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/CorpDialogFragment;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lpr0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lpr0;-><init>(Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lteam/opay/core/common/base/BaseDialogFragment;->T(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Lre6;->l(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public abstract o0()V
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
    iget-object p1, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 7
    .line 8
    const-string v0, "android.permission.CAMERA"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->U()V

    .line 14
    .line 15
    .line 16
    return-void
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
    sget-object p1, Lwx6;->a:Lwx6;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lwx6;->d(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lk93;->a:Lk93;

    .line 14
    .line 15
    invoke-virtual {p1}, Lk93;->g()Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 24
    .line 25
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->e:Lteam/opay/opb/qrcode/core/annotation/PERFORMANCE;

    .line 26
    .line 27
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->f:J

    .line 38
    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onDestroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->g:Lvka;

    .line 6
    .line 7
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
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onPause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->p0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseLazyFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onResume()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->o0()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->c:Z

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->T()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->d:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->d:Z

    .line 36
    .line 37
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 38
    .line 39
    const-string v1, "android.permission.CAMERA"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->Y()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStart()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/core/common/base/BaseFragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->onStop()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public abstract p0()V
.end method

.method public final q0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->X()Z

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
    iput-boolean v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->h:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->b:Lcom/huawei/hms/hmsscankit/RemoteView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/hmsscankit/RemoteView;->pauseContinuouslyScan()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lteam/opay/opb/qrcode/hms/business/BaseHmsScanFragment;->p0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
