.class final Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TransferContactFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "team.opay.pay.transfer.contact.view.TransferContactFragment$onViewCreated$2$1$1"
    f = "TransferContactFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $position:I

.field label:I

.field final synthetic this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;


# direct methods
.method public constructor <init>(ILteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->$position:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

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
    new-instance p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;

    .line 2
    .line 3
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->$position:I

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;-><init>(ILteam/opay/pay/transfer/contact/view/TransferContactFragment;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->$position:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmi6;

    .line 23
    .line 24
    iget-object p1, p1, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->$position:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->this$0:Lteam/opay/pay/transfer/contact/view/TransferContactFragment;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lmi6;

    .line 38
    .line 39
    iget-object p1, p1, Lmi6;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    .line 52
    iget v0, p0, Lteam/opay/pay/transfer/contact/view/TransferContactFragment$onViewCreated$2$1$1;->$position:I

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 56
    .line 57
    .line 58
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
