.class public final Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;
.super Lteam/opay/pay/home/security/Hilt_OpaySystemNotificationsActivity;
.source "OpaySystemNotificationsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lse;",
        "e",
        "Lid8;",
        "C",
        "()Lse;",
        "viewBinding",
        "Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;",
        "f",
        "D",
        "()Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;",
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
    sget v0, Lteam/opay/pay/R$layout;->activity_fragment_container_below_actionbar:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/security/Hilt_OpaySystemNotificationsActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lvsa;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lvsa;-><init>(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->E(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;)Lse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->F(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;)Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final E(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->C()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lse;->d:Lteam/opay/core/android/views/PulseLoaderView;

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

.method public static final F(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;)Lse;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lse;->inflate(Landroid/view/LayoutInflater;)Lse;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public C()Lse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lse;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D()Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->C()Lse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lteam/opay/pay/R$id;->fragment_container:I

    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/home/security/OpaySystemNotificationsFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/pay/home/security/OpaySystemNotificationsFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lteam/opay/pay/base/FragmentKt;->u(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->C()Lse;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lse;->b:Lteam/opay/core/android/views/OpayActionBar;

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$string;->osdk_system_notifications:I

    .line 21
    .line 22
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;->D()Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/home/security/OpaySystemNotificationsViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lusa;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lusa;-><init>(Lteam/opay/pay/home/security/OpaySystemNotificationsActivity;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$a;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lteam/opay/pay/home/security/OpaySystemNotificationsActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
