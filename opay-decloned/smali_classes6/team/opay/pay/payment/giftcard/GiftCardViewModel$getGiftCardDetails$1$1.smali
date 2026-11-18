.class final Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GiftCardViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->I(Lteam/opay/core/api/graphql/GiftCardProviderInfo;Lag8;)V
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
    c = "team.opay.pay.payment.giftcard.GiftCardViewModel$getGiftCardDetails$1$1"
    f = "GiftCardViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/GiftCardDetailsResponse;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/GiftCardDetailsResponse;",
            ">;",
            "Lteam/opay/core/api/graphql/GiftCardProviderInfo;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$data:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

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
    new-instance p1, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$data:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Lteam/opay/core/api/graphql/GiftCardProviderInfo;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lteam/opay/core/api/graphql/GiftCardDetailsResponse;

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/GiftCardDetailsResponse;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$getGiftCardDetails$1$1;->$data:Lteam/opay/core/api/graphql/GiftCardProviderInfo;

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    move-object v4, v3

    .line 57
    check-cast v4, Lteam/opay/core/api/graphql/GiftCardProductInfo;

    .line 58
    .line 59
    invoke-virtual {v4}, Lteam/opay/core/api/graphql/GiftCardProductInfo;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-nez v4, :cond_1

    .line 64
    .line 65
    sget-object v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 66
    .line 67
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getMinAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_2

    .line 76
    .line 77
    sget-object v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 78
    .line 79
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/GiftCardProviderInfo;->getMaxAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    new-instance v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 90
    .line 91
    const-string v7, "2147483647"

    .line 92
    .line 93
    const-string v8, "NGN"

    .line 94
    .line 95
    invoke-direct {v6, v7, v8}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v4, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-ltz v5, :cond_0

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-gtz v4, :cond_0

    .line 109
    .line 110
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    const/4 v2, 0x0

    .line 115
    :cond_5
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method
