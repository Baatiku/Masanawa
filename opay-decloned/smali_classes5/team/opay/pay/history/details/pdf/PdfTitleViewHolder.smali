.class public final Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;
.super Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;
.source "PdfTitleViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0014\u001a\u00020\u000f8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000f8\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0011\u001a\u0004\u0008\u0016\u0010\u0013R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;",
        "Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;",
        "Landroid/view/View;",
        "itemView",
        "",
        "fromShare",
        "<init>",
        "(Landroid/view/View;Z)V",
        "Lteam/opay/pay/history/details/TransactionTitle2;",
        "transactionDetail",
        "",
        "b",
        "(Lteam/opay/pay/history/details/TransactionTitle2;)V",
        "g",
        "Z",
        "",
        "h",
        "Ljava/lang/String;",
        "getFLOWTYPE_IN",
        "()Ljava/lang/String;",
        "FLOWTYPE_IN",
        "i",
        "getFLOWTYPE_OUT",
        "FLOWTYPE_OUT",
        "Lp0f;",
        "j",
        "Lp0f;",
        "binding",
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
.field public final g:Z

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lp0f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;-><init>(Landroid/view/View;Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->g:Z

    .line 10
    .line 11
    const-string p2, "IN"

    .line 12
    .line 13
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->h:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "OUT"

    .line 16
    .line 17
    iput-object p2, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->i:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lp0f;->bind(Landroid/view/View;)Lp0f;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "bind(...)"

    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final b(Lteam/opay/pay/history/details/TransactionTitle2;)V
    .locals 6
    .param p1    # Lteam/opay/pay/history/details/TransactionTitle2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "transactionDetail"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/history/details/pdf/BasePdfTitleViewHolder;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 10
    .line 11
    iget-object v0, v0, Lp0f;->b:Landroidx/constraintlayout/widget/Group;

    .line 12
    .line 13
    const-string v1, "dateGroup"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getDate()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getDate()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 37
    .line 38
    iget-object v0, v0, Lp0f;->h:Landroid/widget/TextView;

    .line 39
    .line 40
    sget-object v1, Ld1f;->a:Ld1f;

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getDate()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    :goto_1
    const-wide/16 v4, 0x3e8

    .line 64
    .line 65
    mul-long v2, v2, v4

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-static {v1}, Lale;->b(Ljava/util/Date;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    const/4 v1, 0x0

    .line 83
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getHeadAmount()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 93
    .line 94
    iget-object v0, v0, Lp0f;->i:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getHeadAmount()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getFlowType()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v2, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->h:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    const-string v1, "+"

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->i:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    const-string v1, "-"

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    const-string v1, ""

    .line 127
    .line 128
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 132
    .line 133
    iget-object v0, v0, Lp0f;->c:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getHeadAmount()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getStatus()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    iget-object v0, p0, Lteam/opay/pay/history/details/pdf/PdfTitleViewHolder;->j:Lp0f;

    .line 153
    .line 154
    iget-object v0, v0, Lp0f;->j:Landroid/widget/TextView;

    .line 155
    .line 156
    invoke-virtual {p1}, Lteam/opay/pay/history/details/TransactionTitle2;->getStatus()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionEntity;->getValue()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    return-void
.end method
