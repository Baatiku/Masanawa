.class public final Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "ChildBillMoreActivitesListAdapter.kt"


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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/core/card/MultiDataItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "<init>",
        "()V",
        "Lteam/opay/pay/payment/bill/MoreMarketingWidget;",
        "marketingWidget",
        "",
        "l",
        "(Lteam/opay/pay/payment/bill/MoreMarketingWidget;)V",
        "helper",
        "item",
        "k",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V",
        "",
        "a",
        "I",
        "TYPE_IMAGE",
        "b",
        "TYPE_WIDGET",
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
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->a:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->b:I

    .line 10
    .line 11
    sget v2, Lteam/opay/pay/R$layout;->child_item_bill_more_activities_list:I

    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 14
    .line 15
    .line 16
    sget v0, Lteam/opay/pay/R$layout;->item_more_list_type_2:I

    .line 17
    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/core/card/MultiDataItemEntry;)V
    .locals 13
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
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/core/card/MultiDataItemEntry;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    instance-of v2, v1, Lteam/opay/pay/payment/bill/WidgetModuleList;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    check-cast v1, Lteam/opay/pay/payment/bill/WidgetModuleList;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_1
    if-nez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {p2}, Lteam/opay/core/card/MultiDataItemEntry;->getType()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget v2, p0, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->a:I

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    if-ne p2, v2, :cond_4

    .line 35
    .line 36
    sget p2, Lteam/opay/pay/R$id;->icon:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    move-object v4, p1

    .line 43
    check-cast v4, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 44
    .line 45
    if-eqz v4, :cond_8

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getIcon()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    move-object v5, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move-object v5, p1

    .line 56
    :goto_2
    const/16 v11, 0x3e

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    sget-object v2, Lc03;->a:Lc03;

    .line 71
    .line 72
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getContentBackColor()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-nez v4, :cond_5

    .line 77
    .line 78
    move-object v4, v3

    .line 79
    :cond_5
    const/4 v5, 0x2

    .line 80
    invoke-static {v2, v4, v0, v5, v0}, Lc03;->f(Lc03;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    .line 90
    .line 91
    sget p2, Lteam/opay/pay/R$id;->icon:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    move-object v4, p2

    .line 98
    check-cast v4, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 99
    .line 100
    if-eqz v4, :cond_7

    .line 101
    .line 102
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getIcon()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-nez p2, :cond_6

    .line 107
    .line 108
    move-object v5, v3

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move-object v5, p2

    .line 111
    :goto_3
    sget v6, Lteam/opay/pay/R$mipmap;->more_activity_default:I

    .line 112
    .line 113
    const/16 v11, 0x34

    .line 114
    .line 115
    const/4 v12, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    const/4 v9, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    sget p2, Lteam/opay/pay/R$id;->title:I

    .line 124
    .line 125
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getTitle()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 130
    .line 131
    .line 132
    sget p2, Lteam/opay/pay/R$id;->desc:I

    .line 133
    .line 134
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getDescription()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 143
    .line 144
    .line 145
    :cond_8
    :goto_4
    return-void
.end method

.method public final l(Lteam/opay/pay/payment/bill/MoreMarketingWidget;)V
    .locals 5
    .param p1    # Lteam/opay/pay/payment/bill/MoreMarketingWidget;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getWidgetModuleList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lteam/opay/pay/payment/bill/WidgetModuleList;

    .line 35
    .line 36
    new-instance v2, Lteam/opay/core/card/MultiDataItemEntry;

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getContentType()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "5"

    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    iget v3, p0, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->a:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget v3, p0, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->b:I

    .line 54
    .line 55
    :goto_1
    invoke-direct {v2, v3, v1}, Lteam/opay/core/card/MultiDataItemEntry;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
