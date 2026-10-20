.class public final Lteam/opay/opb/transfer/bank/BankProviderImpl;
.super Ljava/lang/Object;
.source "BankProvider.kt"

# interfaces
.implements Lvj0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J7\u0010\u000f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\r0\u000cj\u0002`\u000e0\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0007\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lteam/opay/opb/transfer/bank/BankProviderImpl;",
        "Lvj0;",
        "Lteam/opay/opb/transfer/bank/BankRepository;",
        "repository",
        "<init>",
        "(Lteam/opay/opb/transfer/bank/BankRepository;)V",
        "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
        "body",
        "",
        "from",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "",
        "Lteam/opay/business/core/bank/BankInfo;",
        "Lteam/opay/opb/transfer/bank/bank/BankList;",
        "j",
        "(Lteam/opay/opb/transfer/bank/bank/BankRequest;Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
        "f",
        "(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;",
        "a",
        "Lteam/opay/opb/transfer/bank/BankRepository;",
        "business-transfer-bank_release"
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
.field public final a:Lteam/opay/opb/transfer/bank/BankRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/opb/transfer/bank/BankRepository;)V
    .locals 1
    .param p1    # Lteam/opay/opb/transfer/bank/BankRepository;
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
    iput-object p1, p0, Lteam/opay/opb/transfer/bank/BankProviderImpl;->a:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;
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
            "Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/opb/transfer/bank/bank/TransferAccountResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/opb/transfer/bank/BankProviderImpl;->a:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/opb/transfer/bank/BankRepository;->f(Lteam/opay/opb/transfer/bank/bank/TransferAccountReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Lteam/opay/opb/transfer/bank/bank/BankRequest;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/opb/transfer/bank/bank/BankRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/opb/transfer/bank/bank/BankRequest;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Ljava/util/List<",
            "Lteam/opay/business/core/bank/BankInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "UPGRADE_KYC2"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lteam/opay/opb/transfer/bank/BankProviderImpl;->a:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lteam/opay/opb/transfer/bank/BankRepository;->h(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p0, Lteam/opay/opb/transfer/bank/BankProviderImpl;->a:Lteam/opay/opb/transfer/bank/BankRepository;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lteam/opay/opb/transfer/bank/BankRepository;->g(Lteam/opay/opb/transfer/bank/bank/BankRequest;)Landroidx/lifecycle/LiveData;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    return-object p1
.end method
