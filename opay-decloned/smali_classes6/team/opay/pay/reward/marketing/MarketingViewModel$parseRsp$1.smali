.class final Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MarketingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/reward/marketing/MarketingViewModel;->s(Ljava/lang/String;)Lteam/opay/pay/reward/marketing/MarketingDataRsp;
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
    c = "team.opay.pay.reward.marketing.MarketingViewModel$parseRsp$1"
    f = "MarketingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $marketingRsp:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rsp:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/reward/marketing/MarketingViewModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/reward/marketing/MarketingViewModel;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lteam/opay/pay/reward/marketing/MarketingDataRsp;",
            ">;",
            "Lteam/opay/pay/reward/marketing/MarketingViewModel;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$marketingRsp:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->this$0:Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$rsp:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$marketingRsp:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->this$0:Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$rsp:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/reward/marketing/MarketingViewModel;Ljava/lang/String;Ljr2;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$marketingRsp:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->this$0:Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/reward/marketing/MarketingViewModel;->q()Lcom/google/gson/Gson;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$rsp:Ljava/lang/String;

    .line 20
    .line 21
    const-class v2, Lteam/opay/pay/reward/marketing/MarketingDataRsp;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->$marketingRsp:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 30
    .line 31
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lteam/opay/pay/reward/marketing/MarketingDataRsp;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lteam/opay/pay/reward/marketing/MarketingViewModel$parseRsp$1;->this$0:Lteam/opay/pay/reward/marketing/MarketingViewModel;

    .line 38
    .line 39
    invoke-virtual {v0}, Lteam/opay/pay/reward/marketing/MarketingViewModel;->r()Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method
