.class final Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->U(Lag8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1$a;
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
    c = "com.opay.team.newhome.viewmodel.NewPayViewModel$fetchHomeBalance$1"
    f = "NewPayViewModel.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->$lifecycleOwner:Lag8;

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

.method public static synthetic c(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->invokeSuspend$lambda$0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->E()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "access$getTAG$cp(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->F(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/android/arch/Resource;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 42
    .line 43
    const-string v1, "token_valid_event"

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v0, v1, v3, v2, v4}, Lteam/opay/pay/util/FlowBus;->h(Lteam/opay/pay/util/FlowBus;Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/HomeBalance;->e()Lteam/opay/core/api/graphql/WalletAccountBalance;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/WalletAccountBalance;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v1, v4

    .line 76
    :goto_0
    if-nez v1, :cond_3

    .line 77
    .line 78
    const-string v1, ""

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountInfoManager;->H(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lteam/opay/core/api/graphql/HomeBalance;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/HomeBalance;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move-object v0, v4

    .line 97
    :goto_1
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lteam/opay/core/api/graphql/HomeBalance;

    .line 104
    .line 105
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/HomeBalance;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getPositive()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    :cond_5
    sget-object v0, Lx7b;->a:Lx7b;

    .line 116
    .line 117
    const-string v1, "home_amount_is_zero"

    .line 118
    .line 119
    new-array v2, v3, [Lkotlin/Pair;

    .line 120
    .line 121
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lteam/opay/core/api/graphql/HomeBalance;

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/HomeBalance;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    :cond_7
    if-nez v4, :cond_8

    .line 137
    .line 138
    invoke-static {p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->G(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lteam/opay/core/api/graphql/HomeBalance;

    .line 147
    .line 148
    invoke-static {p0, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->H(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lteam/opay/core/api/graphql/HomeBalance;)V

    .line 149
    .line 150
    .line 151
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 152
    .line 153
    return-object p0
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
    new-instance p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->label:I

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
    iget-object p1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 28
    .line 29
    iput v2, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->label:I

    .line 30
    .line 31
    invoke-static {p1, p0}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->B(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Ljr2;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :goto_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->$lifecycleOwner:Lag8;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchHomeBalance$1;->this$0:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 45
    .line 46
    new-instance v2, Lcom/opay/team/newhome/viewmodel/b;

    .line 47
    .line 48
    invoke-direct {v2, v1}, Lcom/opay/team/newhome/viewmodel/b;-><init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$b;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    return-object p1
.end method
