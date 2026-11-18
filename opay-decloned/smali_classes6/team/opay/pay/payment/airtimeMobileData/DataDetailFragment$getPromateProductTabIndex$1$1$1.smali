.class final Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DataDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.payment.airtimeMobileData.DataDetailFragment$getPromateProductTabIndex$1$1$1"
    f = "DataDetailFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $index:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ILjr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput p2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$index:I

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
    .locals 3
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
    new-instance v0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$index:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;ILjr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lzr2;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget v1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataDetailFragment$getPromateProductTabIndex$1$1$1;->$index:I

    .line 18
    .line 19
    invoke-static {v1}, Ldf1;->d(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/g;->e(Lzr2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method
