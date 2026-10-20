.class final Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewAddMoneyViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/NewAddMoneyViewModel;->L(Lag8;)V
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
    c = "team.opay.pay.wallet.NewAddMoneyViewModel$getLimitInfo$1"
    f = "NewAddMoneyViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/NewAddMoneyViewModel;",
            "Lag8;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->$lifecycleOwner:Lag8;

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
    new-instance p1, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/oconfig/a;->a:Lteam/opay/oconfig/a;

    .line 12
    .line 13
    const-string v0, "opay_bank_top_up_limit"

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lteam/opay/oconfig/a;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 30
    .line 31
    new-instance v1, Lcom/google/gson/Gson;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    .line 35
    .line 36
    const-class v2, Lteam/opay/pay/settings/BankLimitData;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/pay/settings/BankLimitData;

    .line 43
    .line 44
    invoke-static {v0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->z(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/settings/BankLimitData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->this$0:Lteam/opay/pay/wallet/NewAddMoneyViewModel;

    .line 53
    .line 54
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;->$lifecycleOwner:Lag8;

    .line 55
    .line 56
    invoke-static {p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p1, v0, v1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->A(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method
