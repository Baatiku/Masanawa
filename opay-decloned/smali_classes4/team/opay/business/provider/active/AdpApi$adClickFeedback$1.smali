.class final Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdpApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/provider/active/AdpApi;->x(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)Lkotlinx/coroutines/l;
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
    c = "team.opay.business.provider.active.AdpApi$adClickFeedback$1"
    f = "AdpApi.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adItem:Lteam/opay/business/provider/active/AdItem;

.field final synthetic $adpCode:Ljava/lang/String;

.field final synthetic $clickType:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/provider/active/AdpApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/provider/active/AdItem;",
            "Lteam/opay/business/provider/active/AdpApi;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adpCode:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$clickType:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adpCode:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$clickType:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->label:I

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adpCode:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object p1, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Lteam/opay/business/provider/active/AdItem;->getCallbackClick()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    new-instance p1, Lteam/opay/business/provider/active/AdClickRequest;

    .line 44
    .line 45
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adpCode:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 48
    .line 49
    invoke-virtual {v4}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-direct {p1, v3, v4}, Lteam/opay/business/provider/active/AdClickRequest;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 57
    .line 58
    invoke-virtual {v3}, Lteam/opay/business/provider/active/AdpApi;->E()Luv;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iput v1, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->label:I

    .line 63
    .line 64
    invoke-interface {v3, p1, p0}, Luv;->m(Lteam/opay/business/provider/active/AdClickRequest;Ljr2;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v2, :cond_3

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_3
    :goto_0
    sget-object p1, Lyqe;->a:Lyqe;

    .line 72
    .line 73
    iget-object v2, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->this$0:Lteam/opay/business/provider/active/AdpApi;

    .line 74
    .line 75
    invoke-static {v2}, Lteam/opay/business/provider/active/AdpApi;->u(Lteam/opay/business/provider/active/AdpApi;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v3, "adpCode"

    .line 80
    .line 81
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adpCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v4, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$adItem:Lteam/opay/business/provider/active/AdItem;

    .line 88
    .line 89
    invoke-virtual {v4}, Lteam/opay/business/provider/active/AdItem;->getId()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-static {v4}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "adId"

    .line 98
    .line 99
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    const-string v5, "adClickType"

    .line 104
    .line 105
    iget-object v6, p0, Lteam/opay/business/provider/active/AdpApi$adClickFeedback$1;->$clickType:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v6, 0x3

    .line 112
    new-array v6, v6, [Lkotlin/Pair;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    aput-object v3, v6, v7

    .line 116
    .line 117
    aput-object v4, v6, v1

    .line 118
    .line 119
    aput-object v5, v6, v0

    .line 120
    .line 121
    const-string v0, "adp_click"

    .line 122
    .line 123
    invoke-virtual {p1, v2, v0, v6}, Lyqe;->b(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 124
    .line 125
    .line 126
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_4
    :goto_1
    sget-object p1, Lhk8;->c:Lhk8;

    .line 130
    .line 131
    const-string v1, "adpCode and adItem must not be null"

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-static {p1, v1, v2, v0, v2}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p1
.end method
