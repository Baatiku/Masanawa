.class public final Lteam/opay/pay/payment/electricity/BundleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ElectricityBundlesAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lteam/opay/pay/payment/electricity/BundleViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lwoe;",
        "binding",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/payment/electricity/PanelItem;",
        "",
        "onItemSelected",
        "<init>",
        "(Lwoe;Lkotlin/jvm/functions/Function1;)V",
        "item",
        "b",
        "(Lteam/opay/pay/payment/electricity/PanelItem;)V",
        "a",
        "Lwoe;",
        "d",
        "()Lwoe;",
        "Lkotlin/jvm/functions/Function1;",
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
.field public final a:Lwoe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwoe;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lwoe;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwoe;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/payment/electricity/PanelItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lwoe;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lwoe;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/payment/electricity/BundleViewHolder;-><init>(Lwoe;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/payment/electricity/BundleViewHolder;Lteam/opay/pay/payment/electricity/PanelItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/payment/electricity/BundleViewHolder;->c(Lteam/opay/pay/payment/electricity/BundleViewHolder;Lteam/opay/pay/payment/electricity/PanelItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/payment/electricity/BundleViewHolder;Lteam/opay/pay/payment/electricity/PanelItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/payment/electricity/PanelItem;)V
    .locals 11
    .param p1    # Lteam/opay/pay/payment/electricity/PanelItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "item"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 11
    .line 12
    iget-object v3, v3, Lwoe;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    const/16 v4, 0x48

    .line 15
    .line 16
    invoke-static {v4}, Ljmf;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinHeight(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 24
    .line 25
    iget-object v3, v3, Lwoe;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    const-string v4, ""

    .line 38
    .line 39
    :cond_0
    invoke-static {v4}, Ljmf;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->f()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v9, 0x4

    .line 51
    const/4 v10, 0x0

    .line 52
    const-string v6, ".00"

    .line 53
    .line 54
    const-string v7, ""

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v5, v3

    .line 58
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v1}, Lkotlin/text/StringsKt;->A1(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-ne v3, v0, :cond_1

    .line 77
    .line 78
    sget v3, Lteam/opay/pay/R$string;->label_pay_amount_no_space:I

    .line 79
    .line 80
    new-array v5, v0, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v4, v5, v1

    .line 83
    .line 84
    invoke-static {v3, v5}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :cond_1
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 89
    .line 90
    iget-object v3, v3, Lwoe;->b:Landroid/widget/TextView;

    .line 91
    .line 92
    sget v5, Lteam/opay/pay/R$string;->osdk_electricity_payment_pay_amount:I

    .line 93
    .line 94
    new-array v6, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v4, v6, v1

    .line 97
    .line 98
    invoke-static {v5, v6}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 106
    .line 107
    iget-object v3, v3, Lwoe;->c:Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->d()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    iget-object v3, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 119
    .line 120
    iget-object v3, v3, Lwoe;->c:Landroid/widget/TextView;

    .line 121
    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-lez v4, :cond_3

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-static {v3, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->e()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 149
    .line 150
    :goto_1
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->e()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lteam/opay/pay/payment/electricity/PanelItem;->e()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 165
    .line 166
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 167
    .line 168
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    check-cast v1, Landroid/view/ViewGroup;

    .line 172
    .line 173
    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->a(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lil1;

    .line 201
    .line 202
    invoke-direct {v0, p0, p1}, Lil1;-><init>(Lteam/opay/pay/payment/electricity/BundleViewHolder;Lteam/opay/pay/payment/electricity/PanelItem;)V

    .line 203
    .line 204
    .line 205
    const-wide/16 v3, 0x320

    .line 206
    .line 207
    invoke-static {v2, v3, v4, v0}, Lfe1;->a(Landroid/view/View;JLkotlin/jvm/functions/Function0;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final d()Lwoe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/electricity/BundleViewHolder;->a:Lwoe;

    .line 2
    .line 3
    return-object v0
.end method
