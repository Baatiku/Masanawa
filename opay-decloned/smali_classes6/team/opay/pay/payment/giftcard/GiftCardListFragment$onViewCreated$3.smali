.class final Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GiftCardListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.pay.payment.giftcard.GiftCardListFragment$onViewCreated$3"
    f = "GiftCardListFragment.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $letterList:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $type:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/payment/giftcard/GiftCardListFragment;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$type:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$letterList:Lkotlin/jvm/internal/Ref$ObjectRef;

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

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->invokeSuspend$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$2$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lwd6;

    .line 8
    .line 9
    iget-object p0, p0, Lwd6;->d:Lteam/opay/core/android/views/InitialsLetterBar;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lteam/opay/core/android/views/InitialsLetterBar;->setLetters(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
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
    new-instance p1, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$type:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$letterList:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;-><init>(Ljava/lang/String;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;Lkotlin/jvm/internal/Ref$ObjectRef;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->label:I

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
    iget-object v0, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$type:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->this$0:Lteam/opay/pay/payment/giftcard/GiftCardListFragment;

    .line 40
    .line 41
    iget-object v3, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->$letterList:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-static {v1}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->S(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v1}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->T(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    new-instance v6, Lteam/opay/pay/payment/giftcard/a;

    .line 52
    .line 53
    invoke-direct {v6, v3, v1}, Lteam/opay/pay/payment/giftcard/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v4, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    iput v2, p0, Lteam/opay/pay/payment/giftcard/GiftCardListFragment$onViewCreated$3;->label:I

    .line 61
    .line 62
    invoke-virtual {v5, p1, v6, p0}, Lteam/opay/pay/payment/giftcard/GiftCardViewModel;->L(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljr2;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v0, :cond_2

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    move-object v0, v4

    .line 70
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lteam/opay/pay/payment/giftcard/GiftCardListFragment;->S(Lteam/opay/pay/payment/giftcard/GiftCardListFragment;)Lteam/opay/pay/payment/giftcard/GiftCardListAdapter;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v0, Lteam/opay/pay/kyc/view/EmptyView;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v1, "requireContext(...)"

    .line 86
    .line 87
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v6, 0x6

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    move-object v2, v0

    .line 95
    invoke-direct/range {v2 .. v7}, Lteam/opay/pay/kyc/view/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .line 97
    .line 98
    sget v1, Lteam/opay/pay/R$string;->osdk_transfer_choose_beneficiary_search_no_data:I

    .line 99
    .line 100
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget v4, Lteam/opay/pay/R$mipmap;->ic_no_data_default:I

    .line 105
    .line 106
    const/high16 v1, 0x42400000    # 48.0f

    .line 107
    .line 108
    invoke-static {v1}, Ljmf;->c(F)F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    float-to-int v6, v1

    .line 113
    const/16 v9, 0x34

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    invoke-static/range {v2 .. v10}, Lteam/opay/pay/kyc/view/EmptyView;->p(Lteam/opay/pay/kyc/view/EmptyView;Ljava/lang/String;ILjava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEmptyView(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1
.end method
