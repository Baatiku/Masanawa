.class public final Lteam/opay/core/card/PhyNotApplyContentViewHolder;
.super Lcom/chad/library/adapter/base/BaseViewHolder;
.source "PhyNotApplyContentViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ-\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001f\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lteam/opay/core/card/PhyNotApplyContentViewHolder;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lmj7;",
        "binding",
        "Lkotlin/Function0;",
        "",
        "closeApplyCallback",
        "<init>",
        "(Lmj7;Lkotlin/jvm/functions/Function0;)V",
        "Lteam/opay/core/card/PhyNotApplyContentItemData;",
        "data",
        "f",
        "(Lteam/opay/core/card/PhyNotApplyContentItemData;)V",
        "d",
        "",
        "cardUpsideContext",
        "Lteam/opay/core/card/ButtonDto;",
        "contextButton",
        "noApplyType",
        "g",
        "(Ljava/lang/String;Lteam/opay/core/card/ButtonDto;Ljava/lang/String;)V",
        "a",
        "Lmj7;",
        "getBinding",
        "()Lmj7;",
        "b",
        "Lkotlin/jvm/functions/Function0;",
        "getCloseApplyCallback",
        "()Lkotlin/jvm/functions/Function0;",
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
.field public final a:Lmj7;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmj7;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lmj7;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmj7;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lmj7;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    iput-object p2, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lmj7;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;-><init>(Lmj7;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->h(Ljava/lang/String;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/core/card/PhyNotApplyContentViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->i(Lteam/opay/core/card/PhyNotApplyContentViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/PhyNotApplyContentItemData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->e(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/PhyNotApplyContentItemData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/PhyNotApplyContentItemData;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Lkotlin/Pair;

    .line 9
    .line 10
    invoke-virtual {v0, p0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "getContext(...)"

    .line 20
    .line 21
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lteam/opay/core/card/PhyNotApplyContentItemData;->d()Lteam/opay/core/card/ButtonDto;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-nez p1, :cond_1

    .line 37
    .line 38
    const-string p1, ""

    .line 39
    .line 40
    :cond_1
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static final h(Ljava/lang/String;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "CARD_UN_ACTIVATE_IN_WAIT"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lx7b;->a:Lx7b;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [Lkotlin/Pair;

    .line 13
    .line 14
    const-string v1, "physicalcard_unactivated_track_click"

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "getContext(...)"

    .line 26
    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_1
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static final i(Lteam/opay/core/card/PhyNotApplyContentViewHolder;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "physicalcard_applyp_differentcard_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->b:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method


# virtual methods
.method public final d(Lteam/opay/core/card/PhyNotApplyContentItemData;)V
    .locals 8

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "statusEnd"

    .line 21
    .line 22
    const-string v4, "statusStart"

    .line 23
    .line 24
    const-string v5, "statusMiddle"

    .line 25
    .line 26
    const-string v6, "statusGroup"

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_0
    const-string v2, "APPLY_NO_SUCCESS"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_0
    sget-object v1, Lx7b;->a:Lx7b;

    .line 45
    .line 46
    const-string v2, "physicalcard_applyp_show"

    .line 47
    .line 48
    new-array v7, v7, [Lkotlin/Pair;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "physicalcard_applyp_continue_click"

    .line 54
    .line 55
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 58
    .line 59
    iget-object v1, v1, Lmj7;->h:Landroidx/constraintlayout/widget/Group;

    .line 60
    .line 61
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 68
    .line 69
    iget-object v1, v1, Lmj7;->j:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget v2, Lteam/opay/pay/R$color;->osdk_color_f0faf4:I

    .line 75
    .line 76
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 80
    .line 81
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget v2, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 87
    .line 88
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 92
    .line 93
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 102
    .line 103
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 104
    .line 105
    sget v2, Lteam/opay/pay/R$mipmap;->card_not_apply_not_activate:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 111
    .line 112
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 113
    .line 114
    sget v2, Lteam/opay/pay/R$mipmap;->card_not_apply_not_transact:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 120
    .line 121
    iget-object v1, v1, Lmj7;->p:Landroid/widget/TextView;

    .line 122
    .line 123
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    sget v3, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 130
    .line 131
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 139
    .line 140
    iget-object v1, v1, Lmj7;->n:Landroid/widget/TextView;

    .line 141
    .line 142
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    sget v3, Lteam/opay/pay/R$color;->black_45:I

    .line 149
    .line 150
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 158
    .line 159
    iget-object v1, v1, Lmj7;->m:Landroid/widget/TextView;

    .line 160
    .line 161
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :sswitch_1
    const-string v2, "CARD_EXPIRED_IN_15_DAYS"

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_1

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_1
    sget-object v1, Lx7b;->a:Lx7b;

    .line 187
    .line 188
    const-string v2, "physicalcard_nearexpire_show"

    .line 189
    .line 190
    new-array v3, v7, [Lkotlin/Pair;

    .line 191
    .line 192
    invoke-virtual {v1, v2, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 193
    .line 194
    .line 195
    const-string v1, "physicalcard_nearexpire_replace_click"

    .line 196
    .line 197
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    .line 199
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 200
    .line 201
    iget-object v1, v1, Lmj7;->h:Landroidx/constraintlayout/widget/Group;

    .line 202
    .line 203
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :sswitch_2
    const-string v2, "CARD_UN_ACTIVATE_IN_WAIT"

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_2

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_2
    sget-object v1, Lx7b;->a:Lx7b;

    .line 222
    .line 223
    const-string v2, "physicalcard_unactivated_show"

    .line 224
    .line 225
    new-array v7, v7, [Lkotlin/Pair;

    .line 226
    .line 227
    invoke-virtual {v1, v2, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 228
    .line 229
    .line 230
    const-string v1, "physicalcard_unactivated_activate_click"

    .line 231
    .line 232
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 235
    .line 236
    iget-object v1, v1, Lmj7;->h:Landroidx/constraintlayout/widget/Group;

    .line 237
    .line 238
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 245
    .line 246
    iget-object v1, v1, Lmj7;->j:Landroid/widget/ImageView;

    .line 247
    .line 248
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget v2, Lteam/opay/pay/R$color;->osdk_color_f0faf4:I

    .line 252
    .line 253
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 257
    .line 258
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sget v2, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 264
    .line 265
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 269
    .line 270
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 271
    .line 272
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    sget v3, Lteam/opay/pay/R$color;->color_f8f8fb:I

    .line 276
    .line 277
    invoke-static {v1, v3}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 278
    .line 279
    .line 280
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 281
    .line 282
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 283
    .line 284
    sget v3, Lteam/opay/pay/R$mipmap;->card_not_apply_activate:I

    .line 285
    .line 286
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 290
    .line 291
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 292
    .line 293
    sget v3, Lteam/opay/pay/R$mipmap;->card_not_apply_not_transact:I

    .line 294
    .line 295
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 299
    .line 300
    iget-object v1, v1, Lmj7;->p:Landroid/widget/TextView;

    .line 301
    .line 302
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 303
    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    sget v4, Lteam/opay/pay/R$color;->black_45:I

    .line 309
    .line 310
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 318
    .line 319
    iget-object v1, v1, Lmj7;->n:Landroid/widget/TextView;

    .line 320
    .line 321
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 322
    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-static {v3, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    .line 333
    .line 334
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 335
    .line 336
    iget-object v1, v1, Lmj7;->m:Landroid/widget/TextView;

    .line 337
    .line 338
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 339
    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-static {v2, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :sswitch_3
    const-string v2, "CARD_NO_TRANSACT"

    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-nez v1, :cond_3

    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_3
    sget-object v1, Lx7b;->a:Lx7b;

    .line 364
    .line 365
    const-string v2, "physicalcard_intro_transac_show"

    .line 366
    .line 367
    new-array v7, v7, [Lkotlin/Pair;

    .line 368
    .line 369
    invoke-virtual {v1, v2, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 370
    .line 371
    .line 372
    const-string v1, "physicalcard_intro_transac_getstart_click"

    .line 373
    .line 374
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 375
    .line 376
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 377
    .line 378
    iget-object v1, v1, Lmj7;->h:Landroidx/constraintlayout/widget/Group;

    .line 379
    .line 380
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 387
    .line 388
    iget-object v1, v1, Lmj7;->j:Landroid/widget/ImageView;

    .line 389
    .line 390
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    sget v2, Lteam/opay/pay/R$color;->osdk_color_f0faf4:I

    .line 394
    .line 395
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 396
    .line 397
    .line 398
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 399
    .line 400
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 401
    .line 402
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 406
    .line 407
    .line 408
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 409
    .line 410
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 411
    .line 412
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    sget v2, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 416
    .line 417
    invoke-static {v1, v2}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 418
    .line 419
    .line 420
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 421
    .line 422
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 423
    .line 424
    sget v3, Lteam/opay/pay/R$mipmap;->card_not_apply_activate:I

    .line 425
    .line 426
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    .line 428
    .line 429
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 430
    .line 431
    iget-object v1, v1, Lmj7;->i:Landroid/widget/ImageView;

    .line 432
    .line 433
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 437
    .line 438
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-static {v3, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    invoke-static {v1, v3}, Lteam/opay/core/android/ViewKt;->t(Landroid/widget/ImageView;I)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 450
    .line 451
    iget-object v1, v1, Lmj7;->g:Landroid/widget/ImageView;

    .line 452
    .line 453
    sget v3, Lteam/opay/pay/R$mipmap;->card_not_apply_transact:I

    .line 454
    .line 455
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    .line 457
    .line 458
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 459
    .line 460
    iget-object v1, v1, Lmj7;->p:Landroid/widget/TextView;

    .line 461
    .line 462
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 463
    .line 464
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    sget v4, Lteam/opay/pay/R$color;->black_45:I

    .line 469
    .line 470
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 475
    .line 476
    .line 477
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 478
    .line 479
    iget-object v1, v1, Lmj7;->n:Landroid/widget/TextView;

    .line 480
    .line 481
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 482
    .line 483
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    .line 493
    .line 494
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 495
    .line 496
    iget-object v1, v1, Lmj7;->m:Landroid/widget/TextView;

    .line 497
    .line 498
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 499
    .line 500
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-static {v3, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    .line 510
    .line 511
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->b()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->c()Lteam/opay/core/card/ButtonDto;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->e()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {p0, v1, v2, v3}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->g(Ljava/lang/String;Lteam/opay/core/card/ButtonDto;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->d()Lteam/opay/core/card/ButtonDto;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    if-eqz v1, :cond_5

    .line 531
    .line 532
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 533
    .line 534
    iget-object v1, v1, Lmj7;->c:Lteam/opay/core/card/CardContentButtonView;

    .line 535
    .line 536
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->d()Lteam/opay/core/card/ButtonDto;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v1, v2}, Lteam/opay/core/card/CardContentButtonView;->setData(Lteam/opay/core/card/ButtonDto;)V

    .line 541
    .line 542
    .line 543
    iget-object v1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 544
    .line 545
    iget-object v1, v1, Lmj7;->c:Lteam/opay/core/card/CardContentButtonView;

    .line 546
    .line 547
    const-string v2, "contentButton"

    .line 548
    .line 549
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    new-instance v2, Lppb;

    .line 553
    .line 554
    invoke-direct {v2, v0, p0, p1}, Lppb;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/PhyNotApplyContentItemData;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 558
    .line 559
    .line 560
    :cond_5
    return-void

    .line 561
    :sswitch_data_0
    .sparse-switch
        -0x569c2107 -> :sswitch_3
        -0x19d479c6 -> :sswitch_2
        0x18a36381 -> :sswitch_1
        0x23ff78f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Lteam/opay/core/card/PhyNotApplyContentItemData;)V
    .locals 10
    .param p1    # Lteam/opay/core/card/PhyNotApplyContentItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 7
    .line 8
    iget-object v1, v0, Lmj7;->b:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/card/PhyNotApplyContentItemData;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :cond_0
    move-object v2, v0

    .line 19
    sget v3, Lteam/opay/pay/R$mipmap;->bg_card_default:I

    .line 20
    .line 21
    const/16 v8, 0x3c

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-static/range {v1 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->d(Lteam/opay/core/card/PhyNotApplyContentItemData;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final g(Ljava/lang/String;Lteam/opay/core/card/ButtonDto;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "APPLY_NO_SUCCESS"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 10
    .line 11
    iget-object v0, v0, Lmj7;->k:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    sget v1, Lteam/opay/pay/R$color;->color_e2f5eb:I

    .line 29
    .line 30
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget v2, Lteam/opay/pay/R$color;->osdk_color_00B876:I

    .line 40
    .line 41
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object p1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 63
    .line 64
    iget-object p1, p1, Lmj7;->o:Landroid/widget/TextView;

    .line 65
    .line 66
    const-string v0, "tvStatusOrder"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 75
    .line 76
    iget-object p1, p1, Lmj7;->l:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    const-string v0, "CARD_EXPIRED_IN_15_DAYS"

    .line 81
    .line 82
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lqpb;

    .line 107
    .line 108
    invoke-direct {v0, p3, p0, p2}, Lqpb;-><init>(Ljava/lang/String;Lteam/opay/core/card/PhyNotApplyContentViewHolder;Lteam/opay/core/card/ButtonDto;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_3
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_4
    iget-object p3, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 123
    .line 124
    iget-object p3, p3, Lmj7;->k:Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    sget v0, Lteam/opay/pay/R$color;->osdk_FEF5F8:I

    .line 142
    .line 143
    invoke-static {p3, v0}, Lteam/opay/core/android/ViewKt;->m(Landroid/view/View;I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget v1, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 153
    .line 154
    invoke-static {v0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {p1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_6
    :goto_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-static {p3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    :goto_4
    iget-object p1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 176
    .line 177
    iget-object p1, p1, Lmj7;->l:Landroid/widget/TextView;

    .line 178
    .line 179
    const-string p3, "tvStatusApply"

    .line 180
    .line 181
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lteam/opay/core/card/PhyNotApplyContentViewHolder;->a:Lmj7;

    .line 188
    .line 189
    iget-object p1, p1, Lmj7;->o:Landroid/widget/TextView;

    .line 190
    .line 191
    if-nez p2, :cond_7

    .line 192
    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-static {p2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    new-instance p2, Lrpb;

    .line 218
    .line 219
    invoke-direct {p2, p0}, Lrpb;-><init>(Lteam/opay/core/card/PhyNotApplyContentViewHolder;)V

    .line 220
    .line 221
    .line 222
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 223
    .line 224
    .line 225
    :goto_5
    return-void
.end method
