.class public final Lteam/opay/pay/cashier/ProtocolConfirmActivity;
.super Lteam/opay/pay/cashier/Hilt_ProtocolConfirmActivity;
.source "ProtocolConfirmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/ProtocolConfirmActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u0017\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/cashier/ProtocolConfirmActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "",
        "checked",
        "P",
        "(Z)V",
        "Lowa;",
        "e",
        "Lid8;",
        "H",
        "()Lowa;",
        "viewBinding",
        "Lteam/opay/pay/settings/AccountViewModel;",
        "f",
        "I",
        "()Lteam/opay/pay/settings/AccountViewModel;",
        "viewModel",
        "g",
        "Z",
        "protocolChecked",
        "Lteam/opay/pay/cashier/ProtocolPopInfo;",
        "h",
        "Lteam/opay/pay/cashier/ProtocolPopInfo;",
        "data",
        "i",
        "hasConfirm",
        "j",
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
.field public static final j:Lteam/opay/pay/cashier/ProtocolConfirmActivity$Companion;
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

.field public g:Z

.field public h:Lteam/opay/pay/cashier/ProtocolPopInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/ProtocolConfirmActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->j:Lteam/opay/pay/cashier/ProtocolConfirmActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->osdk_activity_protocol_confirm:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/Hilt_ProtocolConfirmActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lc3c;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lc3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/settings/AccountViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lowa;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->Q(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lowa;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->M(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->J(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Landroid/widget/CompoundButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->O(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->L(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->K(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->N(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final J(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lowa;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v0, "checkTip"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->P(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final K(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lrjf;->a:Lrjf;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lrjf;->f(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final L(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lowa;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    const-string v0, "checkTip"

    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Lkotlin/Pair;

    .line 26
    .line 27
    const-string v2, "agreement_update_agree_click"

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->I()Lteam/opay/pay/settings/AccountViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lteam/opay/pay/kyc/SignAgreeRequest;

    .line 37
    .line 38
    const-string v2, "REGISTER_PROTOCOL"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lteam/opay/pay/kyc/SignAgreeRequest;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0, v1}, Lteam/opay/pay/settings/AccountViewModel;->F(Lag8;Lteam/opay/pay/kyc/SignAgreeRequest;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method public static final M(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {p1, v0}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lx7b;->a:Lx7b;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    const-string v1, "agreement_update_agree_success"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v5, Lteam/opay/pay/cashier/ProtocolConfirmActivity$onCreate$4$1;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-direct {v5, p0, p1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$onCreate$4$1;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljr2;)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->i:Z

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final O(Lteam/opay/pay/cashier/ProtocolConfirmActivity;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lowa;->f:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "loadingView"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final Q(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)Lowa;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lowa;->inflate(Landroid/view/LayoutInflater;)Lowa;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public H()Lowa;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lowa;

    .line 8
    .line 9
    return-object v0
.end method

.method public final I()Lteam/opay/pay/settings/AccountViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/AccountViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->g:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lowa;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "exit_app_event"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v3, v4, v1, v2}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onBackPressed()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/cashier/Hilt_ProtocolConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "key_data"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    check-cast p1, Lteam/opay/pay/cashier/ProtocolPopInfo;

    .line 20
    .line 21
    iput-object p1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->h:Lteam/opay/pay/cashier/ProtocolPopInfo;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lowa;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->h:Lteam/opay/pay/cashier/ProtocolPopInfo;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lteam/opay/pay/cashier/ProtocolPopInfo;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object v1, v0

    .line 46
    :goto_1
    const-string v2, ""

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p1, p1, Lowa;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->h:Lteam/opay/pay/cashier/ProtocolPopInfo;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/pay/cashier/ProtocolPopInfo;->getContent()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_4
    if-nez v0, :cond_5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object v2, v0

    .line 72
    :goto_2
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p1, p1, Lowa;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 93
    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 95
    .line 96
    const-string v1, "opay_protocol_check_switch"

    .line 97
    .line 98
    invoke-virtual {p1, v1, v0}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->P(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lowa;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 116
    .line 117
    new-instance v0, Ld3c;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Ld3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lowa;->h:Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    sget v0, Lteam/opay/pay/R$string;->onboarding_tac:I

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object p1, p1, Lowa;->h:Landroid/widget/TextView;

    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    new-instance v0, Le3c;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Le3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    :cond_7
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->H()Lowa;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Lowa;->d:Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    const-string v0, "confirm"

    .line 169
    .line 170
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lf3c;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lf3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->I()Lteam/opay/pay/settings/AccountViewModel;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lteam/opay/pay/settings/AccountViewModel;->z()Lteam/opay/pay/util/SingleLiveEvent;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v0, Lg3c;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lg3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 192
    .line 193
    .line 194
    new-instance v1, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->I()Lteam/opay/pay/settings/AccountViewModel;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lteam/opay/pay/settings/AccountViewModel;->A()Lteam/opay/pay/util/SingleLiveEvent;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-instance v0, Lh3c;

    .line 211
    .line 212
    invoke-direct {v0, p0}, Lh3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity;->I()Lteam/opay/pay/settings/AccountViewModel;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lteam/opay/pay/settings/AccountViewModel;->B()Lteam/opay/pay/util/SingleLiveEvent;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    new-instance v0, Li3c;

    .line 232
    .line 233
    invoke-direct {v0, p0}, Li3c;-><init>(Lteam/opay/pay/cashier/ProtocolConfirmActivity;)V

    .line 234
    .line 235
    .line 236
    new-instance v1, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;

    .line 237
    .line 238
    invoke-direct {v1, v0}, Lteam/opay/pay/cashier/ProtocolConfirmActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 242
    .line 243
    .line 244
    sget-object p1, Lx7b;->a:Lx7b;

    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    new-array v0, v0, [Lkotlin/Pair;

    .line 248
    .line 249
    const-string v1, "agreement_update_show"

    .line 250
    .line 251
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method
