.class final Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayrollFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "team.opay.business.payroll.payroll.PayrollFragment$onViewCreated$1$2$1"
    f = "PayrollFragment.kt"
    l = {
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/payroll/PayrollFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

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
    new-instance p1, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;-><init>(Lteam/opay/business/payroll/payroll/PayrollFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->label:I

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
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lteam/opay/business/payroll/payroll/PayrollFragment;->Y(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    iget-object v3, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 40
    .line 41
    invoke-static {v3}, Lteam/opay/business/payroll/payroll/PayrollFragment;->Z(Lteam/opay/business/payroll/payroll/PayrollFragment;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollFragment;

    .line 46
    .line 47
    invoke-static {v4}, Lteam/opay/business/payroll/payroll/PayrollFragment;->b0(Lteam/opay/business/payroll/payroll/PayrollFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lteam/opay/business/payroll/PayrollViewModel;->y()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    iput v2, p0, Lteam/opay/business/payroll/payroll/PayrollFragment$onViewCreated$1$2$1;->label:I

    .line 58
    .line 59
    invoke-virtual {v1, v3, v4, p0}, Lteam/opay/business/payroll/widget/HomeSearchAccountPopu;->d(Ljava/lang/String;Ljava/util/List;Ljr2;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-ne v1, v0, :cond_2

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    move-object v0, p1

    .line 67
    move-object p1, v1

    .line 68
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    move-object v5, v0

    .line 75
    move v0, p1

    .line 76
    move-object p1, v5

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_1
    invoke-static {p1, v0}, Lteam/opay/business/payroll/payroll/PayrollFragment;->c0(Lteam/opay/business/payroll/payroll/PayrollFragment;Z)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p1
.end method
