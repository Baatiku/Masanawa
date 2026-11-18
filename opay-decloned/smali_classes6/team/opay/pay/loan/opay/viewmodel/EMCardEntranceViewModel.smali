.class public final Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;
.super Lteam/opay/easemoni/base/OKashBaseViewModel;
.source "EMCardEntranceViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%J\u0006\u0010\'\u001a\u00020%J\u0006\u0010(\u001a\u00020%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\rR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\rR\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\rR\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\rR\u0019\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\rR\u0019\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\rR\u0019\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\r\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;",
        "Lteam/opay/easemoni/base/OKashBaseViewModel;",
        "cardEntranceRepository",
        "Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;",
        "mGetFundsRepository",
        "Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;",
        "<init>",
        "(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)V",
        "cardAuthRsp",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lteam/opay/easemoni/api/bean/EMH5ResultBean;",
        "Lteam/opay/easemoni/api/bean/CardAuthRsp;",
        "getCardAuthRsp",
        "()Landroidx/lifecycle/MutableLiveData;",
        "showUserRefusedPage",
        "getShowUserRefusedPage",
        "showOrderRefusedPage",
        "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
        "getShowOrderRefusedPage",
        "showLoaningPage",
        "getShowLoaningPage",
        "showNormalLoanedPage",
        "getShowNormalLoanedPage",
        "showLoopLoanedPage",
        "getShowLoopLoanedPage",
        "showMarketingPage",
        "getShowMarketingPage",
        "getLoanAdsLiveData",
        "Lteam/opay/easemoni/api/bean/LoanAdsRsp;",
        "getGetLoanAdsLiveData",
        "mBanners",
        "Lteam/opay/easemoni/api/bean/LoanEntranceBannerRsp;",
        "getMBanners",
        "mBnplBanners",
        "Lteam/opay/easemoni/api/bean/BnplEntranceBannerRsp;",
        "getMBnplBanners",
        "cardAuthForH5",
        "",
        "getLoadAds",
        "getLoanEntranceBanner",
        "getBnplEntranceBanner",
        "loan_release"
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
.field private final cardAuthRsp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/EMH5ResultBean<",
            "Lteam/opay/easemoni/api/bean/CardAuthRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getLoanAdsLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/LoanAdsRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBanners:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/LoanEntranceBannerRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mBnplBanners:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/BnplEntranceBannerRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mGetFundsRepository:Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showLoaningPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showLoopLoanedPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showMarketingPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showNormalLoanedPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showOrderRefusedPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final showUserRefusedPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardAuthRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;)V
    .locals 1
    .param p1    # Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cardEntranceRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mGetFundsRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/easemoni/base/OKashBaseViewModel;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mGetFundsRepository:Lteam/opay/easemoni/module/loan/viewmodel/EMGetFundsRepository;

    .line 17
    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardAuthRsp:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showUserRefusedPage:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showOrderRefusedPage:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showLoaningPage:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showNormalLoanedPage:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showLoopLoanedPage:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showMarketingPage:Landroidx/lifecycle/MutableLiveData;

    .line 66
    .line 67
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getLoanAdsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBanners:Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBnplBanners:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    return-void
.end method

.method private static final cardAuthForH5$lambda$0(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Ljava/lang/String;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/loan/cash/credit/core/network/ApiErrorResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardAuthRsp:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance p1, Lteam/opay/easemoni/api/bean/EMH5ResultBean;

    .line 9
    .line 10
    check-cast p2, Lcom/loan/cash/credit/core/network/ApiErrorResponse;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiErrorResponse;->getData()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lteam/opay/easemoni/api/HeadBodyResponse;->a()Lteam/opay/easemoni/api/HeadBodyResponseHeader;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lteam/opay/easemoni/api/HeadBodyResponseHeader;->a()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, v1

    .line 32
    :goto_0
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiErrorResponse;->getData()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v2, v1

    .line 48
    :goto_1
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiErrorResponse;->getData()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v3}, Lteam/opay/easemoni/api/HeadBodyResponse;->b()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move-object v3, v1

    .line 62
    :goto_2
    invoke-direct {p1, v0, v2, v3}, Lteam/opay/easemoni/api/bean/EMH5ResultBean;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiErrorResponse;->getData()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/easemoni/api/bean/CardAuthRsp;->getUserId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    move-object p0, v1

    .line 90
    :goto_3
    invoke-static {p0}, Lxv4;->R(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Ln67;->a:Ln67;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiErrorResponse;->getData()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/CardAuthRsp;->getUserId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_4
    invoke-virtual {p0, v1}, Ln67;->m(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_5
    instance-of v0, p2, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 121
    .line 122
    if-eqz v0, :cond_c

    .line 123
    .line 124
    check-cast p2, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 131
    .line 132
    invoke-virtual {v0}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0}, Lteam/opay/easemoni/api/bean/CardAuthRsp;->getToken()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_4

    .line 145
    :cond_6
    move-object v0, v1

    .line 146
    :goto_4
    if-nez v0, :cond_7

    .line 147
    .line 148
    const-string v0, ""

    .line 149
    .line 150
    :cond_7
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardAuthRsp:Landroidx/lifecycle/MutableLiveData;

    .line 151
    .line 152
    new-instance v2, Lteam/opay/easemoni/api/bean/EMH5ResultBean;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 159
    .line 160
    invoke-virtual {v3}, Lteam/opay/easemoni/api/HeadBodyResponse;->a()Lteam/opay/easemoni/api/HeadBodyResponseHeader;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    if-eqz v3, :cond_8

    .line 165
    .line 166
    invoke-virtual {v3}, Lteam/opay/easemoni/api/HeadBodyResponseHeader;->a()Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    goto :goto_5

    .line 171
    :cond_8
    move-object v3, v1

    .line 172
    :goto_5
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 177
    .line 178
    invoke-virtual {v4}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 187
    .line 188
    invoke-virtual {v5}, Lteam/opay/easemoni/api/HeadBodyResponse;->b()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-direct {v2, v3, v4, v5}, Lteam/opay/easemoni/api/bean/EMH5ResultBean;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-nez p0, :cond_9

    .line 203
    .line 204
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object p0

    .line 207
    :cond_9
    invoke-static {v0}, Lxv4;->Q(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Lxv4;->M(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    check-cast p0, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 218
    .line 219
    invoke-virtual {p0}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 224
    .line 225
    if-eqz p0, :cond_a

    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/easemoni/api/bean/CardAuthRsp;->getUserId()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    goto :goto_6

    .line 232
    :cond_a
    move-object p0, v1

    .line 233
    :goto_6
    invoke-static {p0}, Lxv4;->R(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget-object p0, Ln67;->a:Ln67;

    .line 237
    .line 238
    invoke-virtual {p2}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 243
    .line 244
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    check-cast p1, Lteam/opay/easemoni/api/bean/CardAuthRsp;

    .line 249
    .line 250
    if-eqz p1, :cond_b

    .line 251
    .line 252
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/CardAuthRsp;->getUserId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :cond_b
    invoke-virtual {p0, v1}, Ln67;->m(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 260
    .line 261
    return-object p0
.end method

.method private static final getBnplEntranceBanner$lambda$3(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiErrorResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBnplBanners:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBnplBanners:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    check-cast p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lteam/opay/easemoni/api/bean/BnplResponse;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/BnplResponse;->c()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private static final getLoadAds$lambda$1(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiErrorResponse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getLoanAdsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    check-cast p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 18
    .line 19
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final getLoanEntranceBanner$lambda$2(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiErrorResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBanners:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lto3;->a:Lto3;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v0, "EM_NEW_GET_LOAN_ENTRANCE_BANNER_ERROR"

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Lto3;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBanners:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    check-cast p1, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/loan/cash/credit/core/network/ApiSuccessResponse;->getData()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lteam/opay/easemoni/api/bean/OKashResponse;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/easemoni/api/bean/OKashResponse;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Ljava/lang/String;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardAuthForH5$lambda$0(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Ljava/lang/String;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getBnplEntranceBanner$lambda$3(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getLoadAds$lambda$1(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getLoanEntranceBanner$lambda$2(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Lcom/loan/cash/credit/core/network/ApiResponse;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final cardAuthForH5()V
    .locals 12

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->phone()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v5, 0x4

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v2, "+"

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-static {v1, v2, v3, v2}, Lqi4;->l(Ljava/lang/String;Lteam/opay/easemoni/utils/formate/Country;ILjava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->token()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    .line 44
    .line 45
    new-instance v11, Lteam/opay/easemoni/api/bean/AuthReq;

    .line 46
    .line 47
    const/16 v9, 0x8

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v4, v11

    .line 52
    move-object v5, v1

    .line 53
    invoke-direct/range {v4 .. v10}, Lteam/opay/easemoni/api/bean/AuthReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v11}, Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;->a(Lteam/opay/easemoni/api/bean/AuthReq;)Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v4, Lcs3;

    .line 61
    .line 62
    invoke-direct {v4, p0, v1}, Lcs3;-><init>(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2, v4, v3, v2}, Lcom/loan/cash/credit/core/network/OneShotObserverKt;->addOneShotObserver$default(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final getBnplEntranceBanner()V
    .locals 4

    .line 1
    invoke-static {}, Lnca;->K()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/loan/cash/credit/bnpl/BNPLAnalytics;->INSTANCE:Lcom/loan/cash/credit/bnpl/BNPLAnalytics;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Lkotlin/Pair;

    .line 15
    .line 16
    const-string v2, "opayCapp_sdk_finance_card_no_opayid"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/loan/cash/credit/bnpl/BNPLAnalytics;->onEvent(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v1, Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;

    .line 23
    .line 24
    const-string v2, "finance_entrance_banner_v2"

    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;->b(Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;)Landroidx/lifecycle/LiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Les3;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Les3;-><init>(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v3, v1, v2, v3}, Lcom/loan/cash/credit/core/network/OneShotObserverKt;->addOneShotObserver$default(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getCardAuthRsp()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/EMH5ResultBean<",
            "Lteam/opay/easemoni/api/bean/CardAuthRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardAuthRsp:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGetLoanAdsLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/LoanAdsRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->getLoanAdsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoadAds()V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;->c()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lds3;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lds3;-><init>(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0, v3, v1, v2, v3}, Lcom/loan/cash/credit/core/network/OneShotObserverKt;->addOneShotObserver$default(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getLoanEntranceBanner()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;

    .line 2
    .line 3
    invoke-static {}, Lnca;->K()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "opay_finance_loan_entrance_banner"

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->cardEntranceRepository:Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lteam/opay/easemoni/module/opay/viewmodel/EMCardEntranceRepository;->d(Lteam/opay/easemoni/api/bean/LoanEntranceBannerReq;)Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lfs3;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lfs3;-><init>(Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v0, v3, v1, v2, v3}, Lcom/loan/cash/credit/core/network/OneShotObserverKt;->addOneShotObserver$default(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getMBanners()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/LoanEntranceBannerRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBanners:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMBnplBanners()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/BnplEntranceBannerRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->mBnplBanners:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowLoaningPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showLoaningPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowLoopLoanedPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showLoopLoanedPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowMarketingPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showMarketingPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowNormalLoanedPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showNormalLoanedPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowOrderRefusedPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardEntranceRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showOrderRefusedPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowUserRefusedPage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/easemoni/api/bean/CardAuthRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/loan/opay/viewmodel/EMCardEntranceViewModel;->showUserRefusedPage:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
