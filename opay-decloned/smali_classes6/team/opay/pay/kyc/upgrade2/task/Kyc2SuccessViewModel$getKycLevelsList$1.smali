.class final Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Kyc2SuccessViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->D()V
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
    c = "team.opay.pay.kyc.upgrade2.task.Kyc2SuccessViewModel$getKycLevelsList$1"
    f = "Kyc2SuccessViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Ljava/util/List;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;",
            "Ljava/util/List<",
            "Lteam/opay/pay/kyc/levels/KycLevelBottomItem;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->$list:Ljava/util/List;

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
    new-instance p1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->$list:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Ljava/util/List;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->v(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;)Lteam/opay/pay/kyc/levels/KycLevelDao;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/kyc/levels/KycLevelDao;->c()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    if-eqz p1, :cond_4

    .line 27
    .line 28
    iget-object v1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->$list:Ljava/util/List;

    .line 29
    .line 30
    iget-object v2, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v5, v3, 0x1

    .line 48
    .line 49
    if-gez v3, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 52
    .line 53
    .line 54
    :cond_1
    check-cast v4, Lteam/opay/pay/kyc/levels/KycLevel;

    .line 55
    .line 56
    invoke-virtual {v4}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    const-string v6, "2"

    .line 61
    .line 62
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const-string v6, "3"

    .line 73
    .line 74
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v4}, Lteam/opay/pay/kyc/levels/KycLevel;->e()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v6, "agent"

    .line 85
    .line 86
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    invoke-static {v2, v4}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;->w(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Lteam/opay/pay/kyc/levels/KycLevel;)Lteam/opay/pay/kyc/levels/KycLevelBottomItem;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_3
    move v3, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 102
    .line 103
    invoke-static {p1}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v4, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1$2;

    .line 112
    .line 113
    iget-object p1, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->this$0:Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;

    .line 114
    .line 115
    iget-object v3, p0, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1;->$list:Ljava/util/List;

    .line 116
    .line 117
    invoke-direct {v4, p1, v3, v0}, Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel$getKycLevelsList$1$2;-><init>(Lteam/opay/pay/kyc/upgrade2/task/Kyc2SuccessViewModel;Ljava/util/List;Ljr2;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    const/4 v6, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 124
    .line 125
    .line 126
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method
