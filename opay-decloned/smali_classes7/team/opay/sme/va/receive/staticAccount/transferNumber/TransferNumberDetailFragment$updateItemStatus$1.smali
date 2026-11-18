.class final Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferNumberDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->l0(Lteam/opay/sme/va/receive/DetailSettingInfo;)V
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
    c = "team.opay.sme.va.receive.staticAccount.transferNumber.TransferNumberDetailFragment$updateItemStatus$1"
    f = "TransferNumberDetailFragment.kt"
    l = {
        0xdd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $changeStatus:Ljava/lang/String;

.field final synthetic $info:Lteam/opay/sme/va/receive/DetailSettingInfo;

.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;Lteam/opay/sme/va/receive/DetailSettingInfo;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;",
            "Lteam/opay/sme/va/receive/DetailSettingInfo;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$info:Lteam/opay/sme/va/receive/DetailSettingInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$changeStatus:Ljava/lang/String;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$info:Lteam/opay/sme/va/receive/DetailSettingInfo;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$changeStatus:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;Lteam/opay/sme/va/receive/DetailSettingInfo;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->R(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Lteam/opay/sme/va/receive/TNOperationReq;

    .line 34
    .line 35
    iget-object v3, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$info:Lteam/opay/sme/va/receive/DetailSettingInfo;

    .line 36
    .line 37
    invoke-virtual {v3}, Lteam/opay/sme/va/receive/DetailSettingInfo;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v4, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 42
    .line 43
    invoke-static {v4}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->Q(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$changeStatus:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v3, v4, v5}, Lteam/opay/sme/va/receive/TNOperationReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->label:I

    .line 53
    .line 54
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->G(Lteam/opay/sme/va/receive/TNOperationReq;Ljr2;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 62
    .line 63
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 69
    .line 70
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p1, p1, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$info:Lteam/opay/sme/va/receive/DetailSettingInfo;

    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->$changeStatus:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lteam/opay/sme/va/receive/DetailSettingInfo;->g(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 87
    .line 88
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->P(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailAdapter;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 97
    .line 98
    invoke-static {v0}, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;->O(Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;)Loxd;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Loxd;->g:Lteam/opay/core/widget/HttpViewGroup;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment$updateItemStatus$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/transferNumber/TransferNumberDetailFragment;

    .line 108
    .line 109
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_1

    .line 124
    :cond_4
    const/4 p1, 0x0

    .line 125
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p1
.end method
