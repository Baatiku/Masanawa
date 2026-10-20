.class public final Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;
.super Lteam/opay/pay/transfer/contact/view/dialog/Hilt_RequestMoneyBottomDialog;
.source "RequestMoneyBottomDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/transfer/contact/view/dialog/Hilt_RequestMoneyBottomDialog<",
        "Lqh6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R0\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\t\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lqh6;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "",
        "shareContent",
        "Y",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
        "p",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
        "getReq",
        "()Lteam/opay/pay/transfer/contact/bean/PreOrderReq;",
        "setReq",
        "(Lteam/opay/pay/transfer/contact/bean/PreOrderReq;)V",
        "req",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
        "q",
        "Lkotlin/jvm/functions/Function1;",
        "getOnRequestCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "Z",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onRequestCallBack",
        "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "r",
        "Lid8;",
        "T",
        "()Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
        "transferContactViewModel",
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
.field public static final s:Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final r:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->s:Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;

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
    sput-object v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->t:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$1;->INSTANCE:Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/transfer/contact/view/dialog/Hilt_RequestMoneyBottomDialog;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$3;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$3;-><init>(Lid8;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$4;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v4, v0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lid8;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$5;

    .line 40
    .line 41
    invoke-direct {v4, p0, v0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lid8;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->r:Lid8;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic P(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->W(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->U(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->X(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->V(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T()Lteam/opay/pay/transfer/contact/TransferContactViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->r:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final U(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final V(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->isRegister()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lx7b;->a:Lx7b;

    .line 14
    .line 15
    const-string v2, "request_money_opay_users_confirm_request_money_click"

    .line 16
    .line 17
    new-array v1, v1, [Lkotlin/Pair;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lx7b;->a:Lx7b;

    .line 24
    .line 25
    const-string v2, "request_money_non_opay_users_confirm_notify_recipient_click"

    .line 26
    .line 27
    new-array v1, v1, [Lkotlin/Pair;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->T()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->C0()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Ltpc;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Ltpc;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->T()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lqh6;

    .line 65
    .line 66
    iget-object v2, v2, Lqh6;->b:Lteam/opay/core/android/views/PulseLoaderView;

    .line 67
    .line 68
    const-string v3, "loadingView"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0, v0, v2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->O0(Lag8;Lteam/opay/pay/transfer/contact/bean/PreOrderReq;Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p0
.end method

.method public static final W(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->isRegister()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;->getShareDesc()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->Y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->q:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final X(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Y(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.SEND"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "text/plain"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.extra.TEXT"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string p1, "Share"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lx7b;->a:Lx7b;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Lkotlin/Pair;

    .line 31
    .line 32
    const-string v1, "notify_recipient_show"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final Z(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/transfer/contact/bean/PreOrderRsp;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string v1, "pre_order_req"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object p1, v0

    .line 47
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 48
    .line 49
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->T()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$Currency;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->getAmount()Lteam/opay/pay/cashier/result/Amount;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/Amount;->getValue()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lqh6;

    .line 95
    .line 96
    iget-object v0, v0, Lqh6;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lqh6;

    .line 106
    .line 107
    iget-object p1, p1, Lqh6;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->getMobile()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    const-string v0, ""

    .line 121
    .line 122
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v1, "req = "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lqh6;

    .line 145
    .line 146
    iget-object p1, p1, Lqh6;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 147
    .line 148
    const-string v0, "requestMoneyClose"

    .line 149
    .line 150
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lqpc;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lqpc;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 162
    .line 163
    if-eqz p1, :cond_4

    .line 164
    .line 165
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->isRegister()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-nez p1, :cond_4

    .line 170
    .line 171
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lqh6;

    .line 176
    .line 177
    iget-object p1, p1, Lqh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 178
    .line 179
    sget v0, Lteam/opay/pay/R$string;->osdk_notify_recipient:I

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    check-cast p1, Lqh6;

    .line 193
    .line 194
    iget-object p1, p1, Lqh6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    sget v0, Lteam/opay/pay/R$string;->send_money_bottom_dialog_not_opay_content:I

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lqh6;

    .line 211
    .line 212
    iget-object p1, p1, Lqh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 213
    .line 214
    sget v0, Lteam/opay/pay/R$string;->osdk_request_money:I

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lqh6;

    .line 228
    .line 229
    iget-object p1, p1, Lqh6;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    sget v0, Lteam/opay/pay/R$string;->send_money_bottom_dialog_opay_content:I

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    :goto_2
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Lqh6;

    .line 245
    .line 246
    iget-object p1, p1, Lqh6;->g:Lcom/google/android/material/button/MaterialButton;

    .line 247
    .line 248
    const-string v0, "requestMoneyButton"

    .line 249
    .line 250
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Lrpc;

    .line 254
    .line 255
    invoke-direct {v0, p0}, Lrpc;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 259
    .line 260
    .line 261
    invoke-direct {p0}, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->T()Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->D0()Landroidx/lifecycle/MutableLiveData;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v1, Lspc;

    .line 274
    .line 275
    invoke-direct {v1, p0}, Lspc;-><init>(Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/dialog/RequestMoneyBottomDialog;->p:Lteam/opay/pay/transfer/contact/bean/PreOrderReq;

    .line 282
    .line 283
    if-eqz p1, :cond_5

    .line 284
    .line 285
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/PreOrderReq;->isRegister()Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    const/4 v0, 0x1

    .line 290
    if-ne p1, v0, :cond_5

    .line 291
    .line 292
    sget-object p1, Lx7b;->a:Lx7b;

    .line 293
    .line 294
    const-string v0, "request_money_opay_users_confirm_show"

    .line 295
    .line 296
    new-array p2, p2, [Lkotlin/Pair;

    .line 297
    .line 298
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_5
    sget-object p1, Lx7b;->a:Lx7b;

    .line 303
    .line 304
    const-string v0, "request_money_non_opay_users_confirm_show"

    .line 305
    .line 306
    new-array p2, p2, [Lkotlin/Pair;

    .line 307
    .line 308
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 309
    .line 310
    .line 311
    :goto_3
    return-void
.end method
