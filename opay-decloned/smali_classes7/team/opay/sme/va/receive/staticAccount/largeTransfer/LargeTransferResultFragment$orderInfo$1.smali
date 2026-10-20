.class final Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LargeTransferResultFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;->R(Ljava/lang/String;)V
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
    c = "team.opay.sme.va.receive.staticAccount.largeTransfer.LargeTransferResultFragment$orderInfo$1"
    f = "LargeTransferResultFragment.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $orderNo:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->$orderNo:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->$orderNo:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;->J(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;)Laxd;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Laxd;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    new-instance p1, Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;

    .line 43
    .line 44
    iget-object v4, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->$orderNo:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v10, 0x20

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const-string v5, "TRANSFER_NUMBER_TRANSACTION"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    move-object v3, p1

    .line 56
    invoke-direct/range {v3 .. v11}, Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 60
    .line 61
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;->K(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->label:I

    .line 66
    .line 67
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->H(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;Ljr2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 75
    .line 76
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "<get-lifecycle>(...)"

    .line 83
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lsf8;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;

    .line 96
    .line 97
    iget-object v3, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment$orderInfo$1;->$orderNo:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;->J(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferResultFragment;)Laxd;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, v1, Laxd;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-virtual {v1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 111
    .line 112
    .line 113
    :cond_4
    sget-object v1, Loaf;->a:Loaf;

    .line 114
    .line 115
    invoke-virtual {v1}, Loaf;->z()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    sget-object v1, Lu0f;->a:Lu0f;

    .line 128
    .line 129
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    move-object v4, p1

    .line 138
    check-cast v4, Lteam/opay/business/transfer/flow/api/TransactionDetailResp;

    .line 139
    .line 140
    const/16 v8, 0x20

    .line 141
    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v5, 0x1

    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x0

    .line 146
    invoke-static/range {v1 .. v9}, Lu0f;->g(Lu0f;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lteam/opay/business/transfer/flow/api/TransactionDetailResp;ZZZILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p1
.end method
