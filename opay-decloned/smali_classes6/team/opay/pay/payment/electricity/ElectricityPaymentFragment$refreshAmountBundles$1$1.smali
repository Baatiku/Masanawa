.class final Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ElectricityPaymentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.pay.payment.electricity.ElectricityPaymentFragment$refreshAmountBundles$1$1"
    f = "ElectricityPaymentFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $needRewards:Z

.field final synthetic $requestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;ZLteam/opay/pay/payment/electricity/ElectricityBundleV3;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            ">;",
            "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;",
            "Z",
            "Lteam/opay/pay/payment/electricity/ElectricityBundleV3;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$needRewards:Z

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$requestList:Ljava/util/List;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 6
    .line 7
    iget-boolean v3, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$needRewards:Z

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$requestList:Ljava/util/List;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;-><init>(Ljava/util/List;Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;ZLteam/opay/pay/payment/electricity/ElectricityBundleV3;Ljava/util/List;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$list:Ljava/util/List;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 23
    .line 24
    invoke-static {p1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->H0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;)Lteam/opay/pay/payment/electricity/ElectricityBundlesAdapter;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$list:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lteam/opay/pay/payment/electricity/ElectricityBundlesAdapter;->o(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$needRewards:Z

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 38
    .line 39
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$bundle:Lteam/opay/pay/payment/electricity/ElectricityBundleV3;

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->$requestList:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0, v1}, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;->N0(Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;Lteam/opay/pay/payment/electricity/ElectricityBundleV3;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment$refreshAmountBundles$1$1;->this$0:Lteam/opay/pay/payment/electricity/ElectricityPaymentFragment;

    .line 53
    .line 54
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lqd6;

    .line 59
    .line 60
    iget-object p1, p1, Lqd6;->l:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    const-string v0, "bundlesContainer"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method
