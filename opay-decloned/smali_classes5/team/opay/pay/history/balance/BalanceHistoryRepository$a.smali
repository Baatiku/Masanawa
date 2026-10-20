.class public final Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "BalanceHistoryRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/history/balance/BalanceHistoryRepository;->e(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
        "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/history/balance/BalanceHistoryRepository$a",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "f",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "response",
        "g",
        "(Lteam/opay/pay/history/balance/BalanceHistoryResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
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
.field public final synthetic c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;

.field public final synthetic d:Lteam/opay/pay/history/balance/BalanceHistoryRequest;


# direct methods
.method public constructor <init>(Lteam/opay/pay/history/balance/BalanceHistoryRepository;Lteam/opay/pay/history/balance/BalanceHistoryRequest;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->d:Lteam/opay/pay/history/balance/BalanceHistoryRequest;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->f()Lteam/opay/core/android/arch/LiveDataCall;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->g(Lteam/opay/pay/history/balance/BalanceHistoryResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->c:Lteam/opay/pay/history/balance/BalanceHistoryRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/history/balance/BalanceHistoryRepository;->f()Lteam/opay/pay/history/balance/BalanceHistoryWebService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/history/balance/BalanceHistoryRepository$a;->d:Lteam/opay/pay/history/balance/BalanceHistoryRequest;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lteam/opay/pay/history/balance/BalanceHistoryWebService;->b(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public g(Lteam/opay/pay/history/balance/BalanceHistoryResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;
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
