.class final Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BettingTopupActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/betting/BettingTopupActivity;->C2(Lteam/opay/pay/payment/betting/UseVoucherEvent;)V
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
    c = "team.opay.pay.payment.betting.BettingTopupActivity$onUseVoucherClick$1"
    f = "BettingTopupActivity.kt"
    l = {
        0x53f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/betting/BettingTopupActivity;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/betting/UseVoucherEvent;Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/betting/UseVoucherEvent;",
            "Lteam/opay/pay/payment/betting/BettingTopupActivity;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->$event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupActivity;

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

.method public static synthetic c(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/betting/UseVoucherEvent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->invokeSuspend$lambda$0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/betting/UseVoucherEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/betting/UseVoucherEvent;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->N0(Lteam/opay/pay/payment/betting/BettingTopupActivity;)Lteam/opay/pay/payment/betting/BettingTopupViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/payment/betting/BettingTopupViewModel;->o0()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/UseVoucherEvent;->b()Lteam/opay/pay/api/QueryVoucherItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
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
    new-instance p1, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->$event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupActivity;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;-><init>(Lteam/opay/pay/payment/betting/UseVoucherEvent;Lteam/opay/pay/payment/betting/BettingTopupActivity;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->label:I

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
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->$event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/UseVoucherEvent;->a()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    cmp-long p1, v3, v5

    .line 36
    .line 37
    if-lez p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->$event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 40
    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/UseVoucherEvent;->a()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    iput v2, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->label:I

    .line 46
    .line 47
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupActivity;

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/pay/payment/betting/BettingTopupActivity;->S1()Lge;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p1, p1, Lge;->B:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->this$0:Lteam/opay/pay/payment/betting/BettingTopupActivity;

    .line 63
    .line 64
    iget-object v1, p0, Lteam/opay/pay/payment/betting/BettingTopupActivity$onUseVoucherClick$1;->$event:Lteam/opay/pay/payment/betting/UseVoucherEvent;

    .line 65
    .line 66
    new-instance v2, Lteam/opay/pay/payment/betting/a;

    .line 67
    .line 68
    invoke-direct {v2, v0, v1}, Lteam/opay/pay/payment/betting/a;-><init>(Lteam/opay/pay/payment/betting/BettingTopupActivity;Lteam/opay/pay/payment/betting/UseVoucherEvent;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1
.end method
