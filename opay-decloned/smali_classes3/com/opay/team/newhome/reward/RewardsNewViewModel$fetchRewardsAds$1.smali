.class final Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RewardsNewViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/RewardsNewViewModel;->M(Lag8;Ljava/util/List;I)V
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
    c = "com.opay.team.newhome.reward.RewardsNewViewModel$fetchRewardsAds$1"
    f = "RewardsNewViewModel.kt"
    l = {
        0xd2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adType:I

.field final synthetic $adsReqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/cashio/AdDataReqBody;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $viewLifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;ILjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/cashio/AdDataReqBody;",
            ">;",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel;",
            "Lag8;",
            "I",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adsReqs:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$viewLifecycleOwner:Lag8;

    .line 6
    .line 7
    iput p4, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adType:I

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
    new-instance p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adsReqs:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$viewLifecycleOwner:Lag8;

    .line 8
    .line 9
    iget v4, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adType:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;-><init>(Ljava/util/List;Lcom/opay/team/newhome/reward/RewardsNewViewModel;Lag8;ILjr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->label:I

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
    goto :goto_1

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
    iget-object p1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adsReqs:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v3, 0xa

    .line 32
    .line 33
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lteam/opay/pay/cashio/AdDataReqBody;

    .line 55
    .line 56
    new-instance v4, Lteam/opay/pay/api/AnnouncementReq;

    .line 57
    .line 58
    invoke-virtual {v3}, Lteam/opay/pay/cashio/AdDataReqBody;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    const-string v3, ""

    .line 65
    .line 66
    :cond_2
    invoke-direct {v4, v3}, Lteam/opay/pay/api/AnnouncementReq;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance p1, Lteam/opay/pay/api/AllAnnouncementReq;

    .line 74
    .line 75
    invoke-direct {p1, v1}, Lteam/opay/pay/api/AllAnnouncementReq;-><init>(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 81
    .line 82
    invoke-static {v3}, Lloa;->c(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/pay/android/OpayApplication;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const-class v4, Lfv;

    .line 87
    .line 88
    invoke-virtual {v1, v3, v4}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lfv;

    .line 93
    .line 94
    invoke-interface {v1, p1}, Lfv;->H1(Lteam/opay/pay/api/AllAnnouncementReq;)Lretrofit2/Call;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v1, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 99
    .line 100
    const-string v3, "200"

    .line 101
    .line 102
    invoke-static {p1, v1, v3}, Lkpc;->d(Lretrofit2/Call;Landroidx/lifecycle/AndroidViewModel;Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v1, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;

    .line 111
    .line 112
    iget-object v6, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$viewLifecycleOwner:Lag8;

    .line 113
    .line 114
    iget v7, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->$adType:I

    .line 115
    .line 116
    iget-object v8, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->this$0:Lcom/opay/team/newhome/reward/RewardsNewViewModel;

    .line 117
    .line 118
    const/4 v9, 0x0

    .line 119
    move-object v4, v1

    .line 120
    invoke-direct/range {v4 .. v9}, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;ILcom/opay/team/newhome/reward/RewardsNewViewModel;Ljr2;)V

    .line 121
    .line 122
    .line 123
    iput v2, p0, Lcom/opay/team/newhome/reward/RewardsNewViewModel$fetchRewardsAds$1;->label:I

    .line 124
    .line 125
    invoke-static {p1, v1, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_4

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
