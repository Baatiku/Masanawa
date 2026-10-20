.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1$a;
    }
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$fetchHomeComponent$1$1"
    f = "NewPayViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/HomeRewardsRsp;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lcom/opay/team/newhome/reward/HomeRewardsRsp;",
            ">;>;",
            "Lag8;",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lcom/opay/team/newhome/reward/HomeRewardsReq;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$lifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

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

.method public static synthetic c(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->invokeSuspend$lambda$0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->c1(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/opay/team/newhome/reward/HomeRewardsRsp;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/HomeRewardsRsp;->b()Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v0, v2

    .line 36
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "it.data?.securityFeel="

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1$a;->a:[I

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    aget v0, v1, v0

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-ne v0, v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeRewardsReq;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/opay/team/newhome/reward/HomeRewardsRsp;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/opay/team/newhome/reward/HomeRewardsRsp;->a()Lcom/opay/team/newhome/reward/HomeKBoxRsp;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v0, v2

    .line 84
    :goto_1
    invoke-static {p0, v0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->I(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeKBoxRsp;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeRewardsReq;->b()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/opay/team/newhome/reward/HomeRewardsRsp;

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/HomeRewardsRsp;->b()Lcom/opay/team/newhome/reward/SecurityFeel;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_5
    invoke-static {p0, v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->J(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/SecurityFeel;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 110
    .line 111
    .line 112
    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$liveData:Landroidx/lifecycle/LiveData;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$lifecycleOwner:Lag8;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeComponent$1$1;->$req:Lcom/opay/team/newhome/reward/HomeRewardsReq;

    .line 18
    .line 19
    new-instance v3, Lcom/opay/team/newhome/viewmodel/c;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Lcom/opay/team/newhome/viewmodel/c;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lcom/opay/team/newhome/reward/HomeRewardsReq;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
