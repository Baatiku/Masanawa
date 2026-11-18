.class public final Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PdfDetailAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "",
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "list",
        "",
        "transactionReceiptShowText",
        "",
        "fromShare",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Z)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "position",
        "",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V",
        "getItemViewType",
        "(I)I",
        "getItemCount",
        "()I",
        "a",
        "Ljava/util/List;",
        "getList",
        "()Ljava/util/List;",
        "b",
        "Ljava/lang/String;",
        "c",
        "Z",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/details/BaseTransactionDetail;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/pay/history/details/BaseTransactionDetail;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->a:Ljava/util/List;

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

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/pay/history/details/BaseTransactionDetail;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/pay/history/details/BaseTransactionDetail;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lteam/opay/pay/history/details/BaseTransactionDetail;

    .line 13
    .line 14
    instance-of v0, p1, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "null cannot be cast to non-null type team.opay.pay.history.details.TransactionTitle2"

    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p2, Lteam/opay/pay/history/details/TransactionTitle2;

    .line 24
    .line 25
    check-cast p1, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->b(Lteam/opay/pay/history/details/TransactionTitle2;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, p1, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "null cannot be cast to non-null type team.opay.pay.history.details.TransactionBody"

    .line 36
    .line 37
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast p2, Lteam/opay/pay/history/details/TransactionBody;

    .line 41
    .line 42
    check-cast p1, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;->a(Lteam/opay/pay/history/details/TransactionBody;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    instance-of p2, p1, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    check-cast p1, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;->a(Lteam/opay/pay/history/details/TransactionBody;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;

    .line 17
    .line 18
    sget v0, Lteam/opay/pay/R$layout;->transaction_detail_body_list_item:I

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->c:Z

    .line 25
    .line 26
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;-><init>(Landroid/view/View;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;

    .line 31
    .line 32
    sget v0, Lteam/opay/pay/R$layout;->transaction_pdf_bottom_list_item:I

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->b:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v1, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->c:Z

    .line 41
    .line 42
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;

    .line 47
    .line 48
    sget v0, Lteam/opay/pay/R$layout;->transaction_pdf_body_list_item:I

    .line 49
    .line 50
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->c:Z

    .line 55
    .line 56
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/pdf/PdfBodyViewHolder;-><init>(Landroid/view/View;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;

    .line 61
    .line 62
    sget v0, Lteam/opay/pay/R$layout;->transaction_pdf_title_list_item:I

    .line 63
    .line 64
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/PdfDetailAdapter;->c:Z

    .line 69
    .line 70
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;-><init>(Landroid/view/View;Z)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-object p2
.end method
