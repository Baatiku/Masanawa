.class final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsFlashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->V(Lcom/opay/team/newhome/reward/FlashSaleGroup;Lteam/opay/pay/payment/data/DataMarketingProduct;)V
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
    c = "com.opay.team.newhome.reward.flash.RewardsFlashViewModel$updateRemind$1"
    f = "RewardsFlashViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

.field final synthetic $product:Lteam/opay/pay/payment/data/DataMarketingProduct;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
            "Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;",
            "Lteam/opay/pay/payment/data/DataMarketingProduct;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$item:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 3
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
    new-instance p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$item:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->t(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;)Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$item:Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;->b(Lcom/opay/team/newhome/reward/flash/FlashSaleRemindData;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 25
    .line 26
    invoke-static {p1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1;->$product:Lteam/opay/pay/payment/data/DataMarketingProduct;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, p1, v2, v4}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$updateRemind$1$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Lteam/opay/pay/payment/data/DataMarketingProduct;Ljr2;)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method
