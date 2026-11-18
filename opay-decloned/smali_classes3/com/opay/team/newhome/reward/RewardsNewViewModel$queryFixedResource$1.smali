.class final Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsNewViewModel;->F0(Lag8;)V
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
    c = "com.opay.team.newhome.reward.RewardsNewViewModel$queryFixedResource$1"
    f = "RewardsNewViewModel.kt"
    l = {
        0x211
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $viewLifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->$viewLifecycleOwner:Lag8;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->$viewLifecycleOwner:Lag8;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;-><init>(Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/opay/team/newhome/reward/RewardsNewViewModel;->x(Lcom/opay/team/newhome/reward/RewardsNewViewModel;)Lusc;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lusc;->a()Lretrofit2/Call;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 38
    .line 39
    const-class v3, Lcom/opay/team/newhome/reward/FixedResources;

    .line 40
    .line 41
    invoke-static {p1, v1, v3}, Lkpc;->b(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/Class;)Landroidx/lifecycle/LiveData;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v3, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->$viewLifecycleOwner:Lag8;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    invoke-direct {v3, p1, v4, v5, v6}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V

    .line 57
    .line 58
    .line 59
    iput v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$queryFixedResource$1;->label:I

    .line 60
    .line 61
    invoke-static {v1, v3, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method
