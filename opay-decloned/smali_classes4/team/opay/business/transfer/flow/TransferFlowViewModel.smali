.class public final Lteam/opay/business/transfer/flow/TransferFlowViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "FlowViewModel.kt"

# interfaces
.implements Lfa2;
.implements Lxd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B1\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b0\u001a0\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001a0\u00192\u0006\u0010\u0014\u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"J?\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0*0\u00192\u0006\u0010\u0014\u001a\u00020#2\u0006\u0010%\u001a\u00020$2\u0014\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\'\u0012\u0004\u0012\u00020(0&\u00a2\u0006\u0004\u0008,\u0010-J7\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0*0\u00192\u0006\u0010\u0014\u001a\u00020#2\u0014\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\'\u0012\u0004\u0012\u00020(0&\u00a2\u0006\u0004\u0008.\u0010/J\u001e\u00100\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00152\u0006\u0010\u0014\u001a\u00020#H\u0086@\u00a2\u0006\u0004\u00080\u00101J/\u00104\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0*0\u00192\u0006\u0010\u0014\u001a\u0002022\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000e03\u00a2\u0006\u0004\u00084\u00105J\u001e\u00108\u001a\u0008\u0012\u0004\u0012\u0002070\u00152\u0006\u0010\u0014\u001a\u000206H\u0086@\u00a2\u0006\u0004\u00088\u00109J!\u0010<\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0\u001a0\u00192\u0006\u0010\u0014\u001a\u00020:\u00a2\u0006\u0004\u0008<\u0010=J\u0019\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0\u001a0\u0019\u00a2\u0006\u0004\u0008?\u0010\u001eJ!\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A0\u001a0\u00192\u0006\u0010\u0014\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CJ\u0016\u0010E\u001a\u0008\u0012\u0004\u0012\u00020D0\u0015H\u0086@\u00a2\u0006\u0004\u0008E\u0010FJ!\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020H0\u001a0\u00192\u0006\u0010\u0014\u001a\u00020G\u00a2\u0006\u0004\u0008I\u0010JJ!\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002070\u001a0\u00192\u0006\u0010L\u001a\u00020K\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\u00102\u0008\u0010O\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008P\u0010\u0012J\u0017\u0010R\u001a\u00020\u00102\u0008\u0010Q\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008R\u0010\u0012J\r\u0010S\u001a\u00020\u0010\u00a2\u0006\u0004\u0008S\u0010TJ\u0019\u0010V\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020U0\u001a0\u0019\u00a2\u0006\u0004\u0008V\u0010\u001eJ!\u0010Y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020X0\u001a0\u00192\u0006\u0010L\u001a\u00020W\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0019\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020[0\u001a0\u0019\u00a2\u0006\u0004\u0008\\\u0010\u001eJ\u0016\u0010^\u001a\u0008\u0012\u0004\u0012\u00020]0\u0015H\u0086@\u00a2\u0006\u0004\u0008^\u0010FJ\u001e\u0010a\u001a\u0008\u0012\u0004\u0012\u00020`0\u00152\u0006\u0010L\u001a\u00020_H\u0086@\u00a2\u0006\u0004\u0008a\u0010bJ\u0016\u0010d\u001a\u0008\u0012\u0004\u0012\u00020c0\u0015H\u0086@\u00a2\u0006\u0004\u0008d\u0010FJ\u001e\u0010f\u001a\u0008\u0012\u0004\u0012\u0002070\u00152\u0006\u0010L\u001a\u00020eH\u0086@\u00a2\u0006\u0004\u0008f\u0010gJ$\u0010j\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020i0\u001a0\u00192\u0006\u0010\u0014\u001a\u00020hH\u0096\u0001\u00a2\u0006\u0004\u0008j\u0010kJ*\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020m0\u001a0\u00192\u000c\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001bH\u0096\u0001\u00a2\u0006\u0004\u0008n\u0010oJ*\u0010r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020q0\u001b0\u001a0\u00192\u0006\u0010L\u001a\u00020pH\u0097\u0001\u00a2\u0006\u0004\u0008r\u0010sJ,\u0010v\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010u0\u001b0\u001a0\u00192\u0006\u0010L\u001a\u00020tH\u0097\u0001\u00a2\u0006\u0004\u0008v\u0010wJ\u001e\u0010z\u001a\u0008\u0012\u0004\u0012\u00020y0\u00152\u0006\u0010L\u001a\u00020xH\u0097A\u00a2\u0006\u0004\u0008z\u0010{R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008r\u0010|R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010}R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008~\u0010\u007fR\u0015\u0010\n\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008z\u0010\u0080\u0001R\u0016\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R@\u0010\u008a\u0001\u001a&\u0012\u0004\u0012\u00020\u000e\u0012\u0007\u0012\u0005\u0018\u00010\u0084\u00010\u0083\u0001j\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0007\u0012\u0005\u0018\u00010\u0084\u0001`\u0085\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001d\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00020\u000e0\u008b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008v\u0010\u008c\u0001R!\u0010\u0091\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00198\u0006\u00a2\u0006\u000f\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0005\u0008\u0090\u0001\u0010\u001eR,\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001\"\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001f\u0010\u009c\u0001\u001a\n\u0012\u0005\u0012\u00030\u009a\u00010\u008b\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u008c\u0001R!\u0010\u009e\u0001\u001a\t\u0012\u0005\u0012\u00030\u009a\u00010\u00198\u0006\u00a2\u0006\u000e\n\u0005\u0008n\u0010\u008f\u0001\u001a\u0005\u0008\u009d\u0001\u0010\u001eR*\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u009f\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001\"\u0005\u0008\u00a3\u0001\u0010\u0012R*\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00a5\u0001\u0010\u00a0\u0001\u001a\u0006\u0008\u00a6\u0001\u0010\u00a2\u0001\"\u0005\u0008\u00a7\u0001\u0010\u0012\u00a8\u0006\u00a9\u0001"
    }
    d2 = {
        "Lteam/opay/business/transfer/flow/TransferFlowViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lfa2;",
        "Lxd;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/business/transfer/flow/TransferFlowRepository;",
        "repository",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "provider",
        "activeProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/business/transfer/flow/TransferFlowRepository;Landroidx/lifecycle/SavedStateHandle;Lfa2;Lxd;)V",
        "",
        "task",
        "",
        "P",
        "(Ljava/lang/String;)V",
        "Lteam/opay/business/transfer/flow/api/TransactionActionReq;",
        "request",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/transfer/flow/api/TransactionActionResp;",
        "K",
        "(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "",
        "Lteam/opay/business/transfer/flow/api/MenuInfo;",
        "F",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/CategoryListReq;",
        "Lteam/opay/business/transfer/flow/api/CategoryListResp;",
        "u",
        "(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/TransactionsReq;",
        "Lteam/opay/business/transfer/flow/internal/Period;",
        "period",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/business/transfer/flow/api/TransactionsResp;",
        "Lteam/opay/business/transfer/flow/api/TransactionInfo;",
        "wrapper",
        "Landroidx/paging/PagingData;",
        "Lteam/opay/business/transfer/flow/transactions/transactionList/UiModel;",
        "H",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;",
        "J",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;",
        "I",
        "(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/TransLabelReq;",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "G",
        "(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/BindTransLabelReq;",
        "",
        "s",
        "(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;",
        "Lteam/opay/business/transfer/flow/api/TransactionDetailResp;",
        "D",
        "(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "w",
        "Lteam/opay/business/transfer/flow/api/BillDownloadRequest;",
        "Lteam/opay/business/transfer/flow/api/BillDownloadResponse;",
        "v",
        "(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/BillDownloadTnResponse;",
        "O",
        "(Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;",
        "Lteam/opay/business/transfer/flow/api/QueryComplaintsResp;",
        "M",
        "(Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/OrderDetailReq;",
        "req",
        "t",
        "(Lteam/opay/business/transfer/flow/api/OrderDetailReq;)Landroidx/lifecycle/LiveData;",
        "reason",
        "W",
        "method",
        "V",
        "S",
        "()V",
        "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
        "Q",
        "Lteam/opay/business/transfer/flow/api/RefundOrderReq;",
        "Lteam/opay/business/transfer/flow/api/RefundOrderResp;",
        "R",
        "(Lteam/opay/business/transfer/flow/api/RefundOrderReq;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/transfer/flow/api/UserAddressDto;",
        "r",
        "Lteam/opay/business/transfer/flow/api/EodInfoResp;",
        "N",
        "Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;",
        "Lteam/opay/business/transfer/flow/api/BalanceDetailResponse;",
        "E",
        "(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/transfer/flow/api/BillCategoryResp;",
        "L",
        "Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;",
        "U",
        "(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/chat/api/OrderIMReq;",
        "Lteam/opay/business/chat/api/ChatOrderInfo;",
        "c",
        "(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;",
        "adpCode",
        "Lteam/opay/business/provider/active/AdResponse;",
        "l",
        "(Ljava/util/List;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/BannerRequest;",
        "Lteam/opay/business/provider/active/BannerEntity;",
        "b",
        "(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/NoticeRequest;",
        "Lteam/opay/business/provider/active/NoticeEntity;",
        "h",
        "(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/provider/active/BannerPageFlagRequest;",
        "Lteam/opay/business/provider/active/BannerPageFlagResponse;",
        "e",
        "(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;",
        "Landroid/app/Application;",
        "Lteam/opay/business/transfer/flow/TransferFlowRepository;",
        "d",
        "Landroidx/lifecycle/SavedStateHandle;",
        "Lfa2;",
        "f",
        "Lxd;",
        "Ljava/util/HashMap;",
        "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
        "Lkotlin/collections/HashMap;",
        "g",
        "Ljava/util/HashMap;",
        "y",
        "()Ljava/util/HashMap;",
        "filters",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "_refreshFilters",
        "i",
        "Landroidx/lifecycle/LiveData;",
        "z",
        "refreshFilters",
        "Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "j",
        "Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "x",
        "()Lteam/opay/business/transfer/flow/api/FilterInfo;",
        "T",
        "(Lteam/opay/business/transfer/flow/api/FilterInfo;)V",
        "filterInfo",
        "",
        "k",
        "_refundEnable",
        "A",
        "refundEnable",
        "m",
        "Ljava/lang/String;",
        "C",
        "()Ljava/lang/String;",
        "setRefundReason",
        "refundReason",
        "n",
        "B",
        "setRefundMethod",
        "refundMethod",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/business/transfer/flow/TransferFlowRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/SavedStateHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lfa2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lxd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lteam/opay/business/transfer/flow/api/FilterInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/business/transfer/flow/TransferFlowRepository;Landroidx/lifecycle/SavedStateHandle;Lfa2;Lxd;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/transfer/flow/TransferFlowRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lfa2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lxd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "savedStateHandle"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "provider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "activeProvider"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->b:Landroid/app/Application;

    .line 30
    .line 31
    iput-object p2, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 32
    .line 33
    iput-object p3, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->d:Landroidx/lifecycle/SavedStateHandle;

    .line 34
    .line 35
    iput-object p4, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->e:Lfa2;

    .line 36
    .line 37
    iput-object p5, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->f:Lxd;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->g:Ljava/util/HashMap;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->l:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->k(Lteam/opay/business/transfer/flow/api/TransactionDetailRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final E(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->l(Lteam/opay/business/transfer/flow/api/BalanceDetailRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final F()Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->m()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final G(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/lifecycle/LiveData;
    .locals 7
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
            "Landroidx/lifecycle/LiveData<",
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->n(Lteam/opay/business/transfer/flow/api/TransLabelReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->c(Lv56;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final H(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;
    .locals 7
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
            "Landroidx/lifecycle/LiveData<",
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->p(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/business/transfer/flow/internal/Period;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->c(Lv56;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public final I(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->q(Lteam/opay/business/transfer/flow/api/TransactionsReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final J(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/lifecycle/LiveData;
    .locals 7
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
            "Landroidx/lifecycle/LiveData<",
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->s(Lteam/opay/business/transfer/flow/api/TransactionsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v5, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->c(Lv56;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final K(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->u(Lteam/opay/business/transfer/flow/api/TransactionActionReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final L(Ljr2;)Ljava/lang/Object;
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
            "Lteam/opay/business/transfer/flow/api/BillCategoryResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->v(Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final M(Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->w(Lteam/opay/business/transfer/flow/api/QueryComplaintsReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final N(Ljr2;)Ljava/lang/Object;
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
            "Lteam/opay/business/transfer/flow/api/EodInfoResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->x(Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final O(Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->y(Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final P(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Q()Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->z()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final R(Lteam/opay/business/transfer/flow/api/RefundOrderReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->A(Lteam/opay/business/transfer/flow/api/RefundOrderReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final S()V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->m:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->n:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final T(Lteam/opay/business/transfer/flow/api/FilterInfo;)V
    .locals 0
    .param p1    # Lteam/opay/business/transfer/flow/api/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->j:Lteam/opay/business/transfer/flow/api/FilterInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final U(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->B(Lteam/opay/business/transfer/flow/api/UpdateBillCategoryReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final V(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->m:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->n:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 30
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->m:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->n:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 28
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public b(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/BannerRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/BannerRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/BannerEntity;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->f:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->b(Lteam/opay/business/provider/active/BannerRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public c(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/chat/api/OrderIMReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/chat/api/OrderIMReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/chat/api/ChatOrderInfo;",
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->e:Lfa2;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lfa2;->c(Lteam/opay/business/chat/api/OrderIMReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public e(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/BannerPageFlagRequest;
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
            "Lteam/opay/business/provider/active/BannerPageFlagRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/provider/active/BannerPageFlagResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->f:Lxd;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lxd;->e(Lteam/opay/business/provider/active/BannerPageFlagRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/provider/active/NoticeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/active/NoticeRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/active/NoticeEntity;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->f:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->h(Lteam/opay/business/provider/active/NoticeRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public l(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/provider/active/AdResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adpCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->f:Lxd;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lxd;->l(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final r()Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->e()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final s(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->f(Lteam/opay/business/transfer/flow/api/BindTransLabelReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final t(Lteam/opay/business/transfer/flow/api/OrderDetailReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->g(Lteam/opay/business/transfer/flow/api/OrderDetailReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final u(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->h(Lteam/opay/business/transfer/flow/api/CategoryListReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final v(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->i(Lteam/opay/business/transfer/flow/api/BillDownloadRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1
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
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->j()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final x()Lteam/opay/business/transfer/flow/api/FilterInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->j:Lteam/opay/business/transfer/flow/api/FilterInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/business/transfer/flow/transactions/filter/TransferFilterTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->g:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowViewModel;->i:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method
