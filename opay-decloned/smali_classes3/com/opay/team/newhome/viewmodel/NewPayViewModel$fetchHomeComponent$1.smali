.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->V(Lag8;Lcom/opay/team/newhome/reward/HomeRewardsReq;)V
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$fetchHomeComponent$1"
    f = "NewPayViewModel.kt"
    l = {
        0x22f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lcom/opay/team/newhome/reward/HomeRewardsReq;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$lifecycleOwner:Lag8;

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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->label:I

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
    sget-object p1, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig;->Companion:Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/HomeRewardsComponentConfig$Companion;->b()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_5

    .line 34
    .line 35
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->Q0()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeRewardsReq;->b()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->h1(Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->D(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)Lfv;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 65
    .line 66
    invoke-interface {p1, v1}, Lfv;->R(Lcom/opay/team/newhome/reward/HomeRewardsReq;)Lretrofit2/Call;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 71
    .line 72
    invoke-static {p1, v1}, Lkpc;->a(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;)Landroidx/lifecycle/LiveData;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$lifecycleOwner:Lag8;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 85
    .line 86
    iget-object v7, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    move-object v3, v1

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Ljr2;)V

    .line 91
    .line 92
    .line 93
    iput v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->label:I

    .line 94
    .line 95
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_4

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method
