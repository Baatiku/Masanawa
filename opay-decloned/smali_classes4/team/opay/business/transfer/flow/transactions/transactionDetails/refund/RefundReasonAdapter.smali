.class public final Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RefundReasonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR0\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R0\u0010)\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010 \u001a\u0004\u0008\'\u0010\"\"\u0004\u0008(\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;",
        "<init>",
        "()V",
        "",
        "Lteam/opay/business/transfer/flow/api/RefundInfo;",
        "list",
        "",
        "q",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "n",
        "(Landroid/view/ViewGroup;I)Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;",
        "holder",
        "position",
        "l",
        "(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;I)V",
        "getItemCount",
        "()I",
        "",
        "a",
        "Ljava/util/List;",
        "infoList",
        "b",
        "Lteam/opay/business/transfer/flow/api/RefundInfo;",
        "other",
        "Lkotlin/Function1;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getOnItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "p",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onItemClick",
        "d",
        "getAfterTextChanged",
        "o",
        "afterTextChanged",
        "business-transfer-flow_release"
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/business/transfer/flow/api/RefundInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 12
    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "other"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    const-string v4, "other"

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-direct/range {v1 .. v7}, Lteam/opay/business/transfer/flow/api/RefundInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->b:Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic k(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;ILteam/opay/business/transfer/flow/api/RefundInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->m(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;ILteam/opay/business/transfer/flow/api/RefundInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;ILteam/opay/business/transfer/flow/api/RefundInfo;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Lteam/opay/business/transfer/flow/api/RefundInfo;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, -0x1

    .line 38
    :goto_1
    if-eq v1, p1, :cond_3

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lteam/opay/business/transfer/flow/api/RefundInfo;->e(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p2, v0}, Lteam/opay/business/transfer/flow/api/RefundInfo;->e(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    iget-object p0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;I)V
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 13
    .line 14
    new-instance v1, Lajc;

    .line 15
    .line 16
    invoke-direct {v1, p0, p2}, Lajc;-><init>(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->j(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->i(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;->f(ILteam/opay/business/transfer/flow/api/RefundInfo;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 7
    .line 8
    sget v0, Lteam/opay/business/transfer/flow/R$layout;->flow_item_refund:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v0, v3, v1, v2}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p1}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public final o(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->l(Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->n(Landroid/view/ViewGroup;I)Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/ReasonViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/RefundInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->a:Ljava/util/List;

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/refund/RefundReasonAdapter;->b:Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
