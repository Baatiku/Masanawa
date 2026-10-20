.class final Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OCustomerServiceFaqListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->onResume()V
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
    c = "team.opay.pay.customerservice.OCustomerServiceFaqListFragment$onResume$1"
    f = "OCustomerServiceFaqListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
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
    new-instance p1, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;-><init>(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->T(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->H()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->S(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/List;

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 41
    .line 42
    invoke-static {v0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->R(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Lteam/opay/pay/customerservice/OCustomerServiceFaqListAdapter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "getData(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lteam/opay/core/api/graphql/OCustomerServiceQuestionData;

    .line 72
    .line 73
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/OCustomerServiceQuestionData;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/OCustomerServiceQuestionData;->getId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_1

    .line 88
    .line 89
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/OCustomerServiceQuestionData;->getId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    sget-object v3, Lx7b;->a:Lx7b;

    .line 97
    .line 98
    const-string v4, "Module_ID"

    .line 99
    .line 100
    invoke-static {v1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->S(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v4, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v5, "FAQ_ID"

    .line 109
    .line 110
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/OCustomerServiceQuestionData;->getId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v5, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const/4 v5, 0x2

    .line 119
    new-array v5, v5, [Lkotlin/Pair;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    aput-object v4, v5, v6

    .line 123
    .line 124
    const/4 v4, 0x1

    .line 125
    aput-object v2, v5, v4

    .line 126
    .line 127
    const-string v2, "service_center_hotline_guess_your_issue_show"

    .line 128
    .line 129
    invoke-virtual {v3, v2, v5}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 134
    .line 135
    invoke-static {v0}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->T(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Lteam/opay/pay/customerservice/OCustomerServiceViewModel;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lteam/opay/pay/customerservice/OCustomerServiceViewModel;->H()Ljava/util/Map;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p0, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment$onResume$1;->this$0:Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;

    .line 144
    .line 145
    invoke-static {v1}, Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;->S(Lteam/opay/pay/customerservice/OCustomerServiceFaqListFragment;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1

    .line 158
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p1
.end method
