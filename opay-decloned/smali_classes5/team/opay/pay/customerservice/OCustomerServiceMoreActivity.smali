.class public final Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;
.super Lteam/opay/pay/customerservice/Hilt_OCustomerServiceMoreActivity;
.source "OCustomerServiceMoreActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J%\u0010\u000b\u001a\u00020\u00042\u0014\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "",
        "J",
        "O",
        "Lkotlin/Pair;",
        "",
        "",
        "it",
        "Q",
        "(Lkotlin/Pair;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onPostCreate",
        "(Landroid/os/Bundle;)V",
        "Lre;",
        "e",
        "Lid8;",
        "H",
        "()Lre;",
        "viewBinding",
        "Lteam/opay/pay/customerservice/OCustomerServiceViewModel;",
        "f",
        "I",
        "()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;",
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
    sget v0, Lteam/opay/pay/R$layout;->activity_customer_service_more:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/customerservice/Hilt_OCustomerServiceMoreActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv2a;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lv2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->e:Lid8;

    .line 16
    .line 17
    new-instance v0, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$1;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 23
    .line 24
    const-class v2, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v3, p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->f:Lid8;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->M(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->R(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->K(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;Lteam/opay/core/api/graphql/OCustomerServiceConfigMoreData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->N(Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;Lteam/opay/core/api/graphql/OCustomerServiceConfigMoreData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lre;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->S(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lre;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->L(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->P(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->S(Lag8;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final K(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;
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

.method public static final L(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lre;->e:Lteam/opay/core/android/views/PulseLoaderView;

    .line 6
    .line 7
    const-string v0, "loadingLayout"

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

.method public static final M(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->Q(Lkotlin/Pair;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final N(Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;Lteam/opay/core/api/graphql/OCustomerServiceConfigMoreData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/OCustomerServiceConfigMoreData;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private final O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lre;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/kyc/view/EmptyView;->getBinding()Llya;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Llya;->i:Lcom/google/android/material/button/MaterialButton;

    .line 12
    .line 13
    const-string v1, "emptyRefresh"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lx2a;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lx2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final P(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lkotlin/Unit;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lre;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 6
    .line 7
    const-string v1, "errorLayout"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/16 v8, 0xf

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v7, p0

    .line 27
    invoke-static/range {v2 .. v9}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->Q(Lteam/opay/pay/customerservice/OCustomerServiceViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lag8;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private final Q(Lkotlin/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lre;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    move v2, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    :cond_1
    move-object v3, p1

    .line 34
    new-instance v8, Lw2a;

    .line 35
    .line 36
    invoke-direct {v8, p0}, Lw2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 37
    .line 38
    .line 39
    const/16 v9, 0x1c

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-static/range {v1 .. v10}, Lteam/opay/pay/kyc/view/EmptyView;->j(Lteam/opay/pay/kyc/view/EmptyView;ILjava/lang/String;ILjava/lang/String;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static final R(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lre;->d:Lteam/opay/pay/kyc/view/EmptyView;

    .line 11
    .line 12
    const-string v0, "errorLayout"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v7, 0xf

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v6, p0

    .line 32
    invoke-static/range {v1 .. v8}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->Q(Lteam/opay/pay/customerservice/OCustomerServiceViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lag8;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method public static final S(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)Lre;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lre;->inflate(Landroid/view/LayoutInflater;)Lre;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public H()Lre;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lre;

    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lx7b;->a:Lx7b;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Lkotlin/Pair;

    .line 8
    .line 9
    const-string v1, "service_center_hotline_self_service_more_show"

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->O()V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;

    .line 18
    .line 19
    invoke-direct {p1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lre;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->H()Lre;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lre;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    const-string v1, "backNavigationButton"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lr2a;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lr2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Ls2a;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Ls2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;

    .line 64
    .line 65
    invoke-direct {v2, v1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lt2a;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lt2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;

    .line 85
    .line 86
    invoke-direct {v2, v1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->I()Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lu2a;

    .line 101
    .line 102
    invoke-direct {v1, p1}, Lu2a;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceMoreAdapter;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;

    .line 106
    .line 107
    invoke-direct {p1, v1}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lteam/opay/pay/customerservice/OCustomerServiceMoreActivity;->J()V

    .line 114
    .line 115
    .line 116
    return-void
.end method
