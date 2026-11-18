.class public Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BasePdfTitleViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u000bR\u001c\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0014\u001a\n \r*\u0004\u0018\u00010\u00110\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0016\u001a\n \r*\u0004\u0018\u00010\u00110\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0013R\u001c\u0010\u0018\u001a\n \r*\u0004\u0018\u00010\u00110\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0013R\u001c\u0010\u001a\u001a\n \r*\u0004\u0018\u00010\u00110\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "",
        "fromShare",
        "<init>",
        "(Landroid/view/View;Z)V",
        "",
        "a",
        "()V",
        "Z",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "b",
        "Landroid/widget/ImageView;",
        "logo",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "title_name",
        "d",
        "details_value",
        "e",
        "transaction_status",
        "f",
        "transaction_date",
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
.field public final a:Z

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 10
    .line 11
    sget p2, Lteam/opay/pay/R$id;->logo:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/widget/ImageView;

    .line 18
    .line 19
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->b:Landroid/widget/ImageView;

    .line 20
    .line 21
    sget p2, Lteam/opay/pay/R$id;->title_name:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->c:Landroid/widget/TextView;

    .line 30
    .line 31
    sget p2, Lteam/opay/pay/R$id;->details_value:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    sget p2, Lteam/opay/pay/R$id;->transaction_status:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->e:Landroid/widget/TextView;

    .line 50
    .line 51
    sget p2, Lteam/opay/pay/R$id;->transaction_date:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->f:Landroid/widget/TextView;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->b:Landroid/widget/ImageView;

    .line 4
    .line 5
    iget-boolean v2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget v2, Lteam/opay/pay/R$mipmap;->transaction_evidence_opay_logo:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v2, Lteam/opay/pay/R$mipmap;->opay_logo_with_words:I

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->c:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 31
    .line 32
    :goto_1
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_00b876:I

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    sget v3, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 53
    .line 54
    :goto_2
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 68
    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    sget v3, Lteam/opay/pay/R$color;->black_85:I

    .line 75
    .line 76
    :goto_3
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->f:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-boolean v2, p0, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a:Z

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    sget v2, Lteam/opay/pay/R$color;->transaction_evidence_black_45:I

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    sget v2, Lteam/opay/pay/R$color;->black_45:I

    .line 97
    .line 98
    :goto_4
    invoke-static {v0, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
