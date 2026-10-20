.class final Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AirtimeDataTopupViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->J1()V
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
    c = "team.opay.pay.payment.airtimeDataBase.AirtimeDataTopupViewModel$removeRecent$1"
    f = "AirtimeDataTopupViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

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
    new-instance p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;-><init>(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->R(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 35
    .line 36
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    :cond_1
    invoke-static {v4}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->P0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->b1()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    sget-object v5, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 67
    .line 68
    if-ne v4, v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->a()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v3, v4, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v3}, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;->d()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->N(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ne v3, v4, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 v2, 0x0

    .line 93
    :goto_0
    check-cast v2, Lteam/opay/pay/payment/airtime/DataAndAirtimeHistory;

    .line 94
    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 101
    .line 102
    invoke-virtual {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->b1()Lteam/opay/core/api/GraphQL$ServiceType;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 107
    .line 108
    if-ne v0, v1, :cond_4

    .line 109
    .line 110
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 111
    .line 112
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 117
    .line 118
    invoke-static {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->M(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lcom/google/gson/Gson;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->t1(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 131
    .line 132
    invoke-static {v0}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->Q(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lteam/opay/core/settings/NoClearStorage;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel$removeRecent$1;->this$0:Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;

    .line 137
    .line 138
    invoke-static {v1}, Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;->M(Lteam/opay/pay/payment/airtimeDataBase/AirtimeDataTopupViewModel;)Lcom/google/gson/Gson;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->Y0(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 153
    .line 154
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 155
    .line 156
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method
