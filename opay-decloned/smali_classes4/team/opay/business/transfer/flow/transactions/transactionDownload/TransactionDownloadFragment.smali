.class public final Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;
.super Lteam/opay/business/transfer/flow/transactions/transactionDownload/Hilt_TransactionDownloadFragment;
.source "TransactionDownloadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;,
        Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;,
        Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0001\u0018\u0000 o2\u00020\u0001:\u0002pqB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u001f\u0010\u000c\u001a\u00020\u00042\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\'\u0010\u0019\u001a\u00020\u00042\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0003J\u000f\u0010\u001c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0003J\u000f\u0010\u001d\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0003J\u000f\u0010\u001f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u000f\u0010!\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0003J\u000f\u0010&\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0003J\u0017\u0010)\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0017\u0010+\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008+\u0010,J+\u00104\u001a\u0002032\u0006\u0010.\u001a\u00020-2\u0008\u00100\u001a\u0004\u0018\u00010/2\u0008\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00084\u00105J!\u00107\u001a\u00020\u00042\u0006\u00106\u001a\u0002032\u0008\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00087\u00108R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u001b\u0010D\u001a\u00020?8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0014\u0010K\u001a\u00020\u000e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u001c\u0010S\u001a\u00020\u00168B@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010RR#\u0010W\u001a\n T*\u0004\u0018\u00010\u00160\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010A\u001a\u0004\u0008V\u0010RR\u0018\u0010Z\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010^\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\"\u0010c\u001a\u0010\u0012\u000c\u0012\n T*\u0004\u0018\u00010`0`0_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\"\u0010e\u001a\u0010\u0012\u000c\u0012\n T*\u0004\u0018\u00010`0`0_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008d\u0010bR\"\u0010g\u001a\u0010\u0012\u000c\u0012\n T*\u0004\u0018\u00010`0`0_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010bR\"\u0010i\u001a\u0010\u0012\u000c\u0012\n T*\u0004\u0018\u00010`0`0_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010bR\u0014\u0010l\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010kR\u0014\u0010n\u001a\u00020 8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010\"\u00a8\u0006r"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "",
        "z0",
        "Z0",
        "q0",
        "R0",
        "",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "tnList",
        "b1",
        "(Ljava/util/List;)V",
        "",
        "type",
        "m0",
        "(Ljava/lang/String;)V",
        "",
        "endID",
        "S0",
        "(I)V",
        "Ljava/util/Date;",
        "start",
        "end",
        "V0",
        "(Ljava/util/Date;Ljava/util/Date;)V",
        "d1",
        "X0",
        "g1",
        "r0",
        "l0",
        "",
        "n0",
        "()Z",
        "i1",
        "o0",
        "t0",
        "i0",
        "Lteam/opay/business/transfer/flow/api/UserAddressDto;",
        "addressDto",
        "U0",
        "(Lteam/opay/business/transfer/flow/api/UserAddressDto;)V",
        "f1",
        "(Lteam/opay/business/transfer/flow/api/UserAddressDto;)Ljava/lang/String;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lk76;",
        "f",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "s0",
        "()Lk76;",
        "binding",
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "g",
        "Lid8;",
        "y0",
        "()Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "viewModel",
        "Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;",
        "h",
        "Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;",
        "selectTimeDto",
        "i",
        "Ljava/lang/String;",
        "format",
        "j",
        "Lteam/opay/business/transfer/flow/api/UserAddressDto;",
        "mUserAddressDto",
        "k",
        "Ljava/util/Date;",
        "w0",
        "()Ljava/util/Date;",
        "maxDate",
        "kotlin.jvm.PlatformType",
        "l",
        "x0",
        "minDate",
        "m",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "currentTransferNumber",
        "Lteam/opay/business/transfer/flow/api/KABranchInfo;",
        "n",
        "Lteam/opay/business/transfer/flow/api/KABranchInfo;",
        "currentBranchInfo",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "o",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "verifyOPayPinResult",
        "p",
        "launcherPin",
        "q",
        "selectBranchlauncher",
        "r",
        "bindEmailResult",
        "v0",
        "()Ljava/lang/String;",
        "mTextInputEmail",
        "A0",
        "isVerifyAddress",
        "s",
        "SelectTimeDto",
        "Companion",
        "business-transfer-flow_release"
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
.field public static final s:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic t:[Lzo7;
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
.field public final f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/business/transfer/flow/api/UserAddressDto;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/business/provider/smeVa/TransferNumberInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lteam/opay/business/transfer/flow/api/KABranchInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
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
    const-string v1, "getBinding()Lteam/opay/business/transfer/flow/databinding/FlowFragmentTransactionDownloadBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;

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
    sput-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->t:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/Hilt_TransactionDownloadFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 5
    .line 6
    const-class v1, Lk76;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 12
    .line 13
    const-class v0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$2;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$3;

    .line 31
    .line 32
    invoke-direct {v4, p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->g:Lid8;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-direct {v0, v3, v3, v1, v3}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;-><init>(Ljava/util/Date;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 48
    .line 49
    const-string v0, "dd MMM, yyyy"

    .line 50
    .line 51
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->i:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/util/Date;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k:Ljava/util/Date;

    .line 59
    .line 60
    new-instance v0, Lewe;

    .line 61
    .line 62
    invoke-direct {v0}, Lewe;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->l:Lid8;

    .line 70
    .line 71
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 72
    .line 73
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lpwe;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lpwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "registerForActivityResult(...)"

    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->o:Landroidx/activity/result/ActivityResultLauncher;

    .line 91
    .line 92
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 93
    .line 94
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lwwe;

    .line 98
    .line 99
    invoke-direct {v2, p0}, Lwwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->p:Landroidx/activity/result/ActivityResultLauncher;

    .line 110
    .line 111
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 112
    .line 113
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lxwe;

    .line 117
    .line 118
    invoke-direct {v2, p0}, Lxwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q:Landroidx/activity/result/ActivityResultLauncher;

    .line 129
    .line 130
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 131
    .line 132
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lywe;

    .line 136
    .line 137
    invoke-direct {v2, p0}, Lywe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Lag;)Landroidx/activity/result/ActivityResultLauncher;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r:Landroidx/activity/result/ActivityResultLauncher;

    .line 148
    .line 149
    return-void
.end method

.method public static final B0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v0, "pin"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    :cond_0
    const-string p1, ""

    .line 23
    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->o0()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public static final C0()Ljava/util/Date;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lf96;->b:Lf96;

    .line 6
    .line 7
    invoke-virtual {v1}, Lf96;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x7e3

    .line 16
    .line 17
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x7e6

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static final D0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->X0()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final E0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v2, v2, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    xor-int/2addr v2, v0

    .line 22
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lk76;->e:Landroidx/constraintlayout/widget/Group;

    .line 30
    .line 31
    const-string v2, "addressGroup"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v1, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget-object p0, p0, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v3, "showAddress"

    .line 73
    .line 74
    invoke-static {v3, p0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-array v0, v0, [Lkotlin/Pair;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    aput-object p0, v0, v3

    .line 82
    .line 83
    const-string p0, "statement_report_address_switch_click"

    .line 84
    .line 85
    invoke-virtual {v1, v2, p0, v0}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 86
    .line 87
    .line 88
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->T0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lf96;->b:Lf96;

    .line 5
    .line 6
    invoke-virtual {v0}, Lf96;->l()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->R0()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lud;->a:Lud;

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "opay://kaTransfer/selectBranchDialog"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {v0}, Lkt6;->l(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    const-string v1, "android.intent.extra.TEXT"

    .line 39
    .line 40
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q:Landroidx/activity/result/ActivityResultLauncher;

    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v3, p0

    .line 49
    invoke-static/range {v3 .. v8}, Lvd;->h(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->u0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final G0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->Z0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic H(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final H0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/widget/TextInputView;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p2, Lmnf;->a:Lmnf;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->v0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Lmnf;->e(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p2, ""

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Lteam/opay/core/widget/TextInputView;->setActivated(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/widget/TextInputView;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->H0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/widget/TextInputView;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final I0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->l0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->F0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J0(Lteam/opay/core/widget/TextInputView;Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/core/widget/TextInputView;->getInputEditText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/widget/TextInputView;->r()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    sget-object p0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x0

    .line 26
    new-array p2, p2, [Lkotlin/Pair;

    .line 27
    .line 28
    const-string p3, "statement_report_email_enter"

    .line 29
    .line 30
    invoke-virtual {p0, p1, p3, p2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget p2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_email_error:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "getString(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/TextInputView;->setErrorText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic K(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->c1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final K0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Lkotlin/Pair;

    .line 9
    .line 10
    const-string v3, "statement_report_email_edit_click"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lud;->a:Lud;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "opay://business/kycUpdate/changeEmail?source=flow-download"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r:Landroidx/activity/result/ActivityResultLauncher;

    .line 28
    .line 29
    const/4 v7, 0x4

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    move-object v3, p0

    .line 33
    invoke-static/range {v3 .. v8}, Lvd;->h(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->D0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final L0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->l0()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v2, "statement_report_send_click"

    .line 17
    .line 18
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method public static synthetic M(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->L0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final M0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Map;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "map"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "email"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/TextInputView;->setInputEditText(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static synthetic N(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->E0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final N0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Last month"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic O(Lteam/opay/core/widget/TextInputView;Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->J0(Lteam/opay/core/widget/TextInputView;Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final O0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Last 2 months"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->B0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final P0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Custom"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->K0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Q0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->d1()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->P0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->N0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->O0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string v1, "android.intent.extra.TEXT"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :try_start_0
    const-class v1, Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkt6;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lteam/opay/business/transfer/flow/api/KABranchInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    nop

    .line 35
    :cond_1
    move-object p1, v0

    .line 36
    :goto_1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 43
    .line 44
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/KABranchInfo;->getMerchantNo()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-object v1, v0

    .line 54
    :goto_2
    const-string v2, ""

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    :cond_3
    iget-object v3, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/KABranchInfo;->getMerchantName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_4
    if-nez v0, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    move-object v2, v0

    .line 71
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "-"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 95
    .line 96
    .line 97
    :cond_6
    return-void
.end method

.method public static synthetic U(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->G0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->p0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->Q0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->V0(Ljava/util/Date;Ljava/util/Date;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic X(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Map;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->M0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Map;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y()Ljava/util/Date;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->C0()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final Y0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Custom"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v1, p1, v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->W0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->g1()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->a1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->j0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final a1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->t:Lteam/opay/core/widget/DropBoxView;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static synthetic b0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->I0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->e1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 33
    .line 34
    invoke-virtual {p1}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumberShow()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    const-string p1, ""

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method public static synthetic d0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->Y0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Calendar;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "calendar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Custom"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-static {p0, p1, v0, v1, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->W0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/Date;Ljava/util/Date;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->g1()V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final synthetic f0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lk76;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->y0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->b1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final h1(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v0, "data"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->o0()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    return-void
.end method

.method private final i1()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lf96;->b:Lf96;

    .line 3
    .line 4
    invoke-virtual {v1}, Lf96;->m()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-object v0, Lud;->a:Lud;

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "otravel://input_payment_pin/entrance?from=transactionDownload"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->o:Landroidx/activity/result/ActivityResultLauncher;

    .line 23
    .line 24
    const/4 v7, 0x4

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v3, p0

    .line 28
    invoke-static/range {v3 .. v8}, Lvd;->h(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lud;->a:Lud;

    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget-object v4, Lf6e;->a:Lf6e;

    .line 39
    .line 40
    new-array v4, v0, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v5, "flow-download"

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    aput-object v5, v4, v6

    .line 46
    .line 47
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v4, "opay://business/pin/verify?from=%s"

    .line 52
    .line 53
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v4, "format(...)"

    .line 58
    .line 59
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3, v0}, Lud;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v1}, Lf96;->l()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v1, "businessType"

    .line 78
    .line 79
    const-string v2, "statementDownload"

    .line 80
    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    const-string v1, "extra"

    .line 85
    .line 86
    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object v6, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->p:Landroidx/activity/result/ActivityResultLauncher;

    .line 90
    .line 91
    const/4 v9, 0x4

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v8, 0x0

    .line 94
    move-object v5, p0

    .line 95
    invoke-static/range {v5 .. v10}, Lvd;->h(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method public static final j0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->o:Lteam/opay/core/widget/HttpViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    sget-object v3, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    if-nez v1, :cond_3

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v0, v0, v1

    .line 44
    .line 45
    :goto_2
    if-ne v0, v4, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lteam/opay/business/transfer/flow/api/UserAddressDto;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->U0(Lteam/opay/business/transfer/flow/api/UserAddressDto;)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    .line 62
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    return-object p0
.end method

.method public static final k0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 1
    sget-object v0, Lkk8;->c:Lkk8;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "------------bindEmailResult = "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v0, v1, v3, v2, v3}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-string v0, "key_account"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_0
    if-nez v3, :cond_1

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-lez p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p1, p1, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lteam/opay/core/widget/TextInputView;->setInputText(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private final m0(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lk76;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lk76;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lk76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const-string v1, "dateTip"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const v1, -0x6cfb236a

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    .line 54
    const v1, 0x78fb7791

    .line 55
    .line 56
    .line 57
    if-eq v0, v1, :cond_2

    .line 58
    .line 59
    const v1, 0x7cd95fcb

    .line 60
    .line 61
    .line 62
    if-eq v0, v1, :cond_0

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_0
    const-string v0, "Last 2 months"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p1, p1, Lk76;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1, v2, v2}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->V0(Ljava/util/Date;Ljava/util/Date;)V

    .line 97
    .line 98
    .line 99
    sget p1, Lteam/opay/business/transfer/flow/R$id;->bill_two_mouth:I

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->S0(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "Custom"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_3

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lk76;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 119
    .line 120
    const-string v0, "iconChecked"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p1, p1, Lk76;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 135
    .line 136
    .line 137
    sget p1, Lteam/opay/business/transfer/flow/R$id;->bill_custom:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->S0(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    const-string v0, "Last month"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object p1, p1, Lk76;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {p1, v2, v3}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->V0(Ljava/util/Date;Ljava/util/Date;)V

    .line 174
    .line 175
    .line 176
    sget p1, Lteam/opay/business/transfer/flow/R$id;->bill_month:I

    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->S0(I)V

    .line 179
    .line 180
    .line 181
    :goto_0
    return-void
.end method

.method public static final p0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->o:Lteam/opay/core/widget/HttpViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    sget-object v3, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    if-nez v1, :cond_3

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v0, v0, v1

    .line 44
    .line 45
    :goto_2
    if-eq v0, v4, :cond_7

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    if-eq v0, v1, :cond_4

    .line 49
    .line 50
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->b()Lteam/opay/core/http/arch/ApiError;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-nez p1, :cond_6

    .line 69
    .line 70
    :cond_5
    sget p1, Lteam/opay/business/share/R$string;->share_something_went_wrong:I

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p0, "getString(...)"

    .line 77
    .line 78
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    sget-object p1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadSuccessFragment;->g:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadSuccessFragment$Companion;

    .line 86
    .line 87
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadSuccessFragment$Companion;->a()Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadSuccessFragment;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0}, Lre6;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lteam/opay/core/common/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    sget v1, Lteam/opay/business/transfer/flow/R$id;->fragment_container:I

    .line 103
    .line 104
    invoke-static {p0, v1, p1, v0}, Lre6;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 105
    .line 106
    .line 107
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public static final u0(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->o:Lteam/opay/core/widget/HttpViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    sget-object v3, Lteam/opay/core/http/arch/Status;->LOADING:Lteam/opay/core/http/arch/Status;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->c()Lteam/opay/core/http/arch/Status;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_2
    if-nez v1, :cond_3

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$a;->a:[I

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    aget v0, v0, v1

    .line 44
    .line 45
    :goto_2
    const-string v1, "Last month"

    .line 46
    .line 47
    if-eq v0, v4, :cond_5

    .line 48
    .line 49
    const/4 p1, 0x2

    .line 50
    if-eq v0, p1, :cond_4

    .line 51
    .line 52
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_4
    new-instance p1, Ljava/util/Date;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k:Ljava/util/Date;

    .line 62
    .line 63
    invoke-direct {p0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    invoke-virtual {p1}, Lteam/opay/core/http/arch/Resource;->a()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Long;

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    new-instance p1, Ljava/util/Date;

    .line 80
    .line 81
    const/16 v0, 0x3e8

    .line 82
    .line 83
    int-to-long v4, v0

    .line 84
    mul-long v2, v2, v4

    .line 85
    .line 86
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k:Ljava/util/Date;

    .line 90
    .line 91
    invoke-direct {p0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m0(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p0
.end method

.method private final x0()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Date;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lk76;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "getText(...)"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :cond_1
    :goto_0
    return v1
.end method

.method public final R0()V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$queryTransferNumberList$1;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Ljr2;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final S0(I)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lk76;->y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 13
    .line 14
    .line 15
    sget v1, Lteam/opay/business/transfer/flow/R$id;->iconChecked:I

    .line 16
    .line 17
    const/4 v2, 0x7

    .line 18
    invoke-virtual {v0, v1, v2, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-virtual {v0, v1, v2, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p1, p1, Lk76;->y:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p1, p1, Lk76;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 39
    .line 40
    const-string v0, "iconChecked"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lg0g;->h(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final U0(Lteam/opay/business/transfer/flow/api/UserAddressDto;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->j:Lteam/opay/business/transfer/flow/api/UserAddressDto;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->f1(Lteam/opay/business/transfer/flow/api/UserAddressDto;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lk76;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final V0(Ljava/util/Date;Ljava/util/Date;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lk76;->K:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    sget-object v1, Lxa6;->a:Lxa6;

    .line 10
    .line 11
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, p1, v2}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->d(Ljava/util/Date;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lk76;->H:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    sget-object v0, Lxa6;->a:Lxa6;

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->i:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p2, v1}, Lxa6;->d(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->c(Ljava/util/Date;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final X0()V
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->u:Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;->a()Lteam/opay/core/common/android/SpinnerDatePickerFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->x0()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->x0()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    cmp-long v6, v2, v4

    .line 32
    .line 33
    if-lez v6, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->x0()Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->c0(Ljava/util/Date;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->b0(Ljava/util/Date;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lqwe;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lqwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->d0(Lkotlin/jvm/functions/Function1;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_2
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->a0(Ljava/util/Date;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final Z0()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/SelectFileTypeDialog;->s:Lteam/opay/business/transfer/flow/transactions/transactionDownload/SelectFileTypeDialog$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lk76;->t:Lteam/opay/core/widget/DropBoxView;

    .line 8
    .line 9
    invoke-virtual {v1}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/SelectFileTypeDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/business/transfer/flow/transactions/transactionDownload/SelectFileTypeDialog;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lvwe;

    .line 28
    .line 29
    invoke-direct {v3, p0}, Lvwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Lteam/opay/core/common/android/event/CallbackWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/SelectFileTypeDialog;->d0(Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final b1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/ChangeTransferNumberDialog;->y:Lteam/opay/business/transfer/flow/transactions/transactionDownload/ChangeTransferNumberDialog$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v2, v2, [Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 9
    .line 10
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, v1, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/ChangeTransferNumberDialog$Companion;->a(Lteam/opay/business/provider/smeVa/TransferNumberInfo;[Lteam/opay/business/provider/smeVa/TransferNumberInfo;)Lteam/opay/business/transfer/flow/transactions/transactionDownload/ChangeTransferNumberDialog;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lowe;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lowe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/ChangeTransferNumberDialog;->V(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final d1()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->u:Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/SpinnerDatePickerFragment$Companion;->a()Lteam/opay/core/common/android/SpinnerDatePickerFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->x0()Ljava/util/Date;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "<get-minDate>(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->c0(Ljava/util/Date;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->b0(Ljava/util/Date;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v1, Luwe;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Luwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->d0(Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->w0()Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_1
    invoke-virtual {v0, v1}, Lteam/opay/core/common/android/SpinnerDatePickerFragment;->a0(Ljava/util/Date;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final f1(Lteam/opay/business/transfer/flow/api/UserAddressDto;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/UserAddressDto;->getAddress()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/UserAddressDto;->getLandmark()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/UserAddressDto;->getCity()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/UserAddressDto;->getLga()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/UserAddressDto;->getState()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "toString(...)"

    .line 98
    .line 99
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-object p1
.end method

.method public final g1()V
    .locals 4

    .line 1
    sget-object v0, Lf96;->b:Lf96;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf96;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-static {v0}, Le33;->c(Ljava/util/Date;)Ljava/util/Date;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-static {v2}, Le33;->c(Ljava/util/Date;)Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_1
    const-string v2, "dateTip"

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-static {v1, v3, v3}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ne v0, v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Lk76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lk76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->r0()V

    .line 98
    .line 99
    .line 100
    :cond_3
    return-void
.end method

.method public final i0()V
    .locals 2

    .line 1
    sget-object v0, Lf96;->b:Lf96;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf96;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->y0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->r()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lrwe;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lrwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final l0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->hideKeyboard()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lk76;->c:Lcom/google/android/material/button/MaterialButton;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n0()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lteam/opay/business/transfer/flow/R$string;->flow_transactions_illegal_time:I

    .line 28
    .line 29
    invoke-static {v0, v1}, Let;->u(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->i1()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final n0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 12
    .line 13
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final o0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 13
    .line 14
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->v0()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-static {v1}, Luke;->b(Ljava/util/Date;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const/16 v1, 0x3e8

    .line 30
    .line 31
    int-to-long v5, v1

    .line 32
    div-long v7, v3, v5

    .line 33
    .line 34
    invoke-static {v2}, Luke;->a(Ljava/util/Date;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    div-long/2addr v1, v5

    .line 39
    iget-object v3, v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->m:Lteam/opay/business/provider/smeVa/TransferNumberInfo;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Lteam/opay/business/provider/smeVa/TransferNumberInfo;->getTransferNumber()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v10, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v10, v4

    .line 51
    :goto_0
    iget-object v3, v0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v3}, Lteam/opay/business/transfer/flow/api/KABranchInfo;->getMerchantNo()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object v11, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object v11, v4

    .line 62
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v3, v3, Lk76;->g:Landroidx/appcompat/widget/SwitchCompat;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v3, v3, Lk76;->t:Lteam/opay/core/widget/DropBoxView;

    .line 77
    .line 78
    invoke-virtual {v3}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    new-instance v15, Lteam/opay/business/transfer/flow/api/BillDownloadRequest;

    .line 83
    .line 84
    const/4 v14, 0x1

    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    move-object v3, v15

    .line 89
    move-wide v5, v7

    .line 90
    move-wide v7, v1

    .line 91
    move-object v1, v15

    .line 92
    move-object/from16 v15, v16

    .line 93
    .line 94
    invoke-direct/range {v3 .. v15}, Lteam/opay/business/transfer/flow/api/BillDownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    invoke-direct/range {p0 .. p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->y0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2, v1}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->v(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v2, Ltwe;

    .line 106
    .line 107
    invoke-direct {v2, v0}, Ltwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0, v2}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lk76;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    sget-object p1, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    const-string v2, "statement_report_page_show"

    .line 21
    .line 22
    invoke-virtual {p1, p2, v2, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->z0()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->t0()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lk76;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const-string p2, "billMonth"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lzwe;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lzwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lk76;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const-string p2, "billTwoMouth"

    .line 57
    .line 58
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Lfwe;

    .line 62
    .line 63
    invoke-direct {p2, p0}, Lfwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lk76;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    const-string p2, "billCustom"

    .line 76
    .line 77
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Lgwe;

    .line 81
    .line 82
    invoke-direct {p2, p0}, Lgwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lk76;->K:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    const-string p2, "tvStartTime"

    .line 95
    .line 96
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lhwe;

    .line 100
    .line 101
    invoke-direct {p2, p0}, Lhwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p1, p1, Lk76;->H:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    const-string p2, "tvEndTime"

    .line 114
    .line 115
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance p2, Liwe;

    .line 119
    .line 120
    invoke-direct {p2, p0}, Liwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Lk76;->d:Landroid/view/View;

    .line 131
    .line 132
    const-string p2, "actionSwitch"

    .line 133
    .line 134
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p2, Ljwe;

    .line 138
    .line 139
    invoke-direct {p2, p0}, Ljwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object p1, p1, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 150
    .line 151
    const-string p2, "inputAccountNumber"

    .line 152
    .line 153
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Lkwe;

    .line 157
    .line 158
    invoke-direct {p2, p0}, Lkwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iget-object p1, p1, Lk76;->t:Lteam/opay/core/widget/DropBoxView;

    .line 169
    .line 170
    const-string p2, "inputFileType"

    .line 171
    .line 172
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance p2, Llwe;

    .line 176
    .line 177
    invoke-direct {p2, p0}, Llwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 178
    .line 179
    .line 180
    invoke-static {p1, p2}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p1, p1, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 188
    .line 189
    sget-object p2, Lf96;->b:Lf96;

    .line 190
    .line 191
    invoke-virtual {p2}, Lf96;->e()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    const-string v2, "emailEdit"

    .line 200
    .line 201
    if-lez v1, :cond_0

    .line 202
    .line 203
    invoke-virtual {p2}, Lf96;->e()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {p1, v1}, Lteam/opay/core/widget/TextInputView;->setInputText(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Lf96;->l()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_0

    .line 215
    .line 216
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v1, v1, Lk76;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lg0g;->h(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 248
    .line 249
    .line 250
    :cond_0
    new-instance v0, Lmwe;

    .line 251
    .line 252
    invoke-direct {v0, p0, p1}, Lmwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;Lteam/opay/core/widget/TextInputView;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/TextInputView;->g(Lkotlin/jvm/functions/Function1;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lnwe;

    .line 259
    .line 260
    invoke-direct {v0, p0}, Lnwe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/TextInputView;->f(Lkotlin/jvm/functions/Function0;)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Laxe;

    .line 267
    .line 268
    invoke-direct {v0, p1, p0}, Laxe;-><init>(Lteam/opay/core/widget/TextInputView;Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v0}, Lteam/opay/core/widget/TextInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Lk76;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 279
    .line 280
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v0, Lbxe;

    .line 284
    .line 285
    invoke-direct {v0, p0}, Lbxe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 286
    .line 287
    .line 288
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    iget-object p1, p1, Lk76;->c:Lcom/google/android/material/button/MaterialButton;

    .line 296
    .line 297
    const-string v0, "actionConfirm"

    .line 298
    .line 299
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lcxe;

    .line 303
    .line 304
    invoke-direct {v0, p0}, Lcxe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 305
    .line 306
    .line 307
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Lf96;->m()Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-eqz p1, :cond_1

    .line 315
    .line 316
    invoke-virtual {p2}, Lteam/opay/core/common/GenericStorage;->a()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-eqz p1, :cond_2

    .line 321
    .line 322
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const-string v0, "getApplication(...)"

    .line 331
    .line 332
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Ldxe;

    .line 336
    .line 337
    invoke-direct {v0, p0}, Ldxe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {p1, p2, v0}, Lteam/opay/swarmfoundation/data/IFunAttrMap;->attributeMap(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V

    .line 341
    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p2}, Lf96;->e()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 349
    .line 350
    .line 351
    move-result p2

    .line 352
    if-lez p2, :cond_2

    .line 353
    .line 354
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    iget-object p2, p2, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 359
    .line 360
    invoke-virtual {p2, p1}, Lteam/opay/core/widget/TextInputView;->setInputEditText(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->i0()V

    .line 364
    .line 365
    .line 366
    return-void
.end method

.method public final q0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lg0g;->e(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/core/widget/TextInputView;->getEditText()Landroidx/appcompat/widget/AppCompatEditText;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final r0()V
    .locals 2

    .line 1
    sget-object v0, Lmnf;->a:Lmnf;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->v0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lmnf;->e(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->b()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->h:Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment$SelectTimeDto;->a()Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->A0()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 40
    .line 41
    invoke-virtual {v0}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lk76;->t:Lteam/opay/core/widget/DropBoxView;

    .line 56
    .line 57
    invoke-virtual {v0}, Lteam/opay/core/widget/DropBoxView;->getInputText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lk76;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    const-string v1, "dateTip"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 88
    :goto_1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v1, v1, Lk76;->c:Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final s0()Lk76;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->f:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->t:[Lzo7;

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
    check-cast v0, Lk76;

    .line 13
    .line 14
    return-object v0
.end method

.method public final t0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->y0()Lteam/opay/business/transfer/flow/TransferFlowViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->w()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lswe;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lswe;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Lpna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final v0()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->s:Lteam/opay/core/widget/TextInputView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/widget/TextInputView;->getInputText()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final w0()Ljava/util/Date;
    .locals 3

    .line 1
    sget-object v0, Lf96;->b:Lf96;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf96;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k:Ljava/util/Date;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Le33;->a(Ljava/util/Date;II)Ljava/util/Date;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->k:Ljava/util/Date;

    .line 19
    .line 20
    :goto_0
    return-object v0
.end method

.method public final z0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lk76;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const-string v1, "layoutAddress"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lf96;->b:Lf96;

    .line 13
    .line 14
    invoke-virtual {v1}, Lf96;->l()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    xor-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    invoke-static {v0, v2}, Lg0g;->j(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lk76;->z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {v1}, Lf96;->l()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_based_on:I

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_branch:I

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lk76;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    invoke-virtual {v1}, Lf96;->l()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_account_number_tip:I

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_branch_tip:I

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v0, v0, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 84
    .line 85
    invoke-virtual {v1}, Lf96;->l()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_account_number_hint:I

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    sget v2, Lteam/opay/business/transfer/flow/R$string;->flow_transaction_branch_hint:I

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lteam/opay/core/widget/DropBoxView;->setHintText(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lf96;->l()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    new-instance v0, Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 117
    .line 118
    invoke-virtual {v1}, Lf96;->h()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1}, Lf96;->g()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-direct {v0, v2, v1}, Lteam/opay/business/transfer/flow/api/KABranchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 130
    .line 131
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->s0()Lk76;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v0, v0, Lk76;->q:Lteam/opay/core/widget/DropBoxView;

    .line 136
    .line 137
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/KABranchInfo;->getMerchantNo()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_3

    .line 147
    :cond_3
    move-object v1, v2

    .line 148
    :goto_3
    const-string v3, ""

    .line 149
    .line 150
    if-nez v1, :cond_4

    .line 151
    .line 152
    move-object v1, v3

    .line 153
    :cond_4
    iget-object v4, p0, Lteam/opay/business/transfer/flow/transactions/transactionDownload/TransactionDownloadFragment;->n:Lteam/opay/business/transfer/flow/api/KABranchInfo;

    .line 154
    .line 155
    if-eqz v4, :cond_5

    .line 156
    .line 157
    invoke-virtual {v4}, Lteam/opay/business/transfer/flow/api/KABranchInfo;->getMerchantName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :cond_5
    if-nez v2, :cond_6

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_6
    move-object v3, v2

    .line 165
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v1, "-"

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/DropBoxView;->setInputText(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_7
    return-void
.end method
