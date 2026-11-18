.class public final Lteam/opay/business/payroll/PayrollRepository;
.super Ljava/lang/Object;
.source "PayrollViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/payroll/PayrollRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 :2\u00020\u0001:\u0001;B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u00120\u00112\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0080@\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ#\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c2\u0006\u0010\r\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u001f\u0010 J#\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u001d0\u001c2\u0006\u0010\r\u001a\u00020!H\u0000\u00a2\u0006\u0004\u0008#\u0010$J!\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u001d0\u001c2\u0006\u0010\r\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J+\u0010-\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020+0*j\u0002`,0\u001d0\u001c2\u0006\u0010\r\u001a\u00020)\u00a2\u0006\u0004\u0008-\u0010.R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108\u00a8\u0006<"
    }
    d2 = {
        "Lteam/opay/business/payroll/PayrollRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lrv;",
        "apiService",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "banksDao",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "serviceDao",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lrv;Lteam/opay/opb/transfer/bank/room/BanksDao;Lteam/opay/opb/transfer/bank/room/ServicesDao;)V",
        "Lteam/opay/business/payroll/api/EmployeesReq;",
        "request",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "Lteam/opay/business/payroll/api/EmployeeInfo;",
        "wrapper",
        "Lv56;",
        "Landroidx/paging/PagingData;",
        "i",
        "(Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;",
        "Lteam/opay/business/payroll/api/OrderInput;",
        "orderInput",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/payroll/api/PreOrderResp;",
        "h",
        "(Lteam/opay/business/payroll/api/OrderInput;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/payroll/api/TransferHistoryRequest;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/payroll/api/BeneficiariesList;",
        "l",
        "(Lteam/opay/business/payroll/api/TransferHistoryRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/payroll/api/FreeFeeCountRequest;",
        "Lteam/opay/business/payroll/api/FreeFeeCountResp;",
        "m",
        "(Lteam/opay/business/payroll/api/FreeFeeCountRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/payroll/api/ACChannelTipRequest;",
        "Lteam/opay/core/http/HttpBusiness;",
        "b",
        "(Lteam/opay/business/payroll/api/ACChannelTipRequest;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/business/payroll/api/ServiceRequest;",
        "",
        "Lteam/opay/opb/transfer/bank/room/Service;",
        "Lteam/opay/business/payroll/ServiceList;",
        "k",
        "(Lteam/opay/business/payroll/api/ServiceRequest;)Landroidx/lifecycle/LiveData;",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "Lrv;",
        "c",
        "Lteam/opay/opb/transfer/bank/room/BanksDao;",
        "d",
        "Lteam/opay/opb/transfer/bank/room/ServicesDao;",
        "",
        "e",
        "J",
        "serviceRefreshTime",
        "f",
        "Companion",
        "business-payroll_release"
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
.field public static final f:Lteam/opay/business/payroll/PayrollRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:J


# instance fields
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lrv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/opb/transfer/bank/room/BanksDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/opb/transfer/bank/room/ServicesDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/payroll/PayrollRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/business/payroll/PayrollRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/business/payroll/PayrollRepository;->f:Lteam/opay/business/payroll/PayrollRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x18

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lteam/opay/business/payroll/PayrollRepository;->g:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lrv;Lteam/opay/opb/transfer/bank/room/BanksDao;Lteam/opay/opb/transfer/bank/room/ServicesDao;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/opb/transfer/bank/room/BanksDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/opb/transfer/bank/room/ServicesDao;
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
    const-string v0, "banksDao"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "serviceDao"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/business/payroll/PayrollRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/business/payroll/PayrollRepository;->b:Lrv;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/business/payroll/PayrollRepository;->c:Lteam/opay/opb/transfer/bank/room/BanksDao;

    .line 29
    .line 30
    iput-object p4, p0, Lteam/opay/business/payroll/PayrollRepository;->d:Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/payroll/PayrollRepository;->j(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/business/payroll/PayrollRepository;)Lrv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/payroll/PayrollRepository;->b:Lrv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/business/payroll/PayrollRepository;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic e(Lteam/opay/business/payroll/PayrollRepository;)Lteam/opay/opb/transfer/bank/room/ServicesDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/payroll/PayrollRepository;->d:Lteam/opay/opb/transfer/bank/room/ServicesDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/business/payroll/PayrollRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/business/payroll/PayrollRepository;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lteam/opay/business/payroll/PayrollRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/business/payroll/PayrollRepository;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public static final j(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/payroll/employee/EmployeePagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/business/payroll/PayrollRepository;->b:Lrv;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/business/payroll/employee/EmployeePagingSource;-><init>(Lrv;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final b(Lteam/opay/business/payroll/api/ACChannelTipRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/payroll/api/ACChannelTipRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/api/ACChannelTipRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/core/http/HttpBusiness;",
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
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/payroll/PayrollRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/payroll/PayrollRepository$a;-><init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/ACChannelTipRequest;Lteam/opay/core/http/arch/AppExecutors;)V

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

.method public final h(Lteam/opay/business/payroll/api/OrderInput;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/payroll/api/OrderInput;
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
            "Lteam/opay/business/payroll/api/OrderInput;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/payroll/api/PreOrderResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository;->b:Lrv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lrv;->b(Lteam/opay/business/payroll/api/OrderInput;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final i(Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/business/payroll/api/EmployeesReq;
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
            "Lteam/opay/business/payroll/api/EmployeesReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/business/payroll/api/EmployeeInfo;",
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
    new-instance v4, Lglb;

    .line 32
    .line 33
    invoke-direct {v4, p0, p1, p2}, Lglb;-><init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

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

.method public final k(Lteam/opay/business/payroll/api/ServiceRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/payroll/api/ServiceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/api/ServiceRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/opb/transfer/bank/room/Service;",
            ">;>;>;"
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
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/payroll/PayrollRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/payroll/PayrollRepository$b;-><init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/ServiceRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundResource;->j()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final l(Lteam/opay/business/payroll/api/TransferHistoryRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/payroll/api/TransferHistoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/api/TransferHistoryRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/payroll/api/BeneficiariesList;",
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
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/payroll/PayrollRepository$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/payroll/PayrollRepository$c;-><init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/TransferHistoryRequest;Lteam/opay/core/http/arch/AppExecutors;)V

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

.method public final m(Lteam/opay/business/payroll/api/FreeFeeCountRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/payroll/api/FreeFeeCountRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/payroll/api/FreeFeeCountRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/payroll/api/FreeFeeCountResp;",
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
    iget-object v0, p0, Lteam/opay/business/payroll/PayrollRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/payroll/PayrollRepository$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/payroll/PayrollRepository$d;-><init>(Lteam/opay/business/payroll/PayrollRepository;Lteam/opay/business/payroll/api/FreeFeeCountRequest;Lteam/opay/core/http/arch/AppExecutors;)V

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
