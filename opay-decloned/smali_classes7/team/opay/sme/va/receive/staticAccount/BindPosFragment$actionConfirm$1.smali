.class final Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BindPosFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->Q()V
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
    c = "team.opay.sme.va.receive.staticAccount.BindPosFragment$actionConfirm$1"
    f = "BindPosFragment.kt"
    l = {
        0x3e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

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
    new-instance p1, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;-><init>(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->label:I

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
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->J(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lywd;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lywd;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lteam/opay/core/widget/HttpViewGroup;->x(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->L(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lteam/opay/sme/va/receive/ReceiveViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 45
    .line 46
    invoke-static {v1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->K(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lteam/opay/sme/va/receive/SerialBean;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput v2, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->label:I

    .line 51
    .line 52
    invoke-virtual {p1, v1, p0}, Lteam/opay/sme/va/receive/ReceiveViewModel;->a0(Lteam/opay/sme/va/receive/SerialBean;Ljr2;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_2

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 60
    .line 61
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->J(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lywd;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p1, p1, Lywd;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 78
    .line 79
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->K(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lteam/opay/sme/va/receive/SerialBean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lteam/opay/sme/va/receive/SerialBean;->b()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 90
    .line 91
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->K(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lteam/opay/sme/va/receive/SerialBean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->P(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;Lteam/opay/sme/va/receive/SerialBean;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 100
    .line 101
    invoke-static {p1, v1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->M(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;Lteam/opay/sme/va/receive/SerialBean;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 106
    .line 107
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :cond_5
    invoke-static {v0, v1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment$actionConfirm$1;->this$0:Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;

    .line 125
    .line 126
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;->J(Lteam/opay/sme/va/receive/staticAccount/BindPosFragment;)Lywd;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object p1, p1, Lywd;->e:Lteam/opay/core/widget/HttpViewGroup;

    .line 131
    .line 132
    invoke-virtual {p1}, Lteam/opay/core/widget/HttpViewGroup;->g()V

    .line 133
    .line 134
    .line 135
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p1
.end method
