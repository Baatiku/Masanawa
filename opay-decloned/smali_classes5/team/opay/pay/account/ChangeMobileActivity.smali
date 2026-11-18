.class public final Lteam/opay/pay/account/ChangeMobileActivity;
.super Lteam/opay/pay/account/Hilt_ChangeMobileActivity;
.source "ChangeMobileActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/account/ChangeMobileActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Lte;",
        "e",
        "Lid8;",
        "D",
        "()Lte;",
        "viewBinding",
        "Lteam/opay/pay/account/ChangeMobileViewModel;",
        "f",
        "E",
        "()Lteam/opay/pay/account/ChangeMobileViewModel;",
        "viewModel",
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
.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/account/Hilt_ChangeMobileActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll72;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ll72;-><init>(Lteam/opay/pay/account/ChangeMobileActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/account/ChangeMobileActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/account/ChangeMobileViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/account/ChangeMobileActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/account/ChangeMobileActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/ChangeMobileActivity;->G(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/account/ChangeMobileActivity;)Lte;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/ChangeMobileActivity;->H(Lteam/opay/pay/account/ChangeMobileActivity;)Lte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/account/ChangeMobileActivity;->F(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final F(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/ChangeMobileActivity;->D()Lte;

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

.method public static final G(Lteam/opay/pay/account/ChangeMobileActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lmrb;->a:Lmrb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmrb;->c()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lql8;->a:Lql8;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p0, v1}, Lql8;->n(Landroid/app/Activity;Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/SettingsStorage;->s0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lteam/opay/pay/pin/LoginPhoneStorage;

    .line 21
    .line 22
    invoke-direct {v0}, Lteam/opay/pay/pin/LoginPhoneStorage;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lteam/opay/pay/pin/LoginPhoneStorage;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 29
    .line 30
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, ""

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->W(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget v0, Lteam/opay/pay/R$id;->fragment_container:I

    .line 40
    .line 41
    sget-object v1, Lteam/opay/pay/account/ChangeMobileSuccessFragment;->q:Lteam/opay/pay/account/ChangeMobileSuccessFragment$Companion;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lteam/opay/pay/account/ChangeMobileSuccessFragment$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/account/ChangeMobileSuccessFragment;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, v0, p1}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method

.method public static final H(Lteam/opay/pay/account/ChangeMobileActivity;)Lte;
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
.method public D()Lte;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/ChangeMobileActivity;->e:Lid8;

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

.method public final E()Lteam/opay/pay/account/ChangeMobileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/ChangeMobileActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/account/ChangeMobileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/ChangeMobileActivity;->D()Lte;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/account/Hilt_ChangeMobileActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/account/ChangeMobileActivity;->E()Lteam/opay/pay/account/ChangeMobileViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lteam/opay/pay/account/ChangeMobileViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lj72;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lj72;-><init>(Lteam/opay/pay/account/ChangeMobileActivity;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lteam/opay/pay/account/ChangeMobileActivity$a;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lteam/opay/pay/account/ChangeMobileActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lteam/opay/pay/account/verify/VerifySecurityTestingDialog;->l:Lteam/opay/pay/account/verify/VerifySecurityTestingDialog$Companion;

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/account/verify/VerifySecurityTestingDialog$Companion;->a()Lteam/opay/pay/account/verify/VerifySecurityTestingDialog;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Lteam/opay/pay/account/ChangeMobileActivity$onCreate$2$1;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/pay/account/ChangeMobileActivity$onCreate$2$1;-><init>(Lteam/opay/pay/account/ChangeMobileActivity;Lteam/opay/pay/account/verify/VerifySecurityTestingDialog;Ljr2;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x2

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 51
    .line 52
    .line 53
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 54
    .line 55
    sget-object v0, Lteam/opay/pay/account/ChangeMobileTipFragment;->o:Lteam/opay/pay/account/ChangeMobileTipFragment$Companion;

    .line 56
    .line 57
    invoke-virtual {v0}, Lteam/opay/pay/account/ChangeMobileTipFragment$Companion;->a()Lteam/opay/pay/account/ChangeMobileTipFragment;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/account/ChangeMobileActivity;->E()Lteam/opay/pay/account/ChangeMobileViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/account/ChangeMobileViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lk72;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lk72;-><init>(Lteam/opay/pay/account/ChangeMobileActivity;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lteam/opay/pay/account/ChangeMobileActivity$a;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Lteam/opay/pay/account/ChangeMobileActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
