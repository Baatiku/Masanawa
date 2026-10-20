.class public final Lteam/opay/pay/settings/PaymentInstrumentAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "PaymentInstrumentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lteam/opay/core/api/b;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR6\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/settings/PaymentInstrumentAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lteam/opay/core/api/b;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lkotlin/Function1;",
        "",
        "removeClickListener",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "helper",
        "item",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/b;)V",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "",
        "value",
        "b",
        "Ljava/util/List;",
        "getInstruments",
        "()Ljava/util/List;",
        "n",
        "(Ljava/util/List;)V",
        "instruments",
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
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/core/api/b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lteam/opay/core/api/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/core/api/b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "removeClickListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lteam/opay/pay/R$layout;->payment_instrument_item:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->b:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/settings/PaymentInstrumentAdapter;Lteam/opay/core/api/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->m(Lteam/opay/pay/settings/PaymentInstrumentAdapter;Lteam/opay/core/api/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/settings/PaymentInstrumentAdapter;Lteam/opay/core/api/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/api/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/api/b;)V
    .locals 9
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    sget v1, Lteam/opay/pay/R$id;->payment_type_image:I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getView(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v3, v1

    .line 25
    check-cast v3, Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-interface {p2}, Lteam/opay/core/api/b;->getIcon()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget v5, Lteam/opay/pay/R$mipmap;->bank_default_icon:I

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget v1, Lteam/opay/pay/R$id;->remove_button:I

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lafb;

    .line 49
    .line 50
    invoke-direct {v2, p0, p2}, Lafb;-><init>(Lteam/opay/pay/settings/PaymentInstrumentAdapter;Lteam/opay/core/api/b;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    sget v1, Lteam/opay/pay/R$id;->payment_item_name:I

    .line 57
    .line 58
    invoke-interface {p2}, Lteam/opay/core/api/b;->getBankName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 63
    .line 64
    .line 65
    sget v2, Lteam/opay/pay/R$id;->payment_item_number:I

    .line 66
    .line 67
    invoke-interface {p2}, Lteam/opay/core/api/b;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    sget-object v4, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 72
    .line 73
    if-ne v3, v4, :cond_0

    .line 74
    .line 75
    invoke-interface {p2}, Lteam/opay/core/api/b;->getBankAccountNumber()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p2}, Lteam/opay/core/api/b;->getCardNumber()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 85
    .line 86
    .line 87
    sget v3, Lteam/opay/pay/R$id;->payment_item_info:I

    .line 88
    .line 89
    invoke-interface {p2}, Lteam/opay/core/api/b;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-ne v5, v4, :cond_1

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v4, Lteam/opay/pay/R$string;->add_payment_suffix_account:I

    .line 100
    .line 101
    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget v4, Lteam/opay/pay/R$string;->add_payment_suffix_card:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :goto_2
    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 114
    .line 115
    .line 116
    invoke-interface {p2}, Lteam/opay/core/api/b;->getCardStatus()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v4, "I"

    .line 121
    .line 122
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    invoke-interface {p2}, Lteam/opay/core/api/b;->getPayStatus()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    sget-object v0, Lteam/opay/pay/cashier/BindCardAccountOrderPayStatus;->FAILED:Lteam/opay/pay/cashier/BindCardAccountOrderPayStatus;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_2

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_2
    const/4 p2, 0x0

    .line 150
    goto :goto_4

    .line 151
    :cond_3
    :goto_3
    const/4 p2, 0x1

    .line 152
    :goto_4
    sget v0, Lteam/opay/pay/R$id;->status_tv:I

    .line 153
    .line 154
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 155
    .line 156
    .line 157
    if-eqz p2, :cond_4

    .line 158
    .line 159
    const/high16 p2, 0x3f000000    # 0.5f

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 163
    .line 164
    :goto_5
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v2, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setAlpha(IF)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lteam/opay/core/api/b;",
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
    iput-object p1, p0, Lteam/opay/pay/settings/PaymentInstrumentAdapter;->b:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
