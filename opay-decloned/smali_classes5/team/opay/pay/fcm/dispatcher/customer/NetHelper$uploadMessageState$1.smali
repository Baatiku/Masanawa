.class final Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/fcm/dispatcher/customer/NetHelper;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "team.opay.pay.fcm.dispatcher.customer.NetHelper$uploadMessageState$1"
    f = "NetHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/content/Context;

.field final synthetic $tempRequest:Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$ctx:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$tempRequest:Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;

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
    new-instance v0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$ctx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$tempRequest:Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;-><init>(Landroid/content/Context;Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;Ljr2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lzr2;

    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$ctx:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/pay/fcm/dispatcher/customer/NetHelper$uploadMessageState$1;->$tempRequest:Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;

    .line 18
    .line 19
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    sget-object v1, Lteam/opay/pay/fcm/dispatcher/customer/ApiFactory;->a:Lteam/opay/pay/fcm/dispatcher/customer/ApiFactory;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lteam/opay/pay/fcm/dispatcher/customer/ApiFactory;->a(Landroid/content/Context;)Ljv;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljv;->a(Lteam/opay/pay/fcm/dispatcher/customer/bean/MessageStatueRequest;)Lretrofit2/Call;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 48
    .line 49
    invoke-static {p1}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method
