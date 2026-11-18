.class public final Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;
.super Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;
.source "TransactionDetailFaqHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;",
        "Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;",
        "Ldk7;",
        "binding",
        "<init>",
        "(Ldk7;)V",
        "",
        "position",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "data",
        "",
        "a",
        "(ILteam/opay/pay/history/details/BaseTransactionDetail;)V",
        "Ldk7;",
        "Lteam/opay/pay/history/details/holder/DetailFaqAdapter;",
        "b",
        "Lid8;",
        "d",
        "()Lteam/opay/pay/history/details/holder/DetailFaqAdapter;",
        "mAdapter",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ldk7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldk7;)V
    .locals 2
    .param p1    # Ldk7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ldk7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lteam/opay/pay/history/details/holder/TransactionDetailBaseHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->a:Ldk7;

    .line 19
    .line 20
    new-instance p1, Lpse;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lpse;-><init>(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->b:Lid8;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;)Lteam/opay/pay/history/details/holder/DetailFaqAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->e(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;)Lteam/opay/pay/history/details/holder/DetailFaqAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->f(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;)Lteam/opay/pay/history/details/holder/DetailFaqAdapter;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/holder/DetailFaqAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/history/details/holder/DetailFaqAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lqse;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lqse;-><init>(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final f(Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "null cannot be cast to non-null type team.opay.pay.history.UserTransactionsDetailRepository.FaqItem"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$FaqItem;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p2, "getContext(...)"

    .line 23
    .line 24
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$FaqItem;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const-string p1, ""

    .line 34
    .line 35
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public a(ILteam/opay/pay/history/details/BaseTransactionDetail;)V
    .locals 11
    .param p2    # Lteam/opay/pay/history/details/BaseTransactionDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p2, Lteam/opay/pay/history/details/DetailsFaq;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/pay/history/details/DetailsFaq;->getQuickFaq()Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->a:Ldk7;

    .line 13
    .line 14
    iget-object p2, p2, Ldk7;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->a:Ldk7;

    .line 28
    .line 29
    iget-object p2, p2, Ldk7;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->d()Lteam/opay/pay/history/details/holder/DetailFaqAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->d()Lteam/opay/pay/history/details/holder/DetailFaqAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;->a()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lteam/opay/pay/android/SpaceItemDecoration;

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    invoke-static {v0}, Ljmf;->d(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v9, 0x7c

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    move-object v1, p1

    .line 78
    invoke-direct/range {v1 .. v10}, Lteam/opay/pay/android/SpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final d()Lteam/opay/pay/history/details/holder/DetailFaqAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/holder/TransactionDetailFaqHolder;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/history/details/holder/DetailFaqAdapter;

    .line 8
    .line 9
    return-object v0
.end method
