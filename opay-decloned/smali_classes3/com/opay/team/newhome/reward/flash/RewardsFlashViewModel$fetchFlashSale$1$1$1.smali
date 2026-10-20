.class final Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsFlashViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;->y(Lag8;Ljava/lang/String;Ljava/lang/String;Z)V
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
    c = "com.opay.team.newhome.reward.flash.RewardsFlashViewModel$fetchFlashSale$1$1$1"
    f = "RewardsFlashViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $sessionNo:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/core/android/arch/Resource<",
            "+",
            "Ljava/util/List<",
            "Lcom/opay/team/newhome/reward/FlashSaleGroup;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$data:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$data:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;-><init>(Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

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
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/opay/team/newhome/reward/flash/FlashSaleRemindDao;->a(Ljava/lang/String;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    move-object v1, p1

    .line 42
    iget-object p1, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 43
    .line 44
    invoke-static {p1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    new-instance v8, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->this$0:Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$data:Ljava/util/List;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$sessionNo:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v5, p0, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    move-object v0, v8

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel$fetchFlashSale$1$1$1$1;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/flash/RewardsFlashViewModel;Ljava/util/List;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;Ljr2;)V

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x2

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    move-object v2, p1

    .line 71
    move-object v3, v7

    .line 72
    move-object v5, v8

    .line 73
    move-object v7, v0

    .line 74
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 75
    .line 76
    .line 77
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
