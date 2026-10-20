.class public final Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;
.super Landroidx/paging/PagingDataAdapter;
.source "LargeTransfersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataAdapter<",
        "Lteam/opay/sme/va/api/TransferDetail;",
        "Lteam/opay/core/common/internal/BindingViewHolder<",
        "Ljyd;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000e\u001a\r\u0012\t\u0012\u00070\u0004\u00a2\u0006\u0002\u0008\r0\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0011\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;",
        "Landroidx/paging/PagingDataAdapter;",
        "Lteam/opay/sme/va/api/TransferDetail;",
        "Lteam/opay/core/common/internal/BindingViewHolder;",
        "Ljyd;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "w",
        "(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;",
        "holder",
        "position",
        "",
        "u",
        "(Lteam/opay/core/common/internal/BindingViewHolder;I)V",
        "e",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "sme-va_release"
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
.field public final e:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/a;->a()Lteam/opay/sme/va/receive/staticAccount/largeTransfer/a$a;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v1 .. v6}, Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic t(Lteam/opay/sme/va/api/TransferDetail;Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->v(Lteam/opay/sme/va/api/TransferDetail;Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final v(Lteam/opay/sme/va/api/TransferDetail;Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment;->w:Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/sme/va/api/TransferDetail;->getOrderNo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;->b(Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment$Companion;Ljava/lang/String;ZIILjava/lang/Object;)Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransferDetailFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v0, p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-static {v0}, Lre6;->f(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lteam/opay/core/common/base/BaseFragment;->setPreFragment(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "requireActivity(...)"

    .line 31
    .line 32
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget v1, Lteam/opay/sme/va/R$id;->fragment_container:I

    .line 36
    .line 37
    invoke-static {p1, v1, p0, v0}, Lre6;->c(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->u(Lteam/opay/core/common/internal/BindingViewHolder;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->w(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u(Lteam/opay/core/common/internal/BindingViewHolder;I)V
    .locals 7
    .param p1    # Lteam/opay/core/common/internal/BindingViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Ljyd;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "holder"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/paging/PagingDataAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lteam/opay/sme/va/api/TransferDetail;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljyd;

    .line 21
    .line 22
    iget-object v2, v1, Ljyd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    new-instance v3, Lteam/opay/core/common/amount/MoneyAmount;

    .line 25
    .line 26
    invoke-virtual {p2}, Lteam/opay/sme/va/api/TransferDetail;->getAmount()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-direct {v3, v4, v6, v5, v6}, Lteam/opay/core/common/amount/MoneyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v6, v0, v6}, Lteam/opay/core/common/amount/MoneyAmount;->toText$default(Lteam/opay/core/common/amount/MoneyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Ljyd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iget-object v3, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    sget v4, Lteam/opay/sme/va/R$string;->sme_va_from_title:I

    .line 47
    .line 48
    invoke-virtual {p2}, Lteam/opay/sme/va/api/TransferDetail;->getAccountName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    aput-object v5, v0, v6

    .line 60
    .line 61
    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lteam/opay/sme/va/api/TransferDetail;->getOrderStatus()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const v3, -0x7946112a

    .line 79
    .line 80
    .line 81
    if-eq v2, v3, :cond_6

    .line 82
    .line 83
    const v3, 0x21c1577

    .line 84
    .line 85
    .line 86
    if-eq v2, v3, :cond_4

    .line 87
    .line 88
    const v3, 0x72baa908

    .line 89
    .line 90
    .line 91
    if-eq v2, v3, :cond_2

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_2
    const-string v2, "ACCEPT"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iget-object v2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 107
    .line 108
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_status_accepted:I

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    const-string v2, "#1DCE9F"

    .line 120
    .line 121
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    sget v1, Lteam/opay/sme/va/R$drawable;->sme_va_shape_1dcf9f_4:I

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    const-string v2, "PENDING"

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    iget-object v2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 148
    .line 149
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_transaction_pending:I

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    const-string v2, "#FF9100"

    .line 161
    .line 162
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    sget v1, Lteam/opay/sme/va/R$drawable;->sme_va_shape_fff8e1_4:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    const-string v2, "DECLINE"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_7

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_7
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    iget-object v2, p0, Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;->e:Landroidx/fragment/app/Fragment;

    .line 189
    .line 190
    sget v3, Lteam/opay/sme/va/R$string;->sme_va_status_declined:I

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    const-string v2, "#DC0C48"

    .line 202
    .line 203
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v1, Ljyd;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    sget v1, Lteam/opay/sme/va/R$drawable;->sme_va_shape_fce2e8_4:I

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 215
    .line 216
    .line 217
    :cond_8
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 218
    .line 219
    const-string v0, "itemView"

    .line 220
    .line 221
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance v0, Lma8;

    .line 225
    .line 226
    invoke-direct {v0, p2, p0}, Lma8;-><init>(Lteam/opay/sme/va/api/TransferDetail;Lteam/opay/sme/va/receive/staticAccount/largeTransfer/LargeTransfersAdapter;)V

    .line 227
    .line 228
    .line 229
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method public w(Landroid/view/ViewGroup;I)Lteam/opay/core/common/internal/BindingViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Ljyd;",
            ">;"
        }
    .end annotation

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
    new-instance p2, Lteam/opay/core/common/internal/BindingViewHolder;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Ljyd;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljyd;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lteam/opay/core/common/internal/BindingViewHolder;-><init>(Lxyf;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method
