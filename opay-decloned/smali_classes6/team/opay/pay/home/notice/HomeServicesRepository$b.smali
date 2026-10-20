.class public final Lteam/opay/pay/home/notice/HomeServicesRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "HomeServicesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/notice/HomeServicesRepository;->g(Lteam/opay/pay/home/notice/SaveNoticeReq;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00040\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/home/notice/HomeServicesRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "d",
        "()Landroidx/lifecycle/LiveData;",
        "response",
        "e",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field public final synthetic c:Lteam/opay/pay/home/notice/HomeServicesRepository;

.field public final synthetic d:Lteam/opay/pay/home/notice/SaveNoticeReq;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/notice/HomeServicesRepository;Lteam/opay/pay/home/notice/SaveNoticeReq;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/notice/HomeServicesRepository$b;->c:Lteam/opay/pay/home/notice/HomeServicesRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/notice/HomeServicesRepository$b;->d:Lteam/opay/pay/home/notice/SaveNoticeReq;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic f(Lteam/opay/pay/api/HttpResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/notice/HomeServicesRepository$b;->g(Lteam/opay/pay/api/HttpResponse;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lteam/opay/pay/api/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public d()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/notice/HomeServicesRepository$b;->c:Lteam/opay/pay/home/notice/HomeServicesRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/home/notice/HomeServicesRepository;->e(Lteam/opay/pay/home/notice/HomeServicesRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/home/notice/HomeServicesRepository$b;->d:Lteam/opay/pay/home/notice/SaveNoticeReq;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lfv;->l1(Lteam/opay/pay/home/notice/SaveNoticeReq;)Lretrofit2/Call;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Li27;

    .line 14
    .line 15
    invoke-direct {v1}, Li27;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "200"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lyv;->b(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
