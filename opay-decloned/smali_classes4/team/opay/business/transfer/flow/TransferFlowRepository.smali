.class public final Lteam/opay/business/transfer/flow/TransferFlowRepository;
.super Ljava/lang/Object;
.source "FlowViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0080@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\nH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\nH\u0086@\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\t\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J/\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u001c0\u001b2\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u0017\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0004\u0008 \u0010!J\u001e\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\n2\u0006\u0010\u0017\u001a\u00020\"H\u0086@\u00a2\u0006\u0004\u0008$\u0010%J7\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0\u001c0\u001b2\u0006\u0010\u0017\u001a\u00020\"2\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010#\u0012\u0004\u0012\u00020\'0&\u00a2\u0006\u0004\u0008(\u0010)J?\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020,0\u001c0\u001b2\u0006\u0010\u0017\u001a\u00020\"2\u0006\u0010+\u001a\u00020*2\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010#\u0012\u0004\u0012\u00020\'0&\u00a2\u0006\u0004\u0008-\u0010.J\u001e\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\n2\u0006\u0010\u0017\u001a\u00020/H\u0086@\u00a2\u0006\u0004\u00081\u00102J\u001f\u00107\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u000206050403\u00a2\u0006\u0004\u00087\u00108J!\u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;04032\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008<\u0010=J!\u0010@\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020?04032\u0006\u0010\u0017\u001a\u00020>\u00a2\u0006\u0004\u0008@\u0010AJ!\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020C04032\u0006\u0010\u0017\u001a\u00020B\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020F0403\u00a2\u0006\u0004\u0008G\u00108J!\u0010J\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020I04032\u0006\u0010\u0017\u001a\u00020H\u00a2\u0006\u0004\u0008J\u0010KJ\u0016\u0010M\u001a\u0008\u0012\u0004\u0012\u00020L0\nH\u0086@\u00a2\u0006\u0004\u0008M\u0010\u0010J#\u0010O\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000104032\u0006\u0010\t\u001a\u00020NH\u0000\u00a2\u0006\u0004\u0008O\u0010PJ\u0019\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Q0403\u00a2\u0006\u0004\u0008R\u00108J!\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020T04032\u0006\u0010\t\u001a\u00020S\u00a2\u0006\u0004\u0008U\u0010VJ\u0019\u0010X\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0403\u00a2\u0006\u0004\u0008X\u00108R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\\u00a8\u0006]"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/TransferFlowRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lyu;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lyu;)V",
        "Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;",
        "req",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;",
        "l",
        "(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/EodInfoResp;",
        "x",
        "(Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/BillCategoryResp;",
        "v",
        "Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;",
        "B",
        "(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/TransLabelReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "",
        "wrapper",
        "Lv56;",
        "Landroidx/paging/PagingData;",
        "n",
        "(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;",
        "Lteam/opay/business/transfer/flow/api/BindTransLabelReq;",
        "f",
        "(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
        "q",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "s",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;",
        "Lteam/opay/business/transfer/flow/internal/Period;",
        "period",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        "p",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;",
        "Lteam/opay/business/transfer/flow/api/TransactionActionReq;",
        "Lteam/opay/business/transfer/flow/api/TransactionActionResp;",
        "u",
        "(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "",
        "Lteam/opay/business/transfer/flow/api/MenuInfo;",
        "m",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/CategoryListReq;",
        "from",
        "Lteam/opay/business/transfer/flow/api/CategoryListResp;",
        "h",
        "(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;",
        "Lteam/opay/business/transfer/flow/api/TransactionDetailResp;",
        "k",
        "(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;",
        "Lteam/opay/business/transfer/flow/api/QueryComplaintsResp;",
        "w",
        "(Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;)Landroidx/lifecycle/LiveData;",
        "",
        "j",
        "Lteam/opay/business/transfer/flow/api/BillDownloadRequest;",
        "Lteam/opay/business/transfer/flow/api/BillDownloadResponse;",
        "i",
        "(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/BillDownloadTnResponse;",
        "y",
        "Lteam/opay/business/transfer/flow/api/OrderDetailReq;",
        "g",
        "(Lteam/opay/business/transfer/flow/api/OrderDetailReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
        "z",
        "Lteam/opay/business/transfer/flow/api/RefundOrderReq;",
        "Lteam/opay/business/transfer/flow/api/RefundOrderResp;",
        "A",
        "(Lteam/opay/business/transfer/flow/api/RefundOrderReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/UserAddressDto;",
        "e",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "b",
        "Lyu;",
        "business-transfer-flow_release"
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
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lyu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lyu;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->o(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->r(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->t(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/business/transfer/flow/TransferFlowRepository;)Lyu;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final o(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionDetails/TransactionLabelPagingSource;-><init>(Lyu;Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final r(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;-><init>(Lyu;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final t(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/business/transfer/flow/transactions/transactionList/TransactionPagingSource;-><init>(Lyu;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final A(Lteam/opay/business/transfer/flow/api/RefundOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/RefundOrderReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/RefundOrderReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/RefundOrderResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$i;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$i;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/RefundOrderReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final B(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lyu;->j(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/UserAddressDto;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$a;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final f(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/api/BindTransLabelReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/BindTransLabelReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lyu;->i(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g(Lteam/opay/business/transfer/flow/api/OrderDetailReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/OrderDetailReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/OrderDetailReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "req"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$b;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/OrderDetailReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/CategoryListReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/CategoryListReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/CategoryListResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$c;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/CategoryListReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final i(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/BillDownloadRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/BillDownloadRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/BillDownloadResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$d;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/BillDownloadRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$e;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$e;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final k(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/TransactionDetailResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$f;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$f;-><init>(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lyu;->s(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final m()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/transfer/flow/api/MenuInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryMenuList$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryMenuList$1;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundResource;->j()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final n(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/business/transfer/flow/api/TransLabelReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/internal/PagingResultWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransLabelReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Ljava/lang/String;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "wrapper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/paging/Pager;

    .line 12
    .line 13
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransLabelReq;->a()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransLabelReq;->a()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    div-int/lit8 v3, v1, 0x2

    .line 22
    .line 23
    invoke-virtual {p1}, Lteam/opay/business/transfer/flow/api/TransLabelReq;->a()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    new-instance v10, Landroidx/paging/PagingConfig;

    .line 28
    .line 29
    const/16 v8, 0x30

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    move-object v1, v10

    .line 36
    invoke-direct/range {v1 .. v9}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lw5f;

    .line 40
    .line 41
    invoke-direct {v4, p0, p1, p2}, Lw5f;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    move-object v1, v0

    .line 48
    move-object v2, v10

    .line 49
    invoke-direct/range {v1 .. v6}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/paging/Pager;->a()Lv56;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final p(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/internal/Period;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
            "Lteam/opay/business/transfer/flow/internal/Period;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "period"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "wrapper"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/paging/Pager;

    .line 17
    .line 18
    new-instance v10, Landroidx/paging/PagingConfig;

    .line 19
    .line 20
    const/16 v8, 0x30

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/16 v2, 0x14

    .line 24
    .line 25
    const/16 v3, 0xa

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/16 v5, 0x14

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v1, v10

    .line 33
    invoke-direct/range {v1 .. v9}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Lv5f;

    .line 37
    .line 38
    invoke-direct {v4, p0, p1, p3}, Lv5f;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v1, v0

    .line 45
    move-object v2, v10

    .line 46
    invoke-direct/range {v1 .. v6}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/paging/Pager;->a()Lv56;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    new-instance v0, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$$inlined$map$1;

    .line 54
    .line 55
    invoke-direct {v0, p3, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository$qryTransList$$inlined$map$1;-><init>(Lv56;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public final q(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lyu;->v(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final s(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/http/internal/PagingResultWrapper2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "wrapper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/paging/Pager;

    .line 12
    .line 13
    new-instance v10, Landroidx/paging/PagingConfig;

    .line 14
    .line 15
    const/16 v8, 0x30

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/16 v2, 0x14

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/16 v5, 0x14

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v1, v10

    .line 28
    invoke-direct/range {v1 .. v9}, Landroidx/paging/PagingConfig;-><init>(IIZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lx5f;

    .line 32
    .line 33
    invoke-direct {v4, p0, p1, p2}, Lx5f;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    move-object v1, v0

    .line 40
    move-object v2, v10

    .line 41
    invoke-direct/range {v1 .. v6}, Landroidx/paging/Pager;-><init>(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/paging/Pager;->a()Lv56;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method public final u(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/transfer/flow/api/TransactionActionReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/TransactionActionReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/TransactionActionResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lyu;->g(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final v(Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/BillCategoryResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v1}, Lyu$a;->c(Lyu;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final w(Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/QueryComplaintsResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$g;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final x(Ljr2;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/EodInfoResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v1}, Lyu$a;->d(Lyu;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final y(Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljr2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/transfer/flow/api/BillDownloadTnResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->b:Lyu;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lyu;->p(Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final z()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;-><init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
