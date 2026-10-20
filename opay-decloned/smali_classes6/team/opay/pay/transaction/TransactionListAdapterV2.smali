.class public final Lteam/opay/pay/transaction/TransactionListAdapterV2;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "TransactionListAdapterV2.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/transaction/TransactionHistoryBeanV2;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010\rR\"\u00100\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010*\u001a\u0004\u0008-\u0010\r\"\u0004\u0008.\u0010/R2\u00109\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u000102\u0012\u0004\u0012\u00020\u0016\u0018\u0001018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R*\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@\u00a8\u0006B"
    }
    d2 = {
        "Lteam/opay/pay/transaction/TransactionListAdapterV2;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/transaction/TransactionHistoryBeanV2;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "filter",
        "Lteam/opay/pay/transaction/TransactionViewModel;",
        "viewModel",
        "",
        "showAnalysis",
        "<init>",
        "(Lteam/opay/pay/transaction/HistoryFilter$Filter;Lteam/opay/pay/transaction/TransactionViewModel;Z)V",
        "q",
        "()Z",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateDefViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;",
        "baseViewHolder",
        "bean",
        "",
        "o",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V",
        "n",
        "transactionBean",
        "p",
        "t",
        "m",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;)V",
        "a",
        "Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "getFilter",
        "()Lteam/opay/pay/transaction/HistoryFilter$Filter;",
        "setFilter",
        "(Lteam/opay/pay/transaction/HistoryFilter$Filter;)V",
        "b",
        "Lteam/opay/pay/transaction/TransactionViewModel;",
        "getViewModel",
        "()Lteam/opay/pay/transaction/TransactionViewModel;",
        "c",
        "Z",
        "getShowAnalysis",
        "d",
        "r",
        "s",
        "(Z)V",
        "isFromBank",
        "Lkotlin/Function1;",
        "",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "getTransactionStatisticsCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "x",
        "(Lkotlin/jvm/functions/Function1;)V",
        "transactionStatisticsCallback",
        "Lkotlin/Function0;",
        "f",
        "Lkotlin/jvm/functions/Function0;",
        "getTransactionDateFilterCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "w",
        "(Lkotlin/jvm/functions/Function0;)V",
        "transactionDateFilterCallback",
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
.field public a:Lteam/opay/pay/transaction/HistoryFilter$Filter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/transaction/TransactionViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z

.field public d:Z

.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function0;
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
.method public constructor <init>(Lteam/opay/pay/transaction/HistoryFilter$Filter;Lteam/opay/pay/transaction/TransactionViewModel;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$Filter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/TransactionViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->a:Lteam/opay/pay/transaction/HistoryFilter$Filter;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->b:Lteam/opay/pay/transaction/TransactionViewModel;

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->c:Z

    const/4 p1, 0x1

    .line 6
    sget p2, Lteam/opay/pay/R$layout;->transactions_title_item:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x2

    .line 7
    sget p2, Lteam/opay/pay/R$layout;->transactions_data_item:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x3

    .line 8
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_view_more:I

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x4

    .line 9
    sget p2, Lteam/opay/pay/R$layout;->item_transaction_banner_layout:I

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x5

    .line 11
    sget p2, Lteam/opay/pay/R$layout;->osdk_item_view_no_more_space:I

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/transaction/HistoryFilter$Filter;Lteam/opay/pay/transaction/TransactionViewModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/transaction/TransactionListAdapterV2;-><init>(Lteam/opay/pay/transaction/HistoryFilter$Filter;Lteam/opay/pay/transaction/TransactionViewModel;Z)V

    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/transaction/TransactionListAdapterV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->u(Lteam/opay/pay/transaction/TransactionListAdapterV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/pay/transaction/TransactionListAdapterV2;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->v(Lteam/opay/pay/transaction/TransactionListAdapterV2;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lteam/opay/pay/transaction/TransactionListAdapterV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final v(Lteam/opay/pay/transaction/TransactionListAdapterV2;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->e()Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->o(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final m(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->d:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->Companion:Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;->b()Lteam/opay/pay/history/download/IndexDownloadTimeConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->getAcRequestFinishText()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_0
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->Companion:Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;

    .line 26
    .line 27
    invoke-virtual {v0}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig$Companion;->b()Lteam/opay/pay/history/download/IndexDownloadTimeConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lteam/opay/pay/history/download/IndexDownloadTimeConfig;->getRequestFinishText()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_3
    if-nez v2, :cond_1

    .line 38
    .line 39
    :goto_0
    sget v0, Lteam/opay/pay/R$id;->view_more:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "getView(...)"

    .line 46
    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 52
    .line 53
    .line 54
    sget v0, Lteam/opay/pay/R$id;->three_month_tip:I

    .line 55
    .line 56
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->e()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/transaction/TransactionHistoryBeanV2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseViewHolder"

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
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->n(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_2
    :goto_1
    const/4 v2, 0x2

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ne v3, v2, :cond_5

    .line 43
    .line 44
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->g()Lteam/opay/pay/transaction/TransactionInfoV2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_d

    .line 49
    .line 50
    instance-of v2, p1, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    check-cast v0, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 56
    .line 57
    :cond_4
    if-eqz v0, :cond_d

    .line 58
    .line 59
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->b()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {v0, v1, p1}, Lteam/opay/pay/transaction/BillCenterViewHolder;->f(Lteam/opay/pay/transaction/TransactionInfoV2;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_6

    .line 67
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x3

    .line 75
    if-ne v3, v4, :cond_7

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/TransactionListAdapterV2;->m(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 78
    .line 79
    .line 80
    goto :goto_6

    .line 81
    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v3, 0x4

    .line 89
    if-ne v1, v3, :cond_c

    .line 90
    .line 91
    sget v1, Lteam/opay/pay/R$id;->adBanner:I

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 98
    .line 99
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getLoopPager()Lteam/opay/pay/widget/LoopViewPager;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_b

    .line 104
    .line 105
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getLoopPager()Lteam/opay/pay/widget/LoopViewPager;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    invoke-virtual {v1}, Lteam/opay/pay/widget/LoopViewPager;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_4

    .line 122
    :cond_9
    move-object v1, v0

    .line 123
    :goto_4
    if-eqz v1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->a()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_b

    .line 138
    .line 139
    invoke-virtual {p1}, Lteam/opay/pay/ad/OpayAdBannerView;->getLoopPager()Lteam/opay/pay/widget/LoopViewPager;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_a

    .line 144
    .line 145
    invoke-virtual {p1}, Lteam/opay/pay/widget/LoopViewPager;->s()V

    .line 146
    .line 147
    .line 148
    :cond_a
    return-void

    .line 149
    :cond_b
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->a()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-eqz p2, :cond_d

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-static {p1, p2, v1, v2, v0}, Lteam/opay/pay/ad/OpayAdBannerView;->e(Lteam/opay/pay/ad/OpayAdBannerView;Ljava/util/List;ZILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_c
    :goto_5
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 164
    .line 165
    .line 166
    :cond_d
    :goto_6
    return-void
.end method

.method public onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance p2, Lteam/opay/pay/transaction/BillCenterViewHolder;

    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$layout;->transactions_data_item:I

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "getItemView(...)"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p2, p1, v1, v0, v1}, Lteam/opay/pay/transaction/BillCenterViewHolder;-><init>(Landroid/view/View;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->onCreateDefViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "onCreateDefViewHolder(...)"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public final p(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V
    .locals 3

    .line 1
    sget-object v0, Ld1f;->a:Ld1f;

    .line 2
    .line 3
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->e()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Le1f;->a(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    sget v0, Lteam/opay/pay/R$id;->tv_title_date:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 29
    .line 30
    .line 31
    sget-object v0, Lbd9;->a:Lbd9;

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lbd9;->m(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget v2, Lteam/opay/pay/R$id;->tv_in_amount:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->f()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Lbd9;->m(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget v0, Lteam/opay/pay/R$id;->tv_out_amount:I

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final q()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;

    .line 33
    .line 34
    invoke-virtual {v0}, Lteam/opay/pay/transaction/TransactionHistoryBeanV2;->c()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v0, v3, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    return v2
.end method

.method public final r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V
    .locals 4

    .line 1
    sget v0, Lteam/opay/pay/R$id;->vClickView:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->f:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-static {v0, v3}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lpze;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lpze;-><init>(Lteam/opay/pay/transaction/TransactionListAdapterV2;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget v0, Lteam/opay/pay/R$id;->ivDateArrow:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "getView(...)"

    .line 36
    .line 37
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->f:Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 46
    .line 47
    .line 48
    sget v0, Lteam/opay/pay/R$id;->iv_statistics:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-boolean v0, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->c:Z

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lqze;

    .line 64
    .line 65
    invoke-direct {v0, p0, p2}, Lqze;-><init>(Lteam/opay/pay/transaction/TransactionListAdapterV2;Lteam/opay/pay/transaction/TransactionHistoryBeanV2;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method public final w(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionListAdapterV2;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
