.class final Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PayrollAmountFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->p0(Ljava/lang/String;)V
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
    c = "team.opay.business.payroll.payroll.PayrollAmountFragment$getServiceById$1"
    f = "PayrollAmountFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $serviceId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;


# direct methods
.method public constructor <init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljava/lang/String;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment;",
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->$serviceId:Ljava/lang/String;

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

.method public static synthetic c(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/room/Service;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->invokeSuspend$lambda$1(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/room/Service;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/room/Service;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Y(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Lteam/opay/opb/transfer/bank/room/Service;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->Q(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lzkb;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lzkb;->i:Lteam/opay/core/widget/TextInputView;

    .line 11
    .line 12
    invoke-static {p0}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->S(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/opb/transfer/bank/room/Service;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lteam/opay/opb/transfer/bank/room/Service;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lteam/opay/core/widget/TextInputView;->setHintText(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
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
    new-instance p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->$serviceId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;-><init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;Ljava/lang/String;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment;->V(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)Lteam/opay/business/payroll/PayrollViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->$serviceId:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lteam/opay/business/payroll/PayrollViewModel;->A(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$getServiceById$1;->this$0:Lteam/opay/business/payroll/payroll/PayrollAmountFragment;

    .line 30
    .line 31
    new-instance v2, Lteam/opay/business/payroll/payroll/a;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lteam/opay/business/payroll/payroll/a;-><init>(Lteam/opay/business/payroll/payroll/PayrollAmountFragment;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$c;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lteam/opay/business/payroll/payroll/PayrollAmountFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method
