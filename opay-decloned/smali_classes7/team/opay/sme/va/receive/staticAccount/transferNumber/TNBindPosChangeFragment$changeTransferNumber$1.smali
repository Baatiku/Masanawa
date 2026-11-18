.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TNBindPosChangeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->M()V
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
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TNBindPosChangeFragment$changeTransferNumber$1"
    f = "TNBindPosChangeFragment.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

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
    .locals 1
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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lteam/opay/sme/va/receive/ModifyTNBind;

    .line 29
    .line 30
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 31
    .line 32
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->J(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)Lteam/opay/sme/va/receive/TransferNumberDetails;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/sme/va/receive/TransferNumberDetails;->getTransferNumber()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v1, v3

    .line 44
    :goto_0
    iget-object v4, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 45
    .line 46
    invoke-static {v4}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->I(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)Lteam/opay/sme/va/receive/TransferNumberDetails;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v4}, Lteam/opay/sme/va/receive/TransferNumberDetails;->getTransferNumber()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move-object v4, v3

    .line 58
    :goto_1
    invoke-direct {p1, v1, v4}, Lteam/opay/sme/va/receive/ModifyTNBind;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 62
    .line 63
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->K(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->label:I

    .line 68
    .line 69
    invoke-virtual {v1, p1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->r(Lteam/opay/sme/va/receive/ModifyTNBind;Ljr2;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    :goto_2
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 77
    .line 78
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 79
    .line 80
    const-string v1, "loadingView"

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 85
    .line 86
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->H(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)Lmxd;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lmxd;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 91
    .line 92
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 99
    .line 100
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->L(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 105
    .line 106
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;->H(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;)Lmxd;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v0, v0, Lmxd;->j:Lteam/opay/core/widget/PulseLoaderView;

    .line 111
    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment$changeTransferNumber$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TNBindPosChangeFragment;

    .line 119
    .line 120
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :cond_6
    invoke-static {v0, v3}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p1
.end method
