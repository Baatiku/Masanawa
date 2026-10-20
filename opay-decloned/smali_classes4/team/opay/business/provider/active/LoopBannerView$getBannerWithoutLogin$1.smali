.class final Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoopBannerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "team.opay.business.provider.active.LoopBannerView$getBannerWithoutLogin$1"
    f = "LoopBannerView.kt"
    l = {
        0x138
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $code:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/provider/active/LoopBannerView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/business/provider/active/LoopBannerView;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/business/provider/active/LoopBannerView;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->$code:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

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
    new-instance p1, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->$code:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/LoopBannerView;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->label:I

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
    new-instance p1, Lteam/opay/business/provider/active/BannerPageFlagRequest;

    .line 28
    .line 29
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->$code:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Lteam/opay/business/provider/active/BannerPageFlagRequest;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

    .line 35
    .line 36
    invoke-static {v1}, Lteam/opay/business/provider/active/LoopBannerView;->w(Lteam/opay/business/provider/active/LoopBannerView;)Lteam/opay/business/provider/active/ActiveViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput v2, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->label:I

    .line 41
    .line 42
    invoke-virtual {v1, p1, p0}, Lteam/opay/business/provider/active/ActiveViewModel;->e(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 50
    .line 51
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult$Success;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lteam/opay/business/provider/active/BannerPageFlagResponse;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Lteam/opay/business/provider/active/BannerPageFlagResponse;->a()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

    .line 72
    .line 73
    iget-object v1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->$code:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Lteam/opay/business/provider/active/LoopBannerView;->Q(Ljava/util/List;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

    .line 80
    .line 81
    invoke-static {p1}, Lteam/opay/business/provider/active/LoopBannerView;->x(Lteam/opay/business/provider/active/LoopBannerView;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    iget-object p1, p0, Lteam/opay/business/provider/active/LoopBannerView$getBannerWithoutLogin$1;->this$0:Lteam/opay/business/provider/active/LoopBannerView;

    .line 86
    .line 87
    invoke-static {p1}, Lteam/opay/business/provider/active/LoopBannerView;->x(Lteam/opay/business/provider/active/LoopBannerView;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1
.end method
