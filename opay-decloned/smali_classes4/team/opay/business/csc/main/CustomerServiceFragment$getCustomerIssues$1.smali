.class final Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomerServiceFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/csc/main/CustomerServiceFragment;->t0()Lkotlinx/coroutines/l;
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
    c = "team.opay.business.csc.main.CustomerServiceFragment$getCustomerIssues$1"
    f = "CustomerServiceFragment.kt"
    l = {
        0x121
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/csc/main/CustomerServiceFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/csc/main/CustomerServiceFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

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
    new-instance p1, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;-><init>(Lteam/opay/business/csc/main/CustomerServiceFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->label:I

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
    sget-object p1, Lxv2;->b:Lxv2;

    .line 28
    .line 29
    invoke-virtual {p1}, Lxv2;->d()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->j0(Lteam/opay/business/csc/main/CustomerServiceFragment;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->d0(Lteam/opay/business/csc/main/CustomerServiceFragment;)Lteam/opay/business/csc/main/CscViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput v2, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->label:I

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lteam/opay/business/csc/main/CscViewModel;->s(Ljr2;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    :goto_0
    check-cast p1, Lteam/opay/core/http/HttpResult;

    .line 59
    .line 60
    instance-of v0, p1, Lteam/opay/core/http/HttpResult$Success;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    check-cast p1, Lteam/opay/core/http/HttpResult$Success;

    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getOrNull()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lteam/opay/business/csc/api/CustomerPageIssuesResp;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 75
    .line 76
    invoke-static {v0, p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->i0(Lteam/opay/business/csc/main/CustomerServiceFragment;Lteam/opay/business/csc/api/CustomerPageIssuesResp;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 81
    .line 82
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->j0(Lteam/opay/business/csc/main/CustomerServiceFragment;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    iget-object v0, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 87
    .line 88
    invoke-virtual {v0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lteam/opay/core/http/HttpResult;->getApiError()Lteam/opay/core/http/arch/ApiError;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lteam/opay/core/http/arch/ApiError;->d()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    const/4 p1, 0x0

    .line 104
    :goto_1
    invoke-static {v0, p1}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lteam/opay/business/csc/main/CustomerServiceFragment$getCustomerIssues$1;->this$0:Lteam/opay/business/csc/main/CustomerServiceFragment;

    .line 108
    .line 109
    invoke-static {p1}, Lteam/opay/business/csc/main/CustomerServiceFragment;->j0(Lteam/opay/business/csc/main/CustomerServiceFragment;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1
.end method
