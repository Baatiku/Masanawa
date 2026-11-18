.class public final Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewPdfDetailAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B#\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "receiptResponse",
        "",
        "transactionReceiptShowText",
        "",
        "fromShare",
        "<init>",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;Ljava/lang/String;Z)V",
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
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;",
        "b",
        "Ljava/lang/String;",
        "c",
        "Z",
        "d",
        "I",
        "listSize",
        "e",
        "Companion",
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


# static fields
.field public static final e:Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->e:Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "receiptResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->a:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->c:Z

    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;-><init>(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->d:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    :goto_0
    return v0
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
    instance-of v0, p1, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;

    .line 11
    .line 12
    iget-object p2, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->a:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;->b(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v0, p1, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->a:Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptResponse;->d()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;

    .line 37
    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    check-cast p1, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->a(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    return-void

    .line 48
    :cond_3
    instance-of p2, p1, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;

    .line 49
    .line 50
    if-eqz p2, :cond_4

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
    :cond_4
    :goto_1
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
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p2, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, p1, v1}, Ll0f;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ll0f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "inflate(...)"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->c:Z

    .line 33
    .line 34
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;-><init>(Ll0f;Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p2, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;

    .line 39
    .line 40
    sget v0, Lteam/opay/pay/R$layout;->transaction_pdf_bottom_list_item:I

    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->b:Ljava/lang/String;

    .line 47
    .line 48
    iget-boolean v1, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->c:Z

    .line 49
    .line 50
    invoke-direct {p2, p1, v0, v1}, Lteam/opay/pay/history/details/pdf/PdfBottomViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p2, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;

    .line 55
    .line 56
    sget v0, Lteam/opay/pay/R$layout;->transaction_new_pdf_title_list_item:I

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfDetailAdapter;->c:Z

    .line 63
    .line 64
    invoke-direct {p2, p1, v0}, Lteam/opay/pay/history/details/pdf/NewPdfTitleViewHolder;-><init>(Landroid/view/View;Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-object p2
.end method
