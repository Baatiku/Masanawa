.class final Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TopOrBottomPopViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->x0(Lag8;Ljava/lang/String;Ljava/util/ArrayList;)V
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
    c = "com.opay.team.newhome.home.TopOrBottomPopViewModel$livingPop$1"
    f = "TopOrBottomPopViewModel.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $code:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lifecycleOwner:Lag8;

.field final synthetic $sceneType:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$sceneType:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$code:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$lifecycleOwner:Lag8;

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

.method public static synthetic c(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->invokeSuspend$lambda$2(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->a()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lteam/opay/odialog/net/ADListItem;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lteam/opay/odialog/net/AdDataItem;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v1

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->r0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_2
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/FloatingWidget;->h()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    cmp-long v4, v0, v2

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/opay/team/newhome/home/MarketingAggregateRsq;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/MarketingAggregateRsq;->b()Lcom/opay/team/newhome/home/FloatingWidget;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->f0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
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
    new-instance v6, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$sceneType:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$code:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$lifecycleOwner:Lag8;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Ljava/lang/String;Ljava/util/ArrayList;Lag8;Ljr2;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->label:I

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
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lzr2;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->O(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    iput-object p1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->label:I

    .line 44
    .line 45
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-ne v1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    move-object v0, p1

    .line 53
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_3
    new-instance p1, Lcom/opay/team/newhome/home/MarketingAggregateReq;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$sceneType:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$code:Ljava/util/ArrayList;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {p1, v2, v0, v1}, Lcom/opay/team/newhome/home/MarketingAggregateReq;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 73
    .line 74
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v1, "200"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->N(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)Ltd8;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1, p1}, Ltd8;->d(Lcom/opay/team/newhome/home/MarketingAggregateReq;)Lretrofit2/Call;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->$lifecycleOwner:Lag8;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$livingPop$1;->this$0:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 110
    .line 111
    new-instance v2, Lcom/opay/team/newhome/home/d;

    .line 112
    .line 113
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/home/d;-><init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v0, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method
