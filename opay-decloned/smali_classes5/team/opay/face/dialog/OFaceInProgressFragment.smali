.class public final Lteam/opay/face/dialog/OFaceInProgressFragment;
.super Lteam/opay/face/dialog/Hilt_OFaceInProgressFragment;
.source "OFaceInProgressFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/face/dialog/OFaceInProgressFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/face/dialog/Hilt_OFaceInProgressFragment<",
        "Lega;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/face/dialog/OFaceInProgressFragment;",
        "Lteam/opay/core/base/BaseDialogFragmentV2;",
        "Lega;",
        "<init>",
        "()V",
        "",
        "progress",
        "",
        "U",
        "(I)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "T",
        "onDestroy",
        "Q",
        "P",
        "Landroid/os/CountDownTimer;",
        "o",
        "Landroid/os/CountDownTimer;",
        "countDownTimer",
        "Landroidx/lifecycle/MutableLiveData;",
        "p",
        "Landroidx/lifecycle/MutableLiveData;",
        "showRetryFragmentEvent",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "q",
        "Lid8;",
        "R",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "Lkotlinx/coroutines/l;",
        "r",
        "Lkotlinx/coroutines/l;",
        "job",
        "s",
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
.field public static final s:Lteam/opay/face/dialog/OFaceInProgressFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public o:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/face/dialog/OFaceInProgressFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/face/dialog/OFaceInProgressFragment;->s:Lteam/opay/face/dialog/OFaceInProgressFragment$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lteam/opay/face/dialog/OFaceInProgressFragment;->t:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/face/dialog/OFaceInProgressFragment$1;->INSTANCE:Lteam/opay/face/dialog/OFaceInProgressFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/face/dialog/Hilt_OFaceInProgressFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$2;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3, p0}, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$3;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/face/dialog/OFaceInProgressFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->q:Lid8;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic M(Lteam/opay/face/dialog/OFaceInProgressFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->S(Lteam/opay/face/dialog/OFaceInProgressFragment;Lkotlin/Unit;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lteam/opay/face/dialog/OFaceInProgressFragment;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lteam/opay/face/dialog/OFaceInProgressFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->U(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final S(Lteam/opay/face/dialog/OFaceInProgressFragment;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object p1, Lteam/opay/face/dialog/OFaceRequeryFragment;->j:Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lteam/opay/face/dialog/OFaceRequeryFragment$Companion;->b(Ljava/lang/String;)Lteam/opay/face/dialog/OFaceRequeryFragment;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private final U(I)V
    .locals 4

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lega;

    .line 25
    .line 26
    iget-object v0, v0, Lega;->f:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lega;

    .line 36
    .line 37
    iget-object v0, v0, Lega;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    .line 39
    const-string v1, "faceProgressLayout"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lega;

    .line 49
    .line 50
    iget-object v1, v1, Lega;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-float v2, p1

    .line 57
    const/high16 v3, 0x42c80000    # 100.0f

    .line 58
    .line 59
    div-float/2addr v2, v3

    .line 60
    invoke-static {v0, v1, v2}, Le1f;->p(Landroid/view/View;IF)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lega;

    .line 68
    .line 69
    iget-object v0, v0, Lega;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, "%"

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lega;

    .line 96
    .line 97
    iget-object p1, p1, Lega;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final P()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lkotlin/Pair;

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->R()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->s0()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v0, v2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lteam/opay/face/CameraActivity;->n:Lteam/opay/face/CameraActivity$Companion;

    .line 54
    .line 55
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "call_code"

    .line 64
    .line 65
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v0, v2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lteam/opay/face/FaceCameraData;->j()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "trace_id"

    .line 82
    .line 83
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1}, Lteam/opay/face/CameraActivity$Companion;->a()Lteam/opay/face/FaceCameraData;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lteam/opay/face/FaceCameraData;->g()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "kycLevel"

    .line 100
    .line 101
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->R()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->R()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "idType"

    .line 118
    .line 119
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->R()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lteam/opay/pay/kyc/base/SceneViewModel;->g0()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "route"

    .line 136
    .line 137
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1}, Lkotlin/collections/a;->x([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Lps;->a:Lps;

    .line 146
    .line 147
    array-length v2, v0

    .line 148
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, [Lkotlin/Pair;

    .line 153
    .line 154
    const-string v2, "page_oface_progressing_show"

    .line 155
    .line 156
    invoke-virtual {v1, v2, v0}, Lps;->a(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method public final Q()V
    .locals 6

    .line 1
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;-><init>(Lteam/opay/face/dialog/OFaceInProgressFragment;Ljr2;)V

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
    move-result-object v0

    .line 21
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->r:Lkotlinx/coroutines/l;

    .line 22
    .line 23
    return-void
.end method

.method public final R()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->q:Lid8;

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

.method public final T()V
    .locals 8

    .line 1
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->r:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/16 v0, 0x64

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->U(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lteam/opay/face/dialog/OFaceInProgressFragment$progressFinish$1;

    .line 24
    .line 25
    invoke-direct {v5, p0, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment$progressFinish$1;-><init>(Lteam/opay/face/dialog/OFaceInProgressFragment;Ljr2;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->o:Landroid/os/CountDownTimer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->o:Landroid/os/CountDownTimer;

    .line 13
    .line 14
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lteam/opay/core/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->P()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getGenerator()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p2, "face_countdown_time"

    .line 21
    .line 22
    const-string v0, "10"

    .line 23
    .line 24
    invoke-interface {p1, p2, v0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 p1, 0xa

    .line 44
    .line 45
    :goto_0
    int-to-long p1, p1

    .line 46
    const-wide/16 v0, 0x3e8

    .line 47
    .line 48
    mul-long p1, p1, v0

    .line 49
    .line 50
    new-instance v0, Lteam/opay/face/dialog/OFaceInProgressFragment$a;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/face/dialog/OFaceInProgressFragment$a;-><init>(Lteam/opay/face/dialog/OFaceInProgressFragment;J)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->o:Landroid/os/CountDownTimer;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment;->p:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance v0, Ln4a;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Ln4a;-><init>(Lteam/opay/face/dialog/OFaceInProgressFragment;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lteam/opay/face/dialog/OFaceInProgressFragment$b;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Lteam/opay/face/dialog/OFaceInProgressFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/face/dialog/OFaceInProgressFragment;->Q()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
