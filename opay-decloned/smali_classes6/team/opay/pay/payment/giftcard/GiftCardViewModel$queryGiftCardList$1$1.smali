.class final Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GiftCardViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->R(Lag8;)V
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
    c = "team.opay.pay.payment.giftcard.GiftCardViewModel$queryGiftCardList$1$1"
    f = "GiftCardViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lteam/opay/core/android/arch/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/GiftCardProviderResult;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/payment/giftcard/GiftCardViewModel;",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/GiftCardProviderResult;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->$it:Lteam/opay/core/android/arch/Resource;

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
    new-instance p1, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;-><init>(Lteam/opay/pay/payment/giftcard/GiftCardViewModel;Lteam/opay/core/android/arch/Resource;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->K()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 18
    .line 19
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lteam/opay/core/api/graphql/GiftCardProviderTitleData;

    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, " ALL"

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    invoke-direct/range {v3 .. v8}, Lteam/opay/core/api/graphql/GiftCardProviderTitleData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->a(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 41
    .line 42
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 47
    .line 48
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderResult;->c()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    new-array v3, v3, [Lteam/opay/core/api/graphql/GiftCardProviderTitleData;

    .line 57
    .line 58
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->c()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v2, v2, [Lteam/opay/core/api/graphql/GiftCardProviderTitleData;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 80
    .line 81
    invoke-virtual {v2}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 86
    .line 87
    invoke-virtual {v2}, Lteam/opay/core/api/graphql/GiftCardProviderResult;->a()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, p0, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1;->$it:Lteam/opay/core/android/arch/Resource;

    .line 92
    .line 93
    invoke-virtual {v3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lteam/opay/core/api/graphql/GiftCardProviderResult;

    .line 98
    .line 99
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/GiftCardProviderResult;->b()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_0

    .line 104
    .line 105
    new-instance v4, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1$invokeSuspend$$inlined$sortedBy$1;

    .line 106
    .line 107
    invoke-direct {v4}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel$queryGiftCardList$1$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->M0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/4 v3, 0x0

    .line 116
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/core/api/graphql/GiftCardProviderResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 126
    .line 127
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method
