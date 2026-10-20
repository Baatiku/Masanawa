.class public final Lteam/opay/pay/history/balance/BalanceHistoryWebService;
.super Ljava/lang/Object;
.source "BalanceHistoryWebService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\'\u0010\u000b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\n0\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/history/balance/BalanceHistoryWebService;",
        "",
        "Lfv;",
        "apiService",
        "<init>",
        "(Lfv;)V",
        "Lteam/opay/pay/history/balance/BalanceHistoryRequest;",
        "request",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
        "b",
        "(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Lteam/opay/core/android/arch/LiveDataCall;",
        "a",
        "Lfv;",
        "getApiService",
        "()Lfv;",
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
.field public final a:Lfv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfv;)V
    .locals 1
    .param p1    # Lfv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "apiService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/history/balance/BalanceHistoryWebService;->a:Lfv;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/history/balance/BalanceHistoryWebService;->c(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/history/balance/BalanceHistoryResponse;
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
    check-cast p0, Lteam/opay/pay/history/balance/BalanceHistoryResponse;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final b(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Lteam/opay/core/android/arch/LiveDataCall;
    .locals 3
    .param p1    # Lteam/opay/pay/history/balance/BalanceHistoryRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/history/balance/BalanceHistoryRequest;",
            ")",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;",
            "Lteam/opay/pay/history/balance/BalanceHistoryResponse;",
            ">;"
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
    iget-object v0, p0, Lteam/opay/pay/history/balance/BalanceHistoryWebService;->a:Lfv;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lfv;->I(Lteam/opay/pay/history/balance/BalanceHistoryRequest;)Lretrofit2/Call;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lbh0;

    .line 13
    .line 14
    invoke-direct {v0}, Lbh0;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v2, v0, v1, v2}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
