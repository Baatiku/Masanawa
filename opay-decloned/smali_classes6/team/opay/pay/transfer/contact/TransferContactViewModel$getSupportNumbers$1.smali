.class final Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/TransferContactViewModel;->H0(Lag8;Lkotlin/jvm/functions/Function0;)V
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
    c = "team.opay.pay.transfer.contact.TransferContactViewModel$getSupportNumbers$1"
    f = "TransferContactViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hasSend:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $lifecycleOwner:Lag8;

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/TransferContactViewModel;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transfer/contact/TransferContactViewModel;",
            "Lag8;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->this$0:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$lifecycleOwner:Lag8;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$hasSend:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->invokeSuspend$lambda$0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->R(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactViewModel;->R(Lteam/opay/pay/transfer/contact/TransferContactViewModel;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 30
    .line 31
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 6
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
    new-instance p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->this$0:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$hasSend:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lag8;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljr2;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/pay/transfer/ContactsQueryConfig;->Companion:Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->this$0:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v0, v3, v1, v2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->h(Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;Landroidx/lifecycle/AndroidViewModel;ZILjava/lang/Object;)Lv56;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v8, 0x3

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    .line 27
    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/FlowLiveDataConversions;->c(Lv56;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$lifecycleOwner:Lag8;

    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->this$0:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 34
    .line 35
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$hasSend:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->$callback:Lkotlin/jvm/functions/Function0;

    .line 38
    .line 39
    new-instance v4, Lteam/opay/pay/transfer/contact/a;

    .line 40
    .line 41
    invoke-direct {v4, v1, v2, v3}, Lteam/opay/pay/transfer/contact/a;-><init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v4}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method
