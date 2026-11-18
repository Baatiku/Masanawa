.class public final Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "QuestionSelectListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QuestionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/String;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;)V",
        "helper",
        "item",
        "",
        "l",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V",
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
.field public final synthetic a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;

    .line 2
    .line 3
    sget p1, Lteam/opay/pay/R$layout;->item_question_select_layout:I

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->m(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;->P()Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->l(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    sget v0, Lteam/opay/pay/R$id;->questionTv:I

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Lteam/opay/core/base/BaseSheetFragment;->getAppContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;

    .line 23
    .line 24
    invoke-virtual {v2}, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;->Q()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    sget v2, Lteam/opay/pay/R$color;->mint:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget v2, Lteam/opay/pay/R$color;->black_65:I

    .line 38
    .line 39
    :goto_0
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTextColor(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 44
    .line 45
    .line 46
    sget v0, Lteam/opay/pay/R$id;->checkbox:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;

    .line 55
    .line 56
    invoke-virtual {v1}, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;->Q()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    .line 69
    const-string v0, "itemView"

    .line 70
    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment$QuestionAdapter;->a:Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;

    .line 75
    .line 76
    new-instance v1, Lrbc;

    .line 77
    .line 78
    invoke-direct {v1, v0, p2}, Lrbc;-><init>(Lteam/opay/pay/home/security/fragment/QuestionSelectListFragment;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
