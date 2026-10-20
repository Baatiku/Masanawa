.class public final Lteam/opay/sme/store/StoreRepository;
.super Ljava/lang/Object;
.source "StoreViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/store/StoreRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 {2\u00020\u0001:\u0001|B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u001e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u001e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u001e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\n2\u0006\u0010\u000f\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\n2\u0006\u0010\u000f\u001a\u00020\u0014H\u0086@\u00a2\u0006\u0004\u0008\u001f\u0010\u0016J\'\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0#0\"0!2\u0006\u0010\u000f\u001a\u00020 \u00a2\u0006\u0004\u0008%\u0010&J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0\nH\u0086@\u00a2\u0006\u0004\u0008(\u0010)J\u001e\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020*H\u0086@\u00a2\u0006\u0004\u0008+\u0010,J\u001e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0\n2\u0006\u0010\u000f\u001a\u00020-H\u0086@\u00a2\u0006\u0004\u0008/\u00100J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u0002010\nH\u0086@\u00a2\u0006\u0004\u00082\u0010)J\u001e\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u000203H\u0086@\u00a2\u0006\u0004\u00084\u00105J\u001e\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020-H\u0086@\u00a2\u0006\u0004\u00086\u00100J\u001e\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u000207H\u0086@\u00a2\u0006\u0004\u00088\u00109J\u0016\u0010;\u001a\u0008\u0012\u0004\u0012\u00020:0\nH\u0086@\u00a2\u0006\u0004\u0008;\u0010)J\u001e\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020<H\u0086@\u00a2\u0006\u0004\u0008=\u0010>J\u001e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020<H\u0086@\u00a2\u0006\u0004\u0008?\u0010>J\u001e\u0010B\u001a\u0008\u0012\u0004\u0012\u00020A0\n2\u0006\u0010\u000f\u001a\u00020@H\u0086@\u00a2\u0006\u0004\u0008B\u0010CJ7\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020E0H0G2\u0006\u0010\t\u001a\u00020@2\u0014\u0010F\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010A\u0012\u0004\u0012\u00020E0D\u00a2\u0006\u0004\u0008I\u0010JJ7\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100H0G2\u0006\u0010\t\u001a\u00020K2\u0014\u0010F\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010L\u0012\u0004\u0012\u00020\u00100D\u00a2\u0006\u0004\u0008M\u0010NJ/\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Q0H0G2\u0006\u0010\t\u001a\u00020O2\u000c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020Q0P\u00a2\u0006\u0004\u0008R\u0010SJ!\u0010X\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0V0U2\u0006\u0010\t\u001a\u00020T\u00a2\u0006\u0004\u0008X\u0010YJ!\u0010]\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\\0V0U2\u0006\u0010[\u001a\u00020Z\u00a2\u0006\u0004\u0008]\u0010^J\u001e\u0010a\u001a\u0008\u0012\u0004\u0012\u00020`0\n2\u0006\u0010\u000f\u001a\u00020_H\u0086@\u00a2\u0006\u0004\u0008a\u0010bJ\u001e\u0010d\u001a\u0008\u0012\u0004\u0012\u00020c0\n2\u0006\u0010\u000f\u001a\u00020_H\u0086@\u00a2\u0006\u0004\u0008d\u0010bJ\u001e\u0010e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020_H\u0086@\u00a2\u0006\u0004\u0008e\u0010bJ\u001e\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020fH\u0086@\u00a2\u0006\u0004\u0008g\u0010hJ\u001e\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u00010\n2\u0006\u0010\u000f\u001a\u00020fH\u0086@\u00a2\u0006\u0004\u0008i\u0010hR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010p\u001a\u00020n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010;R\u0016\u0010r\u001a\u00020n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010;R\u001a\u0010v\u001a\u0008\u0012\u0004\u0012\u00020\\0s8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u001a\u0010z\u001a\u0008\u0012\u0004\u0012\u00020W0w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010y\u00a8\u0006}"
    }
    d2 = {
        "Lteam/opay/sme/store/StoreRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Llv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Llv;)V",
        "Lteam/opay/sme/store/api/BranchDetailReq;",
        "request",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/sme/store/api/BranchDetailResp;",
        "o",
        "(Lteam/opay/sme/store/api/BranchDetailReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/CreateEmployeesReq;",
        "req",
        "Lteam/opay/sme/store/api/EmployeeInfo;",
        "L",
        "(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;",
        "M",
        "Lteam/opay/sme/store/api/EmployeeInfoReq;",
        "C",
        "(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;",
        "N",
        "O",
        "z",
        "B",
        "Lteam/opay/sme/store/api/SignUpSendOtpRequest;",
        "Lteam/opay/sme/store/api/SignUpSendOtpResponse;",
        "T",
        "(Lteam/opay/sme/store/api/SignUpSendOtpRequest;Ljr2;)Ljava/lang/Object;",
        "E",
        "Lteam/opay/sme/store/api/EmployerRolesReq;",
        "Lretrofit2/Call;",
        "Lteam/opay/core/http/HttpResponse;",
        "",
        "Lteam/opay/sme/store/api/Business;",
        "H",
        "(Lteam/opay/sme/store/api/EmployerRolesReq;)Lretrofit2/Call;",
        "Lteam/opay/sme/store/api/EmployeeAdminResponse;",
        "y",
        "(Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/PayrollBankInfo;",
        "P",
        "(Lteam/opay/sme/store/api/PayrollBankInfo;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/CreateBranchReq;",
        "Lteam/opay/sme/store/api/CreateBranchResp;",
        "m",
        "(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/BranchSaasInfo;",
        "t",
        "Lteam/opay/sme/store/api/BranchIdRequest;",
        "n",
        "(Lteam/opay/sme/store/api/BranchIdRequest;Ljr2;)Ljava/lang/Object;",
        "x",
        "Lteam/opay/sme/store/api/BindPosSnRequest;",
        "l",
        "(Lteam/opay/sme/store/api/BindPosSnRequest;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/BranchMerchantByCacResponse;",
        "J",
        "Lteam/opay/sme/store/api/InviteBranchReq;",
        "u",
        "(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;",
        "p",
        "Lteam/opay/sme/store/api/BranchsReq;",
        "Lteam/opay/sme/store/api/BranchsResp;",
        "s",
        "(Lteam/opay/sme/store/api/BranchsReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/core/http/internal/PagingResultWrapper2;",
        "Lteam/opay/sme/store/api/BranchInfo;",
        "wrapper",
        "Lv56;",
        "Landroidx/paging/PagingData;",
        "q",
        "(Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;",
        "Lteam/opay/sme/store/api/EmployeesReq;",
        "Lteam/opay/sme/store/api/EmployeesResp;",
        "F",
        "(Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;",
        "Lteam/opay/sme/store/api/BranchSNReq;",
        "Lteam/opay/core/http/internal/PagingResultWrapper;",
        "Lteam/opay/sme/store/api/BindingPosInfo;",
        "v",
        "(Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;",
        "Lteam/opay/sme/store/api/PublicConfigRequest;",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/sme/store/api/PublicConfigResponse;",
        "K",
        "(Lteam/opay/sme/store/api/PublicConfigRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "forceRefresh",
        "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
        "I",
        "(Z)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/sme/store/api/ReportReq;",
        "Lteam/opay/sme/store/api/ReportBranchResp;",
        "Q",
        "(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/sme/store/api/ReportEODResp;",
        "R",
        "S",
        "Lteam/opay/sme/store/api/EmployeeManageReq;",
        "A",
        "(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;",
        "D",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "b",
        "Llv;",
        "",
        "c",
        "baseAddressListRequestTime",
        "d",
        "publicConfigRequestTime",
        "Lteam/opay/core/common/CorpLiveData;",
        "e",
        "Lteam/opay/core/common/CorpLiveData;",
        "baseAddressListLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "publicConfigLiveData",
        "g",
        "Companion",
        "business-sme-store_release"
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
.field public static final g:Lteam/opay/sme/store/StoreRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:J


# instance fields
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Llv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:J

.field public d:J

.field public final e:Lteam/opay/core/common/CorpLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/CorpLiveData<",
            "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/sme/store/api/PublicConfigResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/sme/store/StoreRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/sme/store/StoreRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/sme/store/StoreRepository;->g:Lteam/opay/sme/store/StoreRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x1e

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lteam/opay/sme/store/StoreRepository;->h:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Llv;)V
    .locals 9
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llv;
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
    iput-object p1, p0, Lteam/opay/sme/store/StoreRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 17
    .line 18
    new-instance p1, Lteam/opay/core/common/CorpLiveData;

    .line 19
    .line 20
    invoke-direct {p1}, Lteam/opay/core/common/CorpLiveData;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lteam/opay/sme/store/StoreRepository;->e:Lteam/opay/core/common/CorpLiveData;

    .line 24
    .line 25
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lteam/opay/sme/store/StoreRepository;->f:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    new-instance v0, Lteam/opay/sme/store/api/AddressLandmarkResponse;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v1, v2, v1}, Lteam/opay/sme/store/api/AddressLandmarkResponse;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lteam/opay/core/common/CorpLiveData;->postValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lteam/opay/sme/store/api/PublicConfigResponse;

    .line 43
    .line 44
    const/4 v7, 0x7

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v3, p1

    .line 50
    invoke-direct/range {v3 .. v8}, Lteam/opay/sme/store/api/PublicConfigResponse;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static final G(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/store/user/EmployeePagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/sme/store/user/EmployeePagingSource;-><init>(Llv;Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic a(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/StoreRepository;->G(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/StoreRepository;->w(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/sme/store/StoreRepository;->r(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/sme/store/StoreRepository;)Llv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lteam/opay/sme/store/StoreRepository;)Lteam/opay/core/common/CorpLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->e:Lteam/opay/core/common/CorpLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/sme/store/StoreRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/sme/store/StoreRepository;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g(Lteam/opay/sme/store/StoreRepository;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/sme/store/StoreRepository;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/sme/store/StoreRepository;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic i()J
    .locals 2

    .line 1
    sget-wide v0, Lteam/opay/sme/store/StoreRepository;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lteam/opay/sme/store/StoreRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/sme/store/StoreRepository;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lteam/opay/sme/store/StoreRepository;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/sme/store/StoreRepository;->d:J

    .line 2
    .line 3
    return-void
.end method

.method public static final r(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/store/branch/BranchPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/sme/store/branch/BranchPagingSource;-><init>(Llv;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final w(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Landroidx/paging/PagingSource;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lteam/opay/sme/store/branch/pos/PosBindPagingSource;-><init>(Llv;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final A(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployeeManageReq;
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
            "Lteam/opay/sme/store/api/EmployeeManageReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->h(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final B(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateEmployeesReq;
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
            "Lteam/opay/sme/store/api/CreateEmployeesReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->C(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final C(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployeeInfoReq;
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
            "Lteam/opay/sme/store/api/EmployeeInfoReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->t(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final D(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployeeManageReq;
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
            "Lteam/opay/sme/store/api/EmployeeManageReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->u(Lteam/opay/sme/store/api/EmployeeManageReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final E(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployeeInfoReq;
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
            "Lteam/opay/sme/store/api/EmployeeInfoReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->l(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final F(Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/sme/store/api/EmployeesReq;
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
            "Lteam/opay/sme/store/api/EmployeesReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/sme/store/api/EmployeesResp;",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
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
    new-instance v4, Ly4e;

    .line 32
    .line 33
    invoke-direct {v4, p0, p1, p2}, Ly4e;-><init>(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/EmployeesReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

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

.method public final H(Lteam/opay/sme/store/api/EmployerRolesReq;)Lretrofit2/Call;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployerRolesReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/api/EmployerRolesReq;",
            ")",
            "Lretrofit2/Call<",
            "Lteam/opay/core/http/HttpResponse<",
            "Ljava/util/List<",
            "Lteam/opay/sme/store/api/Business;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Llv;->s(Lteam/opay/sme/store/api/EmployerRolesReq;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final I(Z)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/sme/store/api/AddressLandmarkResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/sme/store/StoreRepository$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/sme/store/StoreRepository$a;-><init>(Lteam/opay/sme/store/StoreRepository;ZLteam/opay/core/http/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundResource;->j()Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final J(Ljr2;)Ljava/lang/Object;
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
            "Lteam/opay/sme/store/api/BranchMerchantByCacResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v1}, Llv$a;->d(Llv;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final K(Lteam/opay/sme/store/api/PublicConfigRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/sme/store/api/PublicConfigRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/sme/store/api/PublicConfigRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/sme/store/api/PublicConfigResponse;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/sme/store/StoreRepository$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/sme/store/StoreRepository$b;-><init>(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/PublicConfigRequest;Lteam/opay/core/http/arch/AppExecutors;)V

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

.method public final L(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateEmployeesReq;
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
            "Lteam/opay/sme/store/api/CreateEmployeesReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->i(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final M(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateEmployeesReq;
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
            "Lteam/opay/sme/store/api/CreateEmployeesReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/EmployeeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->w(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final N(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/EmployeeInfoReq;
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
            "Lteam/opay/sme/store/api/EmployeeInfoReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->v(Lteam/opay/sme/store/api/EmployeeInfoReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final O(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateEmployeesReq;
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
            "Lteam/opay/sme/store/api/CreateEmployeesReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->p(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final P(Lteam/opay/sme/store/api/PayrollBankInfo;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/PayrollBankInfo;
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
            "Lteam/opay/sme/store/api/PayrollBankInfo;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->x(Lteam/opay/sme/store/api/PayrollBankInfo;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final Q(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/ReportReq;
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
            "Lteam/opay/sme/store/api/ReportReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/ReportBranchResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->r(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final R(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/ReportReq;
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
            "Lteam/opay/sme/store/api/ReportReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/ReportEODResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->k(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final S(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/ReportReq;
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
            "Lteam/opay/sme/store/api/ReportReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->j(Lteam/opay/sme/store/api/ReportReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final T(Lteam/opay/sme/store/api/SignUpSendOtpRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/SignUpSendOtpRequest;
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
            "Lteam/opay/sme/store/api/SignUpSendOtpRequest;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/SignUpSendOtpResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->g(Lteam/opay/sme/store/api/SignUpSendOtpRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final l(Lteam/opay/sme/store/api/BindPosSnRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/BindPosSnRequest;
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
            "Lteam/opay/sme/store/api/BindPosSnRequest;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->m(Lteam/opay/sme/store/api/BindPosSnRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final m(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateBranchReq;
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
            "Lteam/opay/sme/store/api/CreateBranchReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/CreateBranchResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->f(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final n(Lteam/opay/sme/store/api/BranchIdRequest;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/BranchIdRequest;
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
            "Lteam/opay/sme/store/api/BranchIdRequest;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->e(Lteam/opay/sme/store/api/BranchIdRequest;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final o(Lteam/opay/sme/store/api/BranchDetailReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/BranchDetailReq;
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
            "Lteam/opay/sme/store/api/BranchDetailReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/BranchDetailResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->A(Lteam/opay/sme/store/api/BranchDetailReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final p(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/InviteBranchReq;
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
            "Lteam/opay/sme/store/api/InviteBranchReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->F(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final q(Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/sme/store/api/BranchsReq;
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
            "Lteam/opay/sme/store/api/BranchsReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper2<",
            "Lteam/opay/sme/store/api/BranchsResp;",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/sme/store/api/BranchInfo;",
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
    new-instance v4, Lw4e;

    .line 32
    .line 33
    invoke-direct {v4, p0, p1, p2}, Lw4e;-><init>(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchsReq;Lteam/opay/core/http/internal/PagingResultWrapper2;)V

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

.method public final s(Lteam/opay/sme/store/api/BranchsReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/BranchsReq;
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
            "Lteam/opay/sme/store/api/BranchsReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/sme/store/api/BranchsResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->q(Lteam/opay/sme/store/api/BranchsReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final t(Ljr2;)Ljava/lang/Object;
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
            "Lteam/opay/sme/store/api/BranchSaasInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v1}, Llv$a;->a(Llv;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final u(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/InviteBranchReq;
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
            "Lteam/opay/sme/store/api/InviteBranchReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->D(Lteam/opay/sme/store/api/InviteBranchReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final v(Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)Lv56;
    .locals 11
    .param p1    # Lteam/opay/sme/store/api/BranchSNReq;
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
            "Lteam/opay/sme/store/api/BranchSNReq;",
            "Lteam/opay/core/http/internal/PagingResultWrapper<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
            ">;)",
            "Lv56<",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/sme/store/api/BindingPosInfo;",
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
    new-instance v4, Lx4e;

    .line 32
    .line 33
    invoke-direct {v4, p0, p1, p2}, Lx4e;-><init>(Lteam/opay/sme/store/StoreRepository;Lteam/opay/sme/store/api/BranchSNReq;Lteam/opay/core/http/internal/PagingResultWrapper;)V

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

.method public final x(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateBranchReq;
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
            "Lteam/opay/sme/store/api/CreateBranchReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->b(Lteam/opay/sme/store/api/CreateBranchReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final y(Ljr2;)Ljava/lang/Object;
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
            "Lteam/opay/sme/store/api/EmployeeAdminResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v1}, Llv$a;->b(Llv;Ljava/lang/Object;Ljr2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final z(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/sme/store/api/CreateEmployeesReq;
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
            "Lteam/opay/sme/store/api/CreateEmployeesReq;",
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
    iget-object v0, p0, Lteam/opay/sme/store/StoreRepository;->b:Llv;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Llv;->n(Lteam/opay/sme/store/api/CreateEmployeesReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
