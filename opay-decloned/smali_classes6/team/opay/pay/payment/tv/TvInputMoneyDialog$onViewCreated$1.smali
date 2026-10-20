.class final Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TvInputMoneyDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/tv/TvInputMoneyDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.pay.payment.tv.TvInputMoneyDialog$onViewCreated$1"
    f = "TvInputMoneyDialog.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/tv/TvInputMoneyDialog;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/tv/TvInputMoneyDialog;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->this$0:Lteam/opay/pay/payment/tv/TvInputMoneyDialog;

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
    new-instance v0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->this$0:Lteam/opay/pay/payment/tv/TvInputMoneyDialog;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;-><init>(Lteam/opay/pay/payment/tv/TvInputMoneyDialog;Ljr2;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->label:I

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
    iget-object v0, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->L$0:Ljava/lang/Object;

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
    iget-object p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lzr2;

    .line 34
    .line 35
    iput-object p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    iput v2, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->label:I

    .line 38
    .line 39
    const-wide/16 v1, 0x12c

    .line 40
    .line 41
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-ne v1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    move-object v0, p1

    .line 49
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/payment/tv/TvInputMoneyDialog$onViewCreated$1;->this$0:Lteam/opay/pay/payment/tv/TvInputMoneyDialog;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lr1b;

    .line 62
    .line 63
    iget-object p1, p1, Lr1b;->b:Lteam/opay/pay/android/views/AmountEditText;

    .line 64
    .line 65
    const-string v0, "customAmount"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lli2;->h(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
