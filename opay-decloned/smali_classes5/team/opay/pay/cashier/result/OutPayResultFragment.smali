.class public final Lteam/opay/pay/cashier/result/OutPayResultFragment;
.super Lteam/opay/pay/cashier/result/Hilt_OutPayResultFragment;
.source "OutPayResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/pay/cashier/result/Hilt_OutPayResultFragment<",
        "Lzg6;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J!\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/OutPayResultFragment;",
        "Lteam/opay/pay/cashier/result/BasePaymentResultFragment;",
        "Lzg6;",
        "<init>",
        "()V",
        "",
        "initView",
        "m0",
        "addObserver",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "K",
        "W",
        "",
        "text",
        "k0",
        "(Ljava/lang/String;)V",
        "",
        "needLoad",
        "i0",
        "(Z)V",
        "Lteam/opay/pay/cashier/OutPayResultData;",
        "w",
        "Lteam/opay/pay/cashier/OutPayResultData;",
        "resultResponse",
        "x",
        "Z",
        "hasFinish",
        "Lteam/opay/pay/cashier/result/OutPayResultAdapter;",
        "y",
        "Lid8;",
        "h0",
        "()Lteam/opay/pay/cashier/result/OutPayResultAdapter;",
        "resultAdapter",
        "z",
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
.field public static final z:Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public w:Lteam/opay/pay/cashier/OutPayResultData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x:Z

.field public final y:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->z:Lteam/opay/pay/cashier/result/OutPayResultFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/OutPayResultFragment$1;->INSTANCE:Lteam/opay/pay/cashier/result/OutPayResultFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/cashier/result/Hilt_OutPayResultFragment;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Li3b;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Li3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->y:Lid8;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic Y(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/result/OutPayFailInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->e0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/result/OutPayFailInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->j0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lteam/opay/pay/cashier/result/OutPayResultAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->l0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lteam/opay/pay/cashier/result/OutPayResultAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final addObserver()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->x0()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lj3b;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lj3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lteam/opay/pay/cashier/result/OutPayResultFragment$a;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Lteam/opay/pay/cashier/result/OutPayResultFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->B0()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lk3b;

    .line 39
    .line 40
    invoke-direct {v2, p0}, Lk3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lteam/opay/pay/cashier/result/OutPayResultFragment$a;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lteam/opay/pay/cashier/result/OutPayResultFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static synthetic b0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->f0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/OutPayResultData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->g0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/OutPayResultData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/result/OutPayFailInfo;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OutPayFailInfo;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lzg6;

    .line 12
    .line 13
    iget-object v1, v0, Lzg6;->c:Lteam/opay/pay/kyc/view/EmptyView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OutPayFailInfo;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    move v2, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OutPayFailInfo;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v8, Lm3b;

    .line 38
    .line 39
    invoke-direct {v8, p0}, Lm3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V

    .line 40
    .line 41
    .line 42
    const/16 v9, 0x3c

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-static/range {v1 .. v10}, Lteam/opay/pay/kyc/view/EmptyView;->j(Lteam/opay/pay/kyc/view/EmptyView;ILjava/lang/String;ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getAppContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/OutPayFailInfo;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p0, p1}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->i0(Z)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final g0(Lteam/opay/pay/cashier/result/OutPayResultFragment;Lteam/opay/pay/cashier/OutPayResultData;)Lkotlin/Unit;
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iput-object p1, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->w:Lteam/opay/pay/cashier/OutPayResultData;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->c()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v6, Lteam/opay/pay/cashier/result/OutPayResultFragment$addObserver$2$1;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v6, v0, p0, v2}, Lteam/opay/pay/cashier/result/OutPayResultFragment$addObserver$2$1;-><init>(ILteam/opay/pay/cashier/result/OutPayResultFragment;Ljr2;)V

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 48
    .line 49
    .line 50
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 56
    .line 57
    invoke-direct {v2, p1, v1}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->j()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    new-instance v1, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v1, p1, v2}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->a()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    new-instance v1, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 99
    .line 100
    const/4 v2, 0x3

    .line 101
    invoke-direct {v1, p1, v2}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->k()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_8

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_7

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_7
    new-instance v1, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    invoke-direct {v1, p1, v2}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->d()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    new-instance v1, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 143
    .line 144
    const/4 v2, 0x1

    .line 145
    invoke-direct {v1, p1, v2}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lteam/opay/pay/cashier/OutPayResultData;->c()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_c

    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_b
    new-instance v1, Lteam/opay/pay/cashier/result/OutPayResultItem;

    .line 165
    .line 166
    const/4 v2, 0x5

    .line 167
    invoke-direct {v1, p1, v2}, Lteam/opay/pay/cashier/result/OutPayResultItem;-><init>(Lteam/opay/pay/cashier/OutPayResultData;I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->h0()Lteam/opay/pay/cashier/result/OutPayResultAdapter;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    return-object p0
.end method

.method private final initView()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lzg6;

    .line 6
    .line 7
    iget-object v0, v0, Lzg6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getAppContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lzg6;

    .line 26
    .line 27
    iget-object v0, v0, Lzg6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->h0()Lteam/opay/pay/cashier/result/OutPayResultAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lzg6;

    .line 41
    .line 42
    iget-object v0, v0, Lzg6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    new-instance v11, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-static {v1}, Ljmf;->d(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v9, 0x7c

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v1, v11

    .line 61
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lzg6;

    .line 97
    .line 98
    iget-object v0, v0, Lzg6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 99
    .line 100
    sget v1, Lteam/opay/pay/R$string;->osdk_pay_result_back_to_merchant:I

    .line 101
    .line 102
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lzg6;

    .line 114
    .line 115
    iget-object v0, v0, Lzg6;->b:Lcom/google/android/material/button/MaterialButton;

    .line 116
    .line 117
    const-string v1, "btnDone"

    .line 118
    .line 119
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Ll3b;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Ll3b;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public static final j0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v0, "return_merchant"

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    const-string v0, "done"

    .line 30
    .line 31
    :goto_2
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->k0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->m0()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final l0(Lteam/opay/pay/cashier/result/OutPayResultFragment;)Lteam/opay/pay/cashier/result/OutPayResultAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/OutPayResultAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/result/OutPayResultAdapter;-><init>(Lag8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final m0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->x:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->x:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->Y(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public K()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->m0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/cashier/PaySheetViewModel;->m0()Lteam/opay/pay/cashier/OrderInput;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    new-array v2, v2, [Lkotlin/Pair;

    .line 16
    .line 17
    const-string v3, "payment_success_back_press"

    .line 18
    .line 19
    invoke-virtual {v0, v3, v1, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->a(Ljava/lang/String;Lteam/opay/pay/cashier/OrderInput;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->i0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final h0()Lteam/opay/pay/cashier/result/OutPayResultAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->y:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/result/OutPayResultAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i0(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lzg6;

    .line 6
    .line 7
    iget-object v0, v0, Lzg6;->c:Lteam/opay/pay/kyc/view/EmptyView;

    .line 8
    .line 9
    const-string v1, "emptyView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v5, Lteam/opay/pay/cashier/result/OutPayResultFragment$getResultInfo$1;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-direct {v5, p0, p1, v0}, Lteam/opay/pay/cashier/result/OutPayResultFragment$getResultInfo$1;-><init>(Lteam/opay/pay/cashier/result/OutPayResultFragment;ZLjr2;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    iget-object v4, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->w:Lteam/opay/pay/cashier/OutPayResultData;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    invoke-virtual {v4}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v4, v5

    .line 16
    :goto_0
    const-string v6, "PENDING"

    .line 17
    .line 18
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v6, "url"

    .line 23
    .line 24
    const-string v7, "outside"

    .line 25
    .line 26
    const-string v8, "page_type"

    .line 27
    .line 28
    const-string v9, "button"

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    sget-object v4, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 33
    .line 34
    invoke-static {v9, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-virtual {v8}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    if-eqz v8, :cond_1

    .line 51
    .line 52
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :cond_1
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    new-array v3, v3, [Lkotlin/Pair;

    .line 61
    .line 62
    aput-object p1, v3, v2

    .line 63
    .line 64
    aput-object v7, v3, v1

    .line 65
    .line 66
    aput-object v5, v3, v0

    .line 67
    .line 68
    const-string p1, "payment_pending_button_click"

    .line 69
    .line 70
    invoke-virtual {v4, p1, v3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget-object v4, p0, Lteam/opay/pay/cashier/result/OutPayResultFragment;->w:Lteam/opay/pay/cashier/OutPayResultData;

    .line 75
    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    invoke-virtual {v4}, Lteam/opay/pay/cashier/OutPayResultData;->h()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v4, v5

    .line 84
    :goto_1
    const-string v10, "SUCCESS"

    .line 85
    .line 86
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_5

    .line 91
    .line 92
    sget-object v4, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 93
    .line 94
    invoke-static {v9, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->U()Lteam/opay/pay/cashier/PaySheetViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v8}, Lteam/opay/pay/cashier/PaySheetViewModel;->y0()Lteam/opay/pay/cashier/result/OutPaySchemeInfo;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/OutPaySchemeInfo;->a()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :cond_4
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    new-array v3, v3, [Lkotlin/Pair;

    .line 121
    .line 122
    aput-object p1, v3, v2

    .line 123
    .line 124
    aput-object v7, v3, v1

    .line 125
    .line 126
    aput-object v5, v3, v0

    .line 127
    .line 128
    const-string p1, "payment_succ_button_click"

    .line 129
    .line 130
    invoke-virtual {v4, p1, v3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_2
    return-void
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
    invoke-super {p0, p1, p2}, Lteam/opay/pay/cashier/result/BasePaymentResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->initView()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->addObserver()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/OutPayResultFragment;->i0(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
