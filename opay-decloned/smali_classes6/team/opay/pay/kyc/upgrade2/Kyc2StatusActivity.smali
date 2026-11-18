.class public final Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;
.super Lteam/opay/pay/kyc/upgrade2/Hilt_Kyc2StatusActivity;
.source "Kyc2StatusActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0014\u001a\u00020\u00108VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "F",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;",
        "e",
        "Lid8;",
        "L",
        "()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;",
        "viewModel",
        "Lte;",
        "f",
        "K",
        "()Lte;",
        "viewBinding",
        "g",
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
.field public static final g:Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->g:Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/kyc/upgrade2/Hilt_Kyc2StatusActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 12
    .line 13
    const-class v2, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$2;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$3;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->e:Lid8;

    .line 34
    .line 35
    new-instance v0, Ltt7;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Ltt7;-><init>(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->J(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lte;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->M(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->H(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->G(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->I(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->L()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lut7;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lut7;-><init>(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->L()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lvt7;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lvt7;-><init>(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->L()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lwt7;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lwt7;-><init>(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static final G(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->K()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lte;->c:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "fragmentLoading"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->l:Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v1, p1

    .line 11
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;->b(Lteam/opay/pay/kyc/task/dialog/KycErrorDialog$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lxt7;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lxt7;-><init>(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lteam/opay/pay/kyc/task/dialog/KycErrorDialog;->R(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;->getUpgradeStatus()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v1, "FAIL"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;->k:Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment$Companion;->a(Lteam/opay/pay/kyc/customer/UpgradeQueryRsp;)Lteam/opay/pay/kyc/upgrade2/task/Kyc2FaceFailedFragment;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object p1, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity;->h:Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;

    .line 30
    .line 31
    const-string v0, "failureStatenotification"

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2Activity$Companion;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;)Lte;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lte;->inflate(Landroid/view/LayoutInflater;)Lte;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public K()Lte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lte;

    .line 8
    .line 9
    return-object v0
.end method

.method public final L()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->K()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/kyc/upgrade2/Hilt_Kyc2StatusActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->L()Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusViewModel;->v(Lag8;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/kyc/upgrade2/Kyc2StatusActivity;->F()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
