.class public final Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "CashBackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u00020\r*\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/business/transfer/flow/api/CashBackBean;",
        "Lz56;",
        "binding",
        "<init>",
        "(Lz56;)V",
        "",
        "position",
        "data",
        "",
        "d",
        "(ILteam/opay/business/transfer/flow/api/CashBackBean;)V",
        "",
        "operationType",
        "",
        "b",
        "(Ljava/lang/String;)Z",
        "c",
        "a",
        "Lz56;",
        "getBinding",
        "()Lz56;",
        "Ljava/util/Date;",
        "(Ljava/util/Date;)Ljava/lang/String;",
        "monthYearFormat",
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
.field public final a:Lz56;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz56;)V
    .locals 1
    .param p1    # Lz56;
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
    invoke-direct {p0, p1}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MMM, yyyy"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "format(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "PLUS"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "SUBTRACT"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public d(ILteam/opay/business/transfer/flow/api/CashBackBean;)V
    .locals 4
    .param p2    # Lteam/opay/business/transfer/flow/api/CashBackBean;
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
    iget-object p1, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 7
    .line 8
    iget-object p1, p1, Lz56;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->b()Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->c()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object p1, v0

    .line 48
    :goto_1
    if-nez p1, :cond_2

    .line 49
    .line 50
    move-object p1, v1

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->c(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 56
    .line 57
    iget-object v2, v2, Lz56;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    const-string v3, "sectionExpensesLabel"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 68
    .line 69
    iget-object v2, v2, Lz56;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->d()Lteam/opay/core/common/amount/MoneyAmount;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move-object p1, v0

    .line 95
    :goto_2
    if-nez p1, :cond_4

    .line 96
    .line 97
    move-object p1, v1

    .line 98
    :cond_4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->c()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    move-object p1, v0

    .line 113
    :goto_3
    if-nez p1, :cond_6

    .line 114
    .line 115
    move-object p1, v1

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->b(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 121
    .line 122
    iget-object v2, v2, Lz56;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    const-string v3, "sectionEarningsLabel"

    .line 125
    .line 126
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v2, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lteam/opay/business/transfer/flow/cashback/TitleViewHolder;->a:Lz56;

    .line 133
    .line 134
    iget-object v2, v2, Lz56;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v2, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Lteam/opay/business/transfer/flow/api/CashBackBean;->c()Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/CashBackMonthTitle;->a()Lteam/opay/core/common/amount/MoneyAmount;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Lteam/opay/core/common/amount/MoneyAmount;->toText(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :cond_7
    if-nez v0, :cond_8

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    move-object v1, v0

    .line 162
    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
