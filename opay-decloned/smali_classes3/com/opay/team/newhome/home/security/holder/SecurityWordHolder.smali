.class public final Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;
.super Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;
.source "SecurityWordHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;",
        "Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        "Le27;",
        "binding",
        "",
        "mQuestionId",
        "",
        "mAnswer",
        "<init>",
        "(Le27;Ljava/lang/Long;Ljava/lang/String;)V",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "option",
        "",
        "size",
        "",
        "c",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V",
        "d",
        "Le27;",
        "getBinding",
        "()Le27;",
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
.field public final d:Le27;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le27;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1    # Le27;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-virtual {p1}, Le27;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-direct {p0, v0, p2, p3}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;-><init>(Landroid/view/View;Ljava/lang/Long;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V
    .locals 4
    .param p1    # Lcom/opay/team/newhome/reward/SecurityOptionContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "option"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;->c(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->l()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_after_right:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_after_other:I

    .line 35
    .line 36
    :goto_0
    sget v1, Lteam/opay/pay/R$color;->color_00B876:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 39
    .line 40
    iget-object v2, v2, Le27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    .line 42
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_ic_word_question_right:I

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_6

    .line 48
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x2

    .line 56
    if-ne v1, v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->q()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_after_wrong:I

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_after_other:I

    .line 68
    .line 69
    :goto_2
    sget v1, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 72
    .line 73
    iget-object v2, v2, Le27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    sget v3, Lteam/opay/pay/R$mipmap;->osdk_ic_word_question_wrong:I

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 82
    if-nez v0, :cond_6

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v2, 0x3

    .line 90
    if-ne v0, v2, :cond_7

    .line 91
    .line 92
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_after_other:I

    .line 93
    .line 94
    sget v2, Lteam/opay/pay/R$color;->black_25:I

    .line 95
    .line 96
    iget-object v3, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 97
    .line 98
    iget-object v3, v3, Le27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    :goto_4
    move v1, v2

    .line 104
    goto :goto_6

    .line 105
    :cond_7
    :goto_5
    sget v0, Lteam/opay/pay/R$drawable;->osdk_bg_question_befor:I

    .line 106
    .line 107
    sget v2, Lteam/opay/pay/R$color;->black_65:I

    .line 108
    .line 109
    iget-object v3, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 110
    .line 111
    iget-object v3, v3, Le27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 112
    .line 113
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 121
    .line 122
    iget-object v0, v0, Le27;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v2, ". "

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityWordHolder;->d:Le27;

    .line 156
    .line 157
    iget-object p1, p1, Le27;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p2, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method
