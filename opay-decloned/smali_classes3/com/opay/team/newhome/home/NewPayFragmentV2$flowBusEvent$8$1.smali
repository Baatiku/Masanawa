.class final Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NewPayFragmentV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8;->emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
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
    c = "com.opay.team.newhome.home.NewPayFragmentV2$flowBusEvent$8$1"
    f = "NewPayFragmentV2.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/team/newhome/home/NewPayFragmentV2;",
            "Ljr2<",
            "-",
            "Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

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

.method public static synthetic c(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->invokeSuspend$lambda$1(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->lookupLatestTransactions$default(Lcom/opay/team/newhome/home/NewPayFragmentV2;ZILjava/lang/Object;)V

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
    new-instance p1, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;-><init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getHomeSetting(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/home/HomeSettingsStorage;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/opay/team/home/HomeSettingsStorage;->h()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 v0, 0x2

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {p1, v2, v1, v0, v1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->refreshBills$default(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lteam/opay/core/settings/SettingsStorage;->u()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getViewModel(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel;->l0()Lteam/opay/pay/transaction/LastTransactionList;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lteam/opay/pay/transaction/LastTransactionList;->getTransactionInfos()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 81
    .line 82
    invoke-static {v2, p1, v1, v0, v1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->refreshBills$default(Lcom/opay/team/newhome/home/NewPayFragmentV2;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object p1, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/opay/team/newhome/home/NewPayFragmentV2;->access$getBinding(Lcom/opay/team/newhome/home/NewPayFragmentV2;)Ltia;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Ltia;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/opay/team/newhome/home/NewPayFragmentV2$flowBusEvent$8$1;->this$0:Lcom/opay/team/newhome/home/NewPayFragmentV2;

    .line 96
    .line 97
    new-instance v1, Lcom/opay/team/newhome/home/a;

    .line 98
    .line 99
    invoke-direct {v1, v0}, Lcom/opay/team/newhome/home/a;-><init>(Lcom/opay/team/newhome/home/NewPayFragmentV2;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    invoke-static {p1}, Ldf1;->a(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method
