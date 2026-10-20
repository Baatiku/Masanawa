.class final Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContactTransferDispatchViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->q(Lag8;Lkotlin/jvm/functions/Function0;)V
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
    c = "team.opay.pay.transfer.contact.sendmoney.touser.ContactTransferDispatchViewModel$collectData$1"
    f = "ContactTransferDispatchViewModel.kt"
    l = {
        0x1b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onDataCollected:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $owner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;


# direct methods
.method public constructor <init>(Lag8;Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;Lkotlin/jvm/functions/Function0;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$owner:Lag8;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$owner:Lag8;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 6
    .line 7
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;-><init>(Lag8;Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;Lkotlin/jvm/functions/Function0;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->label:I

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
    sget-object p1, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 28
    .line 29
    invoke-virtual {p1}, Lteam/opay/core/android/DataDispatchRepository$Companion;->a()Lteam/opay/core/android/DataDispatchRepository;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lteam/opay/core/android/DataDispatchRepository;->d()Lp3e;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Ly86;->w(Lv56;)Lv56;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$owner:Lag8;

    .line 42
    .line 43
    invoke-interface {v1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 48
    .line 49
    invoke-static {p1, v1, v3}, Landroidx/lifecycle/FlowExtKt;->a(Lv56;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;)Lv56;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput v2, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->label:I

    .line 54
    .line 55
    invoke-static {p1, p0}, Ly86;->z(Lv56;Ljr2;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    :goto_0
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 63
    .line 64
    sget-object v0, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 65
    .line 66
    invoke-virtual {v0}, Lteam/opay/core/android/DataDispatchRepository$Companion;->a()Lteam/opay/core/android/DataDispatchRepository;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lteam/opay/core/android/DataDispatchRepository;->c()V

    .line 71
    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->s(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->this$0:Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;

    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel;->r()Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/sendmoney/touser/ContactTransferDispatchViewModel$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method
