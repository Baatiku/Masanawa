.class public final Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NewPdfBodyViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Ll0f;",
        "binding",
        "",
        "fromShare",
        "<init>",
        "(Ll0f;Z)V",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;",
        "receipt",
        "",
        "a",
        "(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;)V",
        "Ll0f;",
        "getBinding",
        "()Ll0f;",
        "b",
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
.field public final a:Ll0f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Ll0f;Z)V
    .locals 1
    .param p1    # Ll0f;
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
    invoke-virtual {p1}, Ll0f;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->a:Ll0f;

    .line 14
    .line 15
    iput-boolean p2, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->b:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;)V
    .locals 6
    .param p1    # Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "receipt"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->a:Ll0f;

    .line 9
    .line 10
    iget-object v1, v1, Ll0f;->c:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v3, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->b:Z

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    sget v3, Lteam/opay/pay/R$color;->transaction_evidence_black_45:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v3, Lteam/opay/pay/R$color;->black_45:I

    .line 31
    .line 32
    :goto_0
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
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->a:Ll0f;

    .line 40
    .line 41
    iget-object v1, v1, Ll0f;->d:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 64
    :goto_2
    xor-int/2addr v2, v4

    .line 65
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;->c()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-boolean v5, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->b:Z

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    sget v5, Lteam/opay/pay/R$color;->transaction_evidence_black_85:I

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    sget v5, Lteam/opay/pay/R$color;->black_85:I

    .line 87
    .line 88
    :goto_3
    invoke-static {v2, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->a:Ll0f;

    .line 96
    .line 97
    iget-object v1, v1, Ll0f;->b:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_4

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_5

    .line 113
    .line 114
    :cond_4
    const/4 v3, 0x1

    .line 115
    :cond_5
    xor-int/lit8 v2, v3, 0x1

    .line 116
    .line 117
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$ReceiptEntity;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-boolean v0, p0, Lteam/opay/pay/history/details/pdf/NewPdfBodyViewHolder;->b:Z

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    sget v0, Lteam/opay/pay/R$color;->transaction_evidence_black_65:I

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    sget v0, Lteam/opay/pay/R$color;->black_65:I

    .line 139
    .line 140
    :goto_4
    invoke-static {p1, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
