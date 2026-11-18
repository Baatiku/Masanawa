.class public final Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "VerifySecretQuestionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R:\u0010\u001c\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR7\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00100\u001dj\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0010`\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "",
        "data",
        "",
        "setNewData",
        "(Ljava/util/List;)V",
        "helper",
        "item",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V",
        "Lteam/opay/pay/home/security/QuestionAnswerListItem;",
        "",
        "position",
        "p",
        "(Lteam/opay/pay/home/security/QuestionAnswerListItem;I)V",
        "Lkotlin/Function2;",
        "",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "getOnQuestionSelected",
        "()Lkotlin/jvm/functions/Function2;",
        "r",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onQuestionSelected",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "b",
        "Lid8;",
        "o",
        "()Ljava/util/HashMap;",
        "questionPositionMap",
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
.field public a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lyuf;

    .line 6
    .line 7
    invoke-direct {v0}, Lyuf;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->b:Lid8;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    sget v1, Lteam/opay/pay/R$layout;->layout_item_question_answer_last:I

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    sget v1, Lteam/opay/pay/R$layout;->layout_item_question_answer:I

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    sget v1, Lteam/opay/pay/R$layout;->layout_secret_question_title:I

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;Lteam/opay/pay/home/security/QuestionAnswerListItem;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->n(Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;Lteam/opay/pay/home/security/QuestionAnswerListItem;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->q()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final n(Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;Lteam/opay/pay/home/security/QuestionAnswerListItem;Lcom/chad/library/adapter/base/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->p(Lteam/opay/pay/home/security/QuestionAnswerListItem;I)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final q()Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/card/MultiDataItemEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/card/MultiDataItemEntry;->getType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    instance-of v0, p2, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move-object v1, p2

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    :cond_1
    sget p2, Lteam/opay/pay/R$id;->title:I

    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    instance-of v0, p2, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    move-object v1, p2

    .line 42
    check-cast v1, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 43
    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez p2, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-ne p2, v0, :cond_6

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    :goto_0
    const/4 p2, 0x0

    .line 77
    :goto_1
    sget v0, Lteam/opay/pay/R$id;->selector:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/CheckBox;

    .line 84
    .line 85
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 86
    .line 87
    .line 88
    sget v0, Lteam/opay/pay/R$id;->answer:I

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    if-eqz p2, :cond_7

    .line 104
    .line 105
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    sget v2, Lteam/opay/pay/R$color;->color_00B876:I

    .line 108
    .line 109
    invoke-static {p2, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    sget v2, Lteam/opay/pay/R$color;->black_65:I

    .line 117
    .line 118
    invoke-static {p2, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 126
    .line 127
    const-string v0, "itemView"

    .line 128
    .line 129
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lxuf;

    .line 133
    .line 134
    invoke-direct {v0, p0, v1, p1}, Lxuf;-><init>(Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;Lteam/opay/pay/home/security/QuestionAnswerListItem;Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p2, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    :goto_3
    return-void
.end method

.method public final o()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method public final p(Lteam/opay/pay/home/security/QuestionAnswerListItem;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, p2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_1
    const/4 v2, -0x1

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    if-eqz p2, :cond_7

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object v1, p1

    .line 57
    :goto_0
    const/4 p1, 0x0

    .line 58
    invoke-interface {p2, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    :cond_4
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    if-eqz p2, :cond_7

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_5

    .line 89
    .line 90
    move-object v0, v1

    .line 91
    :cond_5
    invoke-virtual {p1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->a()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    move-object v1, p1

    .line 99
    :goto_2
    invoke-interface {p2, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->a:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/card/MultiDataItemEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/core/card/MultiDataItemEntry;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v2, v2, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 36
    .line 37
    invoke-virtual {v3}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    move-object v3, v4

    .line 46
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lteam/opay/pay/account/verify/VerifySecretQuestionAdapter;->o()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lteam/opay/pay/home/security/QuestionAnswerListItem;

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/home/security/QuestionAnswerListItem;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v4, v1

    .line 70
    :goto_1
    const/4 v1, -0x1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
