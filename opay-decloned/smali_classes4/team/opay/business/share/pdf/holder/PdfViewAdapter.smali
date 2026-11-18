.class public final Lteam/opay/business/share/pdf/holder/PdfViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PdfViewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lteam/opay/core/common/internal/AdapterViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R6\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/share/pdf/holder/PdfViewAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lteam/opay/core/common/internal/AdapterViewHolder;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "l",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;",
        "holder",
        "position",
        "",
        "k",
        "(Lteam/opay/core/common/internal/AdapterViewHolder;I)V",
        "getItemCount",
        "()I",
        "getItemViewType",
        "(I)I",
        "",
        "Lteam/opay/business/share/api/PdfDetailData;",
        "value",
        "a",
        "Ljava/util/List;",
        "getDataList",
        "()Ljava/util/List;",
        "setDataList",
        "(Ljava/util/List;)V",
        "dataList",
        "business-share_release"
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/business/share/api/PdfDetailData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->a:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->a:Ljava/util/List;

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
    iget-object v0, p0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/business/share/api/PdfDetailData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/business/share/api/PdfDetailData;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public k(Lteam/opay/core/common/internal/AdapterViewHolder;I)V
    .locals 2
    .param p1    # Lteam/opay/core/common/internal/AdapterViewHolder;
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
    iget-object v0, p0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lteam/opay/business/share/api/PdfDetailData;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->getItemViewType(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfBottomHolder;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfBottomHolder;->a(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfCashbackHolder;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfCashbackHolder;->b(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfImageHolder;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfImageHolder;->b(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_3
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;->e(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_4
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfTextHolder;

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfTextHolder;->b(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_5
    check-cast p1, Lteam/opay/business/share/pdf/holder/PdfLogoHolder;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lteam/opay/business/share/pdf/holder/PdfLogoHolder;->b(ILteam/opay/business/share/api/PdfDetailData;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;
    .locals 4
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
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;

    .line 13
    .line 14
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_body:I

    .line 15
    .line 16
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;-><init>(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfBottomHolder;

    .line 25
    .line 26
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_bottom:I

    .line 27
    .line 28
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfBottomHolder;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfCashbackHolder;

    .line 37
    .line 38
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_cashback:I

    .line 39
    .line 40
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfCashbackHolder;-><init>(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_2
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfImageHolder;

    .line 49
    .line 50
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_image:I

    .line 51
    .line 52
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfImageHolder;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_3
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;

    .line 61
    .line 62
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_body:I

    .line 63
    .line 64
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfBodyHolder;-><init>(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_4
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfTextHolder;

    .line 73
    .line 74
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_text:I

    .line 75
    .line 76
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfTextHolder;-><init>(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_5
    new-instance p2, Lteam/opay/business/share/pdf/holder/PdfLogoHolder;

    .line 85
    .line 86
    sget v3, Lteam/opay/business/share/R$layout;->share_item_pdf_logo:I

    .line 87
    .line 88
    invoke-static {p1, v3, v2, v1, v0}, Let;->r(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Lteam/opay/business/share/pdf/holder/PdfLogoHolder;-><init>(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-object p2

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/AdapterViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->k(Lteam/opay/core/common/internal/AdapterViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->l(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/AdapterViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final setDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/business/share/api/PdfDetailData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
