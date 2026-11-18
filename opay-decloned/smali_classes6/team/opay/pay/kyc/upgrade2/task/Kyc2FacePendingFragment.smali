.class public final Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;
.super Lteam/opay/core/base/BaseFragmentV2;
.source "Kyc2FacePendingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseFragmentV2<",
        "Lzya;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ!\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001a\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "Lzya;",
        "<init>",
        "()V",
        "",
        "actionName",
        "",
        "S",
        "(Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "j",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;",
        "pendingData",
        "Lteam/opay/pay/kyc/base/SceneViewModel;",
        "k",
        "U",
        "()Lteam/opay/pay/kyc/base/SceneViewModel;",
        "sceneViewModel",
        "l",
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
.field public static final l:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final j:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->l:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$1;->INSTANCE:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Luq7;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Luq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->j:Lid8;

    .line 16
    .line 17
    const-class v0, Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$2;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$3;

    .line 35
    .line 36
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->k:Lid8;

    .line 44
    .line 45
    return-void
.end method

.method public static synthetic O(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->Y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "call_code"

    .line 4
    .line 5
    const-string v2, "KYC2"

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->U()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lteam/opay/pay/kyc/base/SceneViewModel;->R()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "idType"

    .line 20
    .line 21
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->U()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lteam/opay/pay/kyc/base/SceneViewModel;->O()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "id_number"

    .line 34
    .line 35
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x3

    .line 40
    new-array v4, v4, [Lkotlin/Pair;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    aput-object v1, v4, v5

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput-object v2, v4, v1

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    aput-object v3, v4, v1

    .line 50
    .line 51
    invoke-virtual {v0, p1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final T()Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->j:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final V(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lkotlin/Pair;

    .line 7
    .line 8
    const-string v1, "kyc_upto2_getbackreview"

    .line 9
    .line 10
    invoke-static {p0, v1, v0}, Lkmf;->y(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->U()Lteam/opay/pay/kyc/base/SceneViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/base/SceneViewModel;->c0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "FACE_COMPARISON"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "KYC_underreview_retakeselfie_click"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->S(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final X(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    const-string v0, "KYC_confirmation_underreview_ok_click"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->S(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final Y(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "key_pending_data"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final U()Lteam/opay/pay/kyc/base/SceneViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->k:Lid8;

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig;->Companion:Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;

    .line 10
    .line 11
    const-string p2, "kyc_upto2_getbackreview"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lteam/opay/pay/cashier/newpayment/FeedbackEntranceConfig$Companion;->a(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lzya;

    .line 24
    .line 25
    iget-object v0, p1, Lzya;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 26
    .line 27
    sget p1, Lteam/opay/pay/R$string;->osdk_help:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string p1, "getString(...)"

    .line 34
    .line 35
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lrq7;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lrq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)V

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static/range {v0 .. v5}, Lteam/opay/core/android/views/OpayActionBar;->k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lzya;

    .line 54
    .line 55
    iget-object p1, p1, Lzya;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    sget-object p2, Lteam/opay/pay/kyc/a;->a:Lteam/opay/pay/kyc/a;

    .line 58
    .line 59
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->T()Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;->getAuditRecordSubmitTime()Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p2, v0}, Lteam/opay/pay/kyc/a;->n(Ljava/lang/Long;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lzya;

    .line 83
    .line 84
    iget-object p1, p1, Lzya;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget p2, Lteam/opay/pay/R$string;->osdk_kyc2_face_review_hours:I

    .line 87
    .line 88
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->T()Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/kyc/customer/ManualReviewSubmitRsp;->getAuditRecordHandleHours()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    :cond_2
    const-string v0, "72"

    .line 101
    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    aput-object v0, v1, v2

    .line 107
    .line 108
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lzya;

    .line 120
    .line 121
    iget-object p1, p1, Lzya;->p:Lcom/google/android/material/button/MaterialButton;

    .line 122
    .line 123
    const-string p2, "retakeSelfile"

    .line 124
    .line 125
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p2, Lsq7;

    .line 129
    .line 130
    invoke-direct {p2, p0}, Lsq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lzya;

    .line 141
    .line 142
    iget-object p1, p1, Lzya;->j:Lcom/google/android/material/button/MaterialButton;

    .line 143
    .line 144
    const-string p2, "okButton"

    .line 145
    .line 146
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance p2, Ltq7;

    .line 150
    .line 151
    invoke-direct {p2, p0}, Ltq7;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 155
    .line 156
    .line 157
    const-string p1, "KYC_underreview_show"

    .line 158
    .line 159
    invoke-direct {p0, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FacePendingFragment;->S(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
