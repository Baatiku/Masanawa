.class public final Lteam/opay/pay/transaction/TransactionRepository$b;
.super Lteam/opay/core/android/arch/NetworkBoundAction;
.source "TransactionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transaction/TransactionRepository;->f()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/NetworkBoundAction<",
        "Lteam/opay/pay/transaction/TransactionTypesBean;",
        "Lteam/opay/pay/transaction/TransactionTypesBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J!\u0010\u0005\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "team/opay/pay/transaction/TransactionRepository$b",
        "Lteam/opay/core/android/arch/NetworkBoundAction;",
        "Lteam/opay/pay/transaction/TransactionTypesBean;",
        "Lteam/opay/core/android/arch/LiveDataCall;",
        "Lteam/opay/pay/api/HttpResponse;",
        "f",
        "()Lteam/opay/core/android/arch/LiveDataCall;",
        "response",
        "g",
        "(Lteam/opay/pay/transaction/TransactionTypesBean;)Lteam/opay/pay/transaction/TransactionTypesBean;",
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
.field public final synthetic c:Lteam/opay/pay/transaction/TransactionRepository;


# direct methods
.method public constructor <init>(Lteam/opay/pay/transaction/TransactionRepository;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/transaction/TransactionRepository$b;->c:Lteam/opay/pay/transaction/TransactionRepository;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lteam/opay/core/android/arch/NetworkBoundAction;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic d()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transaction/TransactionRepository$b;->f()Lteam/opay/core/android/arch/LiveDataCall;

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
    check-cast p1, Lteam/opay/pay/transaction/TransactionTypesBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/TransactionRepository$b;->g(Lteam/opay/pay/transaction/TransactionTypesBean;)Lteam/opay/pay/transaction/TransactionTypesBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()Lteam/opay/core/android/arch/LiveDataCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/android/arch/LiveDataCall<",
            "Lteam/opay/pay/api/HttpResponse<",
            "Lteam/opay/pay/transaction/TransactionTypesBean;",
            ">;",
            "Lteam/opay/pay/transaction/TransactionTypesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/TransactionRepository$b;->c:Lteam/opay/pay/transaction/TransactionRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/transaction/TransactionRepository;->g()Lteam/opay/pay/transaction/TransactionWebService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/transaction/TransactionWebService;->f()Lteam/opay/core/android/arch/LiveDataCall;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public g(Lteam/opay/pay/transaction/TransactionTypesBean;)Lteam/opay/pay/transaction/TransactionTypesBean;
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
