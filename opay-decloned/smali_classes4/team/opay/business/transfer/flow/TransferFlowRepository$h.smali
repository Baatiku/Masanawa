.class public final Lteam/opay/business/transfer/flow/TransferFlowRepository$h;
.super Lteam/opay/core/http/arch/NetworkBoundAction;
.source "FlowViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/transfer/flow/TransferFlowRepository;->z()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/http/arch/NetworkBoundAction<",
        "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
        "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/business/transfer/flow/TransferFlowRepository$h",
        "Lteam/opay/core/http/arch/NetworkBoundAction;",
        "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
        "Lteam/opay/core/http/arch/LiveDataCall;",
        "Lteam/opay/core/http/HttpResponse;",
        "g",
        "()Lteam/opay/core/http/arch/LiveDataCall;",
        "response",
        "i",
        "(Lteam/opay/business/transfer/flow/api/RefundMessageResp;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
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
.field public final synthetic c:Lteam/opay/business/transfer/flow/TransferFlowRepository;


# direct methods
.method public constructor <init>(Lteam/opay/business/transfer/flow/TransferFlowRepository;Lteam/opay/core/http/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lteam/opay/core/http/arch/NetworkBoundAction;-><init>(Lteam/opay/core/http/arch/AppExecutors;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;->h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/core/http/HttpResponse;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/http/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/business/transfer/flow/api/RefundMessageResp;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/api/RefundMessageResp;->a()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/RefundInfo;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lteam/opay/business/transfer/flow/api/RefundInfo;->f(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/api/RefundMessageResp;->b()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lteam/opay/business/transfer/flow/api/RefundInfo;

    .line 67
    .line 68
    invoke-virtual {v1}, Lteam/opay/business/transfer/flow/api/RefundInfo;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lteam/opay/business/transfer/flow/api/RefundInfo;->f(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;->g()Lteam/opay/core/http/arch/LiveDataCall;

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
    check-cast p1, Lteam/opay/business/transfer/flow/api/RefundMessageResp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;->i(Lteam/opay/business/transfer/flow/api/RefundMessageResp;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g()Lteam/opay/core/http/arch/LiveDataCall;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/http/arch/LiveDataCall<",
            "Lteam/opay/core/http/HttpResponse<",
            "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
            ">;",
            "Lteam/opay/business/transfer/flow/api/RefundMessageResp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/transfer/flow/TransferFlowRepository$h;->c:Lteam/opay/business/transfer/flow/TransferFlowRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/transfer/flow/TransferFlowRepository;->d(Lteam/opay/business/transfer/flow/TransferFlowRepository;)Lyu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lyu;->w()Lretrofit2/Call;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lg6f;

    .line 12
    .line 13
    invoke-direct {v1}, Lg6f;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v0, v3, v1, v2, v3}, Ly57;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/http/arch/LiveDataCall;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public i(Lteam/opay/business/transfer/flow/api/RefundMessageResp;)Lteam/opay/business/transfer/flow/api/RefundMessageResp;
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
