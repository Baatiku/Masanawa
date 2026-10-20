.class public final Lteam/opay/business/provider/account/AccountProviderImpl;
.super Ljava/lang/Object;
.source "AccountProvider.kt"

# interfaces
.implements Lqc;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/business/provider/account/AccountProviderImpl;",
        "Lqc;",
        "Lteam/opay/business/provider/account/AccountProviderRepository;",
        "repository",
        "<init>",
        "(Lteam/opay/business/provider/account/AccountProviderRepository;)V",
        "Lteam/opay/business/provider/account/WalletBalanceReq;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/provider/account/WalletBalanceResp;",
        "d",
        "(Lteam/opay/business/provider/account/WalletBalanceReq;)Landroidx/lifecycle/LiveData;",
        "",
        "code",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/provider/account/KaFunctionAuthResponse;",
        "k",
        "(Ljava/lang/String;Ljr2;)Ljava/lang/Object;",
        "a",
        "Lteam/opay/business/provider/account/AccountProviderRepository;",
        "business-provider_release"
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
.field public final a:Lteam/opay/business/provider/account/AccountProviderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/account/AccountProviderRepository;)V
    .locals 1
    .param p1    # Lteam/opay/business/provider/account/AccountProviderRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "repository"

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
    iput-object p1, p0, Lteam/opay/business/provider/account/AccountProviderImpl;->a:Lteam/opay/business/provider/account/AccountProviderRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public d(Lteam/opay/business/provider/account/WalletBalanceReq;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/business/provider/account/WalletBalanceReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/provider/account/WalletBalanceReq;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/provider/account/WalletBalanceResp;",
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
    iget-object v0, p0, Lteam/opay/business/provider/account/AccountProviderImpl;->a:Lteam/opay/business/provider/account/AccountProviderRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/business/provider/account/AccountProviderRepository;->c(Lteam/opay/business/provider/account/WalletBalanceReq;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public k(Ljava/lang/String;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/provider/account/KaFunctionAuthResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/account/AccountProviderImpl;->a:Lteam/opay/business/provider/account/AccountProviderRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/provider/account/AccountProviderRepository;->b(Ljava/lang/String;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
