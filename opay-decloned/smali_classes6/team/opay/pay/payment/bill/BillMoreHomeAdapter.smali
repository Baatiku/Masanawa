.class public final Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "BillMoreHomeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
        "Lteam/opay/pay/payment/bill/MoreItemData;",
        ">;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\u001f\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001f\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;",
        "Lteam/opay/pay/payment/bill/MoreItemData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "",
        "Lteam/opay/pay/payment/bill/MoreServiceListData;",
        "totalList",
        "Lag8;",
        "lifecycleOwner",
        "<init>",
        "(Ljava/util/List;Lag8;)V",
        "helper",
        "data",
        "",
        "n",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V",
        "Lteam/opay/pay/payment/bill/WidgetModuleList;",
        "",
        "id",
        "r",
        "(Lteam/opay/pay/payment/bill/WidgetModuleList;Ljava/lang/String;)V",
        "a",
        "Ljava/util/List;",
        "getTotalList",
        "()Ljava/util/List;",
        "b",
        "Lag8;",
        "p",
        "()Lag8;",
        "Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;",
        "c",
        "Lid8;",
        "q",
        "()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;",
        "reporter",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lag8;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/payment/bill/MoreServiceListData;",
            ">;",
            "Lag8;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->a:Ljava/util/List;

    .line 11
    .line 12
    iput-object p2, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->b:Lag8;

    .line 13
    .line 14
    new-instance p1, Lj61;

    .line 15
    .line 16
    invoke-direct {p1}, Lj61;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->c:Lid8;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    sget p2, Lteam/opay/pay/R$layout;->item_more_payment_announcement_layout:I

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 29
    .line 30
    .line 31
    sget p1, Lteam/opay/pay/R$layout;->item_more_payment_service_layout:I

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x8

    .line 38
    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    sget p2, Lteam/opay/pay/R$layout;->item_more_payment_space:I

    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x6

    .line 49
    sget p2, Lteam/opay/pay/R$layout;->item_bill_more_activities_list:I

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x7

    .line 55
    sget p2, Lteam/opay/pay/R$layout;->item_more_payment_banner_layout:I

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static synthetic k()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->t()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Lteam/opay/pay/payment/bill/MoreItemData;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->o(Lteam/opay/pay/payment/bill/MoreItemData;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->s(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final o(Lteam/opay/pay/payment/bill/MoreItemData;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreItemData;->d()Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getWidgetModuleList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lteam/opay/pay/payment/bill/WidgetModuleList;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreItemData;->d()Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lteam/opay/pay/payment/bill/MoreMarketingWidget;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    const-string p0, ""

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p1, p2, p0}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->r(Lteam/opay/pay/payment/bill/WidgetModuleList;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public static final s(Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 7
    .line 8
    sget-object v1, Lteam/opay/pay/home/Service;->COMMON:Lteam/opay/pay/home/Service;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->b(Lteam/opay/pay/home/Service;)Lcom/opay/team/OPayAnalytics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lkotlin/Pair;

    .line 17
    .line 18
    const-string v2, "platform"

    .line 19
    .line 20
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    new-array p0, p0, [Lkotlin/Pair;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v1, p0, v2

    .line 28
    .line 29
    const-string v1, "osdkShare_click"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p0}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final t()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;)V
    .locals 18
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseViewHolder;",
            "Lteam/opay/pay/transfer/contact/adapter/MulDataEntity<",
            "Lteam/opay/pay/payment/bill/MoreItemData;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "helper"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "data"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v3, v1

    .line 22
    check-cast v3, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->c()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_13

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    if-eq v1, v5, :cond_10

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    const/16 v7, 0xa

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    if-eq v1, v5, :cond_9

    .line 43
    .line 44
    const/4 v5, 0x6

    .line 45
    const/4 v9, 0x0

    .line 46
    if-eq v1, v5, :cond_8

    .line 47
    .line 48
    const/4 v0, 0x7

    .line 49
    if-eq v1, v0, :cond_4

    .line 50
    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    if-eq v1, v0, :cond_1

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;->a()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lteam/opay/pay/payment/bill/MoreItemData;

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/pay/payment/bill/MoreItemData;->f()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_2
    sget v1, Lteam/opay/pay/R$id;->rv_list:I

    .line 74
    .line 75
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    .line 81
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Lteam/opay/pay/payment/bill/BillMoreListAdapter;

    .line 94
    .line 95
    iget-object v3, v6, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->b:Lag8;

    .line 96
    .line 97
    invoke-direct {v2, v0, v9, v3}, Lteam/opay/pay/payment/bill/BillMoreListAdapter;-><init>(Ljava/util/List;ILag8;)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    move-object v9, v4

    .line 124
    check-cast v9, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 125
    .line 126
    new-instance v4, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;

    .line 127
    .line 128
    invoke-virtual {v9}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getItemType()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    const/16 v16, 0xfc

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v14, 0x0

    .line 141
    const/4 v15, 0x0

    .line 142
    move-object v7, v4

    .line 143
    invoke-direct/range {v7 .. v17}, Lteam/opay/pay/transfer/contact/adapter/MulDataEntity;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_4
    sget v0, Lteam/opay/pay/R$id;->ad_list:I

    .line 159
    .line 160
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 165
    .line 166
    if-eqz v0, :cond_14

    .line 167
    .line 168
    invoke-static {v0}, Landroidx/core/view/a;->V(Landroid/view/View;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_7

    .line 179
    .line 180
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->b()Lteam/opay/odialog/net/ADListItem;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    invoke-virtual {v1}, Lteam/opay/odialog/net/ADListItem;->getAdList()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    :cond_5
    if-nez v8, :cond_6

    .line 191
    .line 192
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    :cond_6
    invoke-virtual {v0, v8}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_7
    new-instance v1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$lambda$11$$inlined$doOnLayout$2;

    .line 202
    .line 203
    invoke-direct {v1, v0, v3}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$lambda$11$$inlined$doOnLayout$2;-><init>(Lteam/opay/pay/ad/OpayAdBannerView;Lteam/opay/pay/payment/bill/MoreItemData;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_8
    sget v1, Lteam/opay/pay/R$id;->activities_list:I

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    if-eqz v0, :cond_14

    .line 220
    .line 221
    new-instance v1, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;

    .line 222
    .line 223
    invoke-direct {v1}, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;-><init>()V

    .line 224
    .line 225
    .line 226
    new-instance v2, Lk61;

    .line 227
    .line 228
    invoke-direct {v2, v3, v6}, Lk61;-><init>(Lteam/opay/pay/payment/bill/MoreItemData;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 232
    .line 233
    .line 234
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 235
    .line 236
    iget-object v4, v6, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-direct {v2, v4, v9, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->d()Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Lteam/opay/pay/payment/bill/ChildBillMoreActivitesListAdapter;->l(Lteam/opay/pay/payment/bill/MoreMarketingWidget;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->q()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->d()Lteam/opay/pay/payment/bill/MoreMarketingWidget;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    iget-object v3, v6, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->b:Lag8;

    .line 263
    .line 264
    invoke-virtual {v1, v2, v0, v3}, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;->d(Lteam/opay/pay/payment/bill/MoreMarketingWidget;Landroidx/recyclerview/widget/RecyclerView;Lag8;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_5

    .line 268
    .line 269
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->f()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_d

    .line 279
    .line 280
    new-instance v2, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_c

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    move-object v9, v5

    .line 300
    check-cast v9, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 301
    .line 302
    invoke-virtual {v9}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    if-eqz v9, :cond_b

    .line 307
    .line 308
    invoke-virtual {v9}, Lteam/opay/pay/payment/bill/MoreServiceTitleData;->getCode()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    goto :goto_2

    .line 313
    :cond_b
    move-object v9, v8

    .line 314
    :goto_2
    const-string v10, "New"

    .line 315
    .line 316
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    if-eqz v9, :cond_a

    .line 321
    .line 322
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :cond_c
    move-object v8, v2

    .line 327
    :cond_d
    if-eqz v8, :cond_f

    .line 328
    .line 329
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_e

    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_f

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 360
    .line 361
    new-instance v7, Lteam/opay/pay/payment/bill/MoreServiceListData;

    .line 362
    .line 363
    invoke-virtual {v5}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getModule()Lteam/opay/pay/payment/bill/MoreServiceTitleData;

    .line 364
    .line 365
    .line 366
    move-result-object v8

    .line 367
    invoke-virtual {v5}, Lteam/opay/pay/payment/bill/MoreServiceListData;->getData()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    const/4 v9, 0x3

    .line 372
    invoke-direct {v7, v9, v8, v5}, Lteam/opay/pay/payment/bill/MoreServiceListData;-><init>(ILteam/opay/pay/payment/bill/MoreServiceTitleData;Ljava/util/List;)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_f
    :goto_4
    iget-object v0, v6, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->b:Lag8;

    .line 388
    .line 389
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    new-instance v10, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;

    .line 398
    .line 399
    const/4 v5, 0x0

    .line 400
    move-object v0, v10

    .line 401
    move-object v2, v3

    .line 402
    move-object v3, v4

    .line 403
    move-object/from16 v4, p0

    .line 404
    .line 405
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$1$5;-><init>(Ljava/util/List;Lteam/opay/pay/payment/bill/MoreItemData;Landroid/view/View;Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;Ljr2;)V

    .line 406
    .line 407
    .line 408
    const/4 v11, 0x2

    .line 409
    const/4 v12, 0x0

    .line 410
    const/4 v9, 0x0

    .line 411
    invoke-static/range {v7 .. v12}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_10
    sget v1, Lteam/opay/pay/R$id;->ad_list:I

    .line 416
    .line 417
    invoke-virtual {v0, v1, v5}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 425
    .line 426
    if-eqz v0, :cond_14

    .line 427
    .line 428
    invoke-static {v0}, Landroidx/core/view/a;->V(Landroid/view/View;)Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_12

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_12

    .line 439
    .line 440
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->a()Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    if-nez v1, :cond_11

    .line 445
    .line 446
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    :cond_11
    invoke-virtual {v0, v1}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 451
    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_12
    new-instance v1, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$lambda$11$$inlined$doOnLayout$1;

    .line 455
    .line 456
    invoke-direct {v1, v0, v3}, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter$convert$lambda$11$$inlined$doOnLayout$1;-><init>(Lteam/opay/pay/ad/OpayAdBannerView;Lteam/opay/pay/payment/bill/MoreItemData;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 460
    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_13
    sget v0, Lteam/opay/pay/R$id;->more_av:I

    .line 464
    .line 465
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Lteam/opay/pay/wallet/view/AnnouncementView;

    .line 470
    .line 471
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/MoreItemData;->e()Ljava/util/List;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    const-string v2, "ng_paybill_notice_first"

    .line 476
    .line 477
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/wallet/view/AnnouncementView;->i(Ljava/util/List;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :cond_14
    :goto_5
    return-void
.end method

.method public final p()Lag8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->b:Lag8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/payment/bill/BillMoreHomeAdapter;->c:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/payment/bill/BillMoreWidgetReporter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final r(Lteam/opay/pay/payment/bill/WidgetModuleList;Ljava/lang/String;)V
    .locals 23

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "activity_id"

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getMid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "content_id"

    .line 16
    .line 17
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v1, v3, v4

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v2, v3, v1

    .line 29
    .line 30
    const-string v1, "More_activtiy_click"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getEventType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "0"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    move-object/from16 v0, p0

    .line 49
    .line 50
    iget-object v2, v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const-string v3, "mContext"

    .line 53
    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Lteam/opay/pay/payment/bill/WidgetModuleEvent;->getJumpUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 68
    .line 69
    const-string v1, ""

    .line 70
    .line 71
    :cond_1
    invoke-static {v2, v1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_2
    move-object/from16 v0, p0

    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getEventType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "5"

    .line 83
    .line 84
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_9

    .line 95
    .line 96
    sget-object v3, Lteam/opay/pay/cashier/result/ShareDialogFragment;->M:Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;

    .line 97
    .line 98
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/WidgetModuleEvent;->getShareJumpUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object v5, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    move-object v5, v1

    .line 111
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/WidgetModuleEvent;->getShareContent()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v6, v2

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move-object v6, v1

    .line 124
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/WidgetModuleEvent;->getShareTitle()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    move-object v10, v2

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    move-object v10, v1

    .line 137
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/payment/bill/WidgetModuleList;->getModuleEvent()Lteam/opay/pay/payment/bill/WidgetModuleEvent;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    invoke-virtual {v2}, Lteam/opay/pay/payment/bill/WidgetModuleEvent;->getShareIcon()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object v11, v2

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-object v11, v1

    .line 150
    :goto_3
    const v21, 0x1ff30

    .line 151
    .line 152
    .line 153
    const/16 v22, 0x0

    .line 154
    .line 155
    const-string v4, ""

    .line 156
    .line 157
    const-string v7, ""

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    const/4 v15, 0x0

    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    const/16 v18, 0x0

    .line 170
    .line 171
    const/16 v19, 0x0

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    invoke-static/range {v3 .. v22}, Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;->c(Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/cashier/result/ShareDialogFragment;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    new-instance v3, Ll61;

    .line 180
    .line 181
    invoke-direct {v3}, Ll61;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v3}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r0(Lkotlin/jvm/functions/Function1;)V

    .line 185
    .line 186
    .line 187
    sget-object v3, Ld00;->a:Ld00;

    .line 188
    .line 189
    invoke-virtual {v3}, Ld00;->e()Landroid/app/Activity;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    instance-of v4, v3, Landroidx/fragment/app/FragmentActivity;

    .line 194
    .line 195
    if-eqz v4, :cond_7

    .line 196
    .line 197
    move-object v1, v3

    .line 198
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 199
    .line 200
    :cond_7
    if-nez v1, :cond_8

    .line 201
    .line 202
    return-void

    .line 203
    :cond_8
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-class v3, Lteam/opay/pay/cashier/result/ShareDialogFragment;

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 222
    .line 223
    .line 224
    :cond_9
    :goto_4
    return-void
.end method
