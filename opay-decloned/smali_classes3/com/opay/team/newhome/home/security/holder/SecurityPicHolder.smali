.class public final Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;
.super Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;
.source "SecurityPicHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;",
        "Lcom/opay/team/newhome/home/security/holder/BaseHomeSecurityViewHolder;",
        "Lc27;",
        "binding",
        "",
        "mQuestionId",
        "",
        "mAnswer",
        "<init>",
        "(Lc27;Ljava/lang/Long;Ljava/lang/String;)V",
        "Lcom/opay/team/newhome/reward/SecurityOptionContent;",
        "option",
        "",
        "size",
        "",
        "c",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V",
        "h",
        "(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Ljava/lang/String;",
        "d",
        "Lc27;",
        "getBinding",
        "()Lc27;",
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
.field public final d:Lc27;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc27;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lc27;
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
    invoke-virtual {p1}, Lc27;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object p1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c(Lcom/opay/team/newhome/reward/SecurityOptionContent;I)V
    .locals 9
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
    iget-object v0, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 12
    .line 13
    iget-object v1, v0, Lc27;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 14
    .line 15
    const-string v0, "questionImage"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->h()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :cond_0
    move-object v2, v0

    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-static {v0}, Lkmf;->g(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sget v0, Lteam/opay/pay/R$drawable;->shape_image_place_holder:I

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/16 v7, 0x10

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v1 .. v8}, Lme7;->h(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Integer;ZIILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->l()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/4 v2, 0x1

    .line 60
    if-ne v1, v2, :cond_2

    .line 61
    .line 62
    sget v0, Lteam/opay/pay/R$color;->color_00B876:I

    .line 63
    .line 64
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 65
    .line 66
    iget-object v1, v1, Lc27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 67
    .line 68
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_pic_question_right:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x2

    .line 82
    if-ne v1, v2, :cond_4

    .line 83
    .line 84
    sget v0, Lteam/opay/pay/R$color;->black_25:I

    .line 85
    .line 86
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 87
    .line 88
    iget-object v1, v1, Lc27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 89
    .line 90
    sget v2, Lteam/opay/pay/R$mipmap;->osdk_ic_pic_question_wrong:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v2, 0x3

    .line 105
    if-ne v0, v2, :cond_6

    .line 106
    .line 107
    sget v0, Lteam/opay/pay/R$color;->black_25:I

    .line 108
    .line 109
    iget-object v2, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 110
    .line 111
    iget-object v2, v2, Lc27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    :goto_2
    sget v0, Lteam/opay/pay/R$color;->black_65:I

    .line 118
    .line 119
    iget-object v2, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 120
    .line 121
    iget-object v2, v2, Lc27;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    iget-object v1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 127
    .line 128
    iget-object v1, v1, Lc27;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->h(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/opay/team/newhome/home/security/holder/SecurityPicHolder;->d:Lc27;

    .line 138
    .line 139
    iget-object p1, p1, Lc27;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2, v0}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final h(Lcom/opay/team/newhome/reward/SecurityOptionContent;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->j()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ". "

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/opay/team/newhome/reward/SecurityOptionContent;->g()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_2
    :goto_1
    return-object p1
.end method
