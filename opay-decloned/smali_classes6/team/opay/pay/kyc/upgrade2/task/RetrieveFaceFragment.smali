.class public final Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;
.super Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;
.source "RetrieveFaceFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment<",
        "Lsh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 @2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001AB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J)\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0017\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0002\u00a2\u0006\u0004\u0008\"\u0010#R\u001b\u0010)\u001a\u00020$8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u0010\u000bR(\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u0005088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;",
        "Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;",
        "Lsh6;",
        "<init>",
        "()V",
        "",
        "G0",
        "addObserver",
        "Lteam/opay/pay/kyc/base/FaceResult;",
        "faceResult",
        "I0",
        "(Lteam/opay/pay/kyc/base/FaceResult;)V",
        "y0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "onBackPressed",
        "()Z",
        "Lteam/opay/pay/kyc/base/KycNodeData;",
        "Y",
        "()Lteam/opay/pay/kyc/base/KycNodeData;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;",
        "it",
        "D0",
        "(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "l",
        "Lid8;",
        "A0",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;",
        "m",
        "B0",
        "()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;",
        "viewModel",
        "Lteam/opay/face/dialog/OFaceInProgressFragment;",
        "n",
        "Lteam/opay/face/dialog/OFaceInProgressFragment;",
        "progressFragment",
        "o",
        "Lteam/opay/pay/kyc/base/FaceResult;",
        "z0",
        "()Lteam/opay/pay/kyc/base/FaceResult;",
        "setFaceResult",
        "Lkotlin/Function0;",
        "p",
        "Lkotlin/jvm/functions/Function0;",
        "getOnUploadError",
        "()Lkotlin/jvm/functions/Function0;",
        "H0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onUploadError",
        "q",
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
.field public static final q:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/face/dialog/OFaceInProgressFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lteam/opay/pay/kyc/base/FaceResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->q:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$1;->INSTANCE:Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$2;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$3;

    .line 24
    .line 25
    invoke-direct {v4, p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->l:Lid8;

    .line 33
    .line 34
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 40
    .line 41
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$2;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-class v1, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$3;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$4;

    .line 62
    .line 63
    invoke-direct {v4, v3, v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$5;

    .line 67
    .line 68
    invoke-direct {v3, p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v1, v2, v4, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->m:Lid8;

    .line 76
    .line 77
    new-instance v0, Ldrc;

    .line 78
    .line 79
    invoke-direct {v0}, Ldrc;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    return-void
.end method

.method public static final C0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final E0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->G0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final F0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->onBackPressed()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final G0()V
    .locals 15

    .line 1
    new-instance v14, Lteam/opay/pay/kyc/base/FaceData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->o0()Lteam/opay/pay/kyc/base/KycConsultRsp;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/KycConsultRsp;->i()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    :cond_1
    move-object v2, v0

    .line 32
    const/16 v12, 0x7f0

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    move-object v0, v14

    .line 45
    invoke-direct/range {v0 .. v13}, Lteam/opay/pay/kyc/base/FaceData;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lteam/opay/pay/home/Service;->FACE_CHECK:Lteam/opay/pay/home/Service;

    .line 53
    .line 54
    invoke-virtual {v1}, Lteam/opay/pay/home/Service;->getAction()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/gson/Gson;

    .line 59
    .line 60
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v14}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "?param="

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "parse(...)"

    .line 92
    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    invoke-static {p0, v0, v1, v2}, Lteam/opay/pay/base/FragmentKt;->n(Landroidx/fragment/app/Fragment;Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private final I0(Lteam/opay/pay/kyc/base/FaceResult;)V
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
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, v2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$uploadFace$1;-><init>(Lteam/opay/pay/kyc/base/FaceResult;Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljr2;)V

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

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->v()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lerc;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lerc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lfrc;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lfrc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v2, Lgrc;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lgrc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "getViewLifecycleOwner(...)"

    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment$a;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v3, "ws_kyc_requery_key"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v3, v2}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic i0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->t0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->C0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic k0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->F0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->E0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->u0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->w0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->x0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->v0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/base/FaceResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->I0(Lteam/opay/pay/kyc/base/FaceResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final t0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
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
    new-instance p1, Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 8
    .line 9
    invoke-direct {p1}, Lteam/opay/face/dialog/OFaceInProgressFragment;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->n:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->n:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->T()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method public static final u0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceRequeryFragment;->j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->q:Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$Companion;

    .line 13
    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v1, ""

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lirc;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lirc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lteam/opay/face/dialog/OFaceRecognizeSuccessFragment;->R(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static final v0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->D0(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final w0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;Lteam/opay/pay/kyc/base/ErrorMsg;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/ErrorMsg;->c()Ljava/lang/String;

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
    move-object v1, p1

    .line 10
    sget p1, Lteam/opay/pay/R$string;->osdk_retake_selfie:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string p1, "getString(...)"

    .line 17
    .line 18
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lhrc;

    .line 22
    .line 23
    invoke-direct {v4, p0}, Lhrc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 24
    .line 25
    .line 26
    const/16 v6, 0x12

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v0, p0

    .line 32
    invoke-static/range {v0 .. v7}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->f0(Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final x0(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->G0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final y0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final A0()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D0(Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;)V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment;->v:Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment$Companion;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment$Companion;->b(Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment$Companion;Lteam/opay/pay/kyc/customer/FindFaceInfoRsp;ZZILjava/lang/Object;)Lteam/opay/pay/kyc/upgrade2/task/RetrieveInfomationFragment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lteam/opay/pay/base/FragmentKt;->i(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final H0(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public Y()Lteam/opay/pay/kyc/base/KycNodeData;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lteam/opay/pay/kyc/base/KycNodeData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->T()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->p0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->h0()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v4, "ID_INFO_VERIFY"

    .line 44
    .line 45
    move-object v0, v7

    .line 46
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/kyc/base/KycNodeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    return-object v7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_4

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    if-ne p2, p1, :cond_3

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    const-string p1, "data"

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p2, Lcom/google/gson/Gson;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    .line 33
    .line 34
    const-class p3, Lteam/opay/pay/kyc/base/FaceResult;

    .line 35
    .line 36
    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lteam/opay/pay/kyc/base/FaceResult;

    .line 41
    .line 42
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->o:Lteam/opay/pay/kyc/base/FaceResult;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/kyc/base/FaceResult;->getResult()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p3, "true"

    .line 51
    .line 52
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_4

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->I0(Lteam/opay/pay/kyc/base/FaceResult;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->y0()V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->y0()V

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->k1()Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;->D()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->p:Lkotlin/jvm/functions/Function0;

    .line 29
    .line 30
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 34
    return v0
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->B0()Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->A0()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/base/AbstractKycViewModel;->z(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lsh6;

    .line 29
    .line 30
    iget-object p1, p1, Lsh6;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    sget p2, Lteam/opay/pay/R$string;->osdk_verify_bottom_tips:I

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lsh6;

    .line 50
    .line 51
    iget-object p1, p1, Lsh6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 52
    .line 53
    const-string p2, "faceAction"

    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Lbrc;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lbrc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lee1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lsh6;

    .line 71
    .line 72
    iget-object p1, p1, Lsh6;->c:Lteam/opay/core/android/views/OpayActionBar;

    .line 73
    .line 74
    new-instance p2, Lcrc;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Lcrc;-><init>(Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->addObserver()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final z0()Lteam/opay/pay/kyc/base/FaceResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/RetrieveFaceFragment;->o:Lteam/opay/pay/kyc/base/FaceResult;

    .line 2
    .line 3
    return-object v0
.end method
