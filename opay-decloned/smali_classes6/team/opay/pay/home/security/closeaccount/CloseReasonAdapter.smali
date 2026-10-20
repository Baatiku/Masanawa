.class public final Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "CloseReasonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00162\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001:\u0001\u0017B\u001b\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ%\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0015\u00a2\u0006\u0004\u0008\u000c\u0010\rR#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00060\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lkotlin/Function1;",
        "",
        "onSelect",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "helper",
        "item",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSelect",
        "()Lkotlin/jvm/functions/Function1;",
        "",
        "b",
        "I",
        "preSelect",
        "c",
        "Companion",
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


# static fields
.field public static final c:Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->c:Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

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
            "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onSelect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->b:I

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    sget v0, Lteam/opay/pay/R$layout;->item_close_account_choose:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    sget v0, Lteam/opay/pay/R$layout;->item_close_account_edit:I

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/view/View;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->o(Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/view/View;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->n(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "/300"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p2, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method public static final o(Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/view/View;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 29
    .line 30
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->f(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-eq v0, v1, :cond_3

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lli2;->f(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0, v1}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->f(Z)V

    .line 57
    .line 58
    .line 59
    iget p2, p1, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->b:I

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    if-eq p2, v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object p2, p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mData:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p1, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->b:I

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->a:Lkotlin/jvm/functions/Function1;

    .line 79
    .line 80
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 8
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;",
            ">;)V"
        }
    .end annotation

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
    invoke-virtual {p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget v1, Lteam/opay/pay/R$id;->close_desc:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    sget v2, Lteam/opay/pay/R$id;->checkbox:I

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    sget v3, Lteam/opay/pay/R$id;->other_checkbox:I

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    sget v4, Lteam/opay/pay/R$id;->count_tip:I

    .line 45
    .line 46
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    sget v5, Lteam/opay/pay/R$id;->other_edit:I

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroidx/appcompat/widget/AppCompatEditText;

    .line 59
    .line 60
    sget v6, Lteam/opay/pay/R$id;->edit_group:I

    .line 61
    .line 62
    invoke-virtual {p1, v6}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroidx/constraintlayout/widget/Group;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->a()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->c()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->d()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->d()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v6, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->d()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;->d()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v1, Lpf2;

    .line 119
    .line 120
    invoke-direct {v1, v4, v0, p0}, Lpf2;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v5, v1}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lqf2;

    .line 130
    .line 131
    invoke-direct {v1, v0, p0, p1, p2}, Lqf2;-><init>(Lteam/opay/pay/home/security/closeaccount/CloseReasonItem;Lteam/opay/pay/home/security/closeaccount/CloseReasonAdapter;Landroid/view/View;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
