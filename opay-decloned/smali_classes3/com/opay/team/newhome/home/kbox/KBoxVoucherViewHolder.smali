.class public Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;
.super Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;
.source "KBoxVoucherViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;",
        "Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;",
        "Lrja;",
        "binding",
        "<init>",
        "(Lrja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "item",
        "",
        "o",
        "(ILcom/opay/team/newhome/reward/WidgetModule;)V",
        "Landroid/view/View;",
        "leftView",
        "rightView",
        "",
        "isBigTitle",
        "q",
        "(Landroid/view/View;Landroid/view/View;Z)V",
        "l",
        "(Lcom/opay/team/newhome/reward/WidgetModule;)V",
        "p",
        "c",
        "Lrja;",
        "getBinding",
        "()Lrja;",
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
.field public final c:Lrja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrja;)V
    .locals 2
    .param p1    # Lrja;
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
    invoke-virtual {p1}, Lrja;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "getRoot(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Lrja;->h:Landroid/view/View;

    .line 27
    .line 28
    const-string v1, "voucherLeftBg"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Lrja;->i:Landroid/view/View;

    .line 34
    .line 35
    const-string v1, "voucherRightBg"

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->q(Landroid/view/View;Landroid/view/View;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic j(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->n(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->m(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->p(Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final n(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->p(Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final l(Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 4
    .line 5
    iget-object v1, v1, Lrja;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const-string v2, "voucherUserNow"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ldo7;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1}, Ldo7;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Leo7;

    .line 24
    .line 25
    invoke-direct {v1, p0, p1}, Leo7;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public o(ILcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 9
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 7
    .line 8
    iget-object p1, p1, Lrja;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->i()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 23
    .line 24
    iget-object p1, p1, Lrja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->w()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 37
    .line 38
    iget-object p1, p1, Lrja;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v0, Ljava/util/Date;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->r()Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-wide v5, v3

    .line 56
    :goto_0
    const/16 v2, 0x3e8

    .line 57
    .line 58
    int-to-long v7, v2

    .line 59
    mul-long v5, v5, v7

    .line 60
    .line 61
    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Le1f;->k(Ljava/util/Date;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v2, Ljava/util/Date;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->j()Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-wide v5, v3

    .line 82
    :goto_1
    mul-long v5, v5, v7

    .line 83
    .line 84
    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Le1f;->k(Ljava/util/Date;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, "-"

    .line 100
    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 115
    .line 116
    iget-object p1, p1, Lrja;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->v()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-nez v0, :cond_4

    .line 123
    .line 124
    move-object v0, v1

    .line 125
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 129
    .line 130
    iget-object p1, p1, Lrja;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->b()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move-object v1, v0

    .line 140
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 144
    .line 145
    iget-object p1, p1, Lrja;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    const-string v0, "voucherUserNow"

    .line 148
    .line 149
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->b()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v1, 0x1

    .line 157
    if-eqz v0, :cond_7

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_6

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    const/4 v0, 0x0

    .line 167
    goto :goto_4

    .line 168
    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 169
    :goto_4
    xor-int/2addr v0, v1

    .line 170
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v0, "voucherDayLeft"

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-nez p1, :cond_8

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    cmp-long p1, v1, v3

    .line 193
    .line 194
    if-nez p1, :cond_9

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 198
    .line 199
    iget-object p1, p1, Lrja;->d:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 200
    .line 201
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 208
    .line 209
    iget-object v0, p1, Lrja;->d:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 210
    .line 211
    const/4 v4, 0x6

    .line 212
    const/4 v5, 0x0

    .line 213
    const/4 v2, 0x0

    .line 214
    const/4 v3, 0x0

    .line 215
    move-object v1, p2

    .line 216
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/wallet/view/KBoxVoucherTextView;->g(Lteam/opay/pay/wallet/view/KBoxVoucherTextView;Lcom/opay/team/newhome/reward/WidgetModule;IIILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->c:Lrja;

    .line 221
    .line 222
    iget-object p1, p1, Lrja;->d:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 223
    .line 224
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    :goto_7
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/kbox/KBoxVoucherViewHolder;->l(Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method public final p(Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->c()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v0, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->d()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v0, Lx7b;->a:Lx7b;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->g()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "content_type"

    .line 27
    .line 28
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "content"

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v3, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "kbox_id"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/WidgetModule;->m()Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v4, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-array v1, v1, [Lkotlin/Pair;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    aput-object v2, v1, v4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput-object v3, v1, v2

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    aput-object p1, v1, v2

    .line 62
    .line 63
    const-string p1, "homepage_kbox_click"

    .line 64
    .line 65
    invoke-virtual {v0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/View;Z)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "leftView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rightView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    :goto_0
    invoke-static {v0}, Ljmf;->d(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/16 v0, 0x50

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/4 v1, 0x0

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x10

    .line 27
    .line 28
    invoke-static {v2}, Ljmf;->d(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_2
    if-eqz p3, :cond_2

    .line 35
    .line 36
    const/16 v3, 0xb

    .line 37
    .line 38
    invoke-static {v3}, Ljmf;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_3
    if-eqz p3, :cond_3

    .line 45
    .line 46
    const/16 p3, 0x12

    .line 47
    .line 48
    invoke-static {p3}, Ljmf;->d(I)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    goto :goto_4

    .line 53
    :cond_3
    const/4 p3, 0x0

    .line 54
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    invoke-static {p1, v2, v3, v1, v1}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2, v1, v3, v2, v1}, Lteam/opay/core/android/ViewKt;->r(Landroid/view/View;IIII)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 73
    .line 74
    invoke-virtual {p1, v1, v1, v1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
