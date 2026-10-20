.class public Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;
.super Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;
.source "KBoxTaskViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;",
        "Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;",
        "Lqja;",
        "binding",
        "<init>",
        "(Lqja;)V",
        "",
        "position",
        "Lcom/opay/team/newhome/reward/WidgetModule;",
        "item",
        "",
        "n",
        "(ILcom/opay/team/newhome/reward/WidgetModule;)V",
        "p",
        "(Lcom/opay/team/newhome/reward/WidgetModule;)V",
        "m",
        "()I",
        "Landroid/content/Context;",
        "context",
        "o",
        "(Landroid/content/Context;Lcom/opay/team/newhome/reward/WidgetModule;)V",
        "c",
        "Lqja;",
        "l",
        "()Lqja;",
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
.field public final c:Lqja;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqja;)V
    .locals 2
    .param p1    # Lqja;
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
    invoke-virtual {p1}, Lqja;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    sget v0, Lteam/opay/pay/R$drawable;->ripple_white_12:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    const/16 v0, 0x13

    .line 30
    .line 31
    invoke-static {v0}, Ljmf;->d(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static synthetic j(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->r(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->q(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->o(Landroid/content/Context;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final r(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->o(Landroid/content/Context;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final l()Lqja;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public n(ILcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 11
    .param p2    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 9
    .line 10
    iget-object v0, v0, Lqja;->d:Landroid/view/View;

    .line 11
    .line 12
    const-string v1, "taskDividerLine"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->x()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 25
    .line 26
    iget-object v1, v0, Lqja;->f:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->l()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v10, ""

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    move-object v2, v10

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v2, v0

    .line 39
    :goto_0
    sget v3, Lteam/opay/pay/R$mipmap;->omain_ic_task_default:I

    .line 40
    .line 41
    const/16 v8, 0x3c

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 52
    .line 53
    iget-object v0, v0, Lqja;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->u()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 63
    .line 64
    iget-object v0, v0, Lqja;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->h()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    move-object v1, v10

    .line 73
    :cond_1
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 81
    .line 82
    iget-object v0, v0, Lqja;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->b()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 92
    .line 93
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->c()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    if-nez v1, :cond_2

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    move-object v10, v1

    .line 117
    :goto_1
    invoke-virtual {v0, v10}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/16 v1, 0x10

    .line 122
    .line 123
    invoke-static {v1}, Ljmf;->d(I)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {v1}, Ljmf;->d(I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    new-instance v3, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder$a;

    .line 132
    .line 133
    invoke-direct {v3, p0, p1, v2, v1}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder$a;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljpc;->C0(Llfe;)Llfe;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string v0, "taskDayLeft"

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->k()Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-nez p1, :cond_3

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    const-wide/16 v3, 0x0

    .line 159
    .line 160
    cmp-long p1, v1, v3

    .line 161
    .line 162
    if-nez p1, :cond_4

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 166
    .line 167
    iget-object p1, p1, Lqja;->b:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 168
    .line 169
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 176
    .line 177
    iget-object v0, p1, Lqja;->b:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 178
    .line 179
    const/4 v4, 0x6

    .line 180
    const/4 v5, 0x0

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v3, 0x0

    .line 183
    move-object v1, p2

    .line 184
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/wallet/view/KBoxVoucherTextView;->g(Lteam/opay/pay/wallet/view/KBoxVoucherTextView;Lcom/opay/team/newhome/reward/WidgetModule;IIILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 189
    .line 190
    iget-object p1, p1, Lqja;->b:Lteam/opay/pay/wallet/view/KBoxVoucherTextView;

    .line 191
    .line 192
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    :goto_4
    invoke-virtual {p0, p2}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->p(Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final o(Landroid/content/Context;Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->n()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->c()Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->m()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/opay/team/newhome/home/kbox/BaseKBoxViewHolder;->d()Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lx7b;->a:Lx7b;

    .line 35
    .line 36
    const-string v0, "content_type"

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->g()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "content"

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->e()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "kbox_id"

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/opay/team/newhome/reward/WidgetModule;->m()Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v2, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const/4 v2, 0x3

    .line 67
    new-array v2, v2, [Lkotlin/Pair;

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    aput-object v0, v2, v3

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    aput-object v1, v2, v0

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
    aput-object p2, v2, v0

    .line 77
    .line 78
    const-string p2, "homepage_kbox_click"

    .line 79
    .line 80
    invoke-virtual {p1, p2, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public p(Lcom/opay/team/newhome/reward/WidgetModule;)V
    .locals 3
    .param p1    # Lcom/opay/team/newhome/reward/WidgetModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;->c:Lqja;

    .line 9
    .line 10
    iget-object v1, v1, Lqja;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    const-string v2, "taskGo"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lbo7;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, p1}, Lbo7;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lco7;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0, p1}, Lco7;-><init>(Lcom/opay/team/newhome/home/kbox/KBoxTaskViewHolder;Landroid/view/View;Lcom/opay/team/newhome/reward/WidgetModule;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
