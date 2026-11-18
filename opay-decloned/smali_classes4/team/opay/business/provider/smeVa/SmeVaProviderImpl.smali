.class public final Lteam/opay/business/provider/smeVa/SmeVaProviderImpl;
.super Ljava/lang/Object;
.source "SmeVaProvider.kt"

# interfaces
.implements Lozd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001c\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u0008H\u0096@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/business/provider/smeVa/SmeVaProviderImpl;",
        "Lozd;",
        "Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;",
        "repository",
        "<init>",
        "(Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;)V",
        "Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;",
        "req",
        "Lteam/opay/core/http/HttpResult;",
        "Lteam/opay/business/provider/smeVa/QueryLargeTransferResp;",
        "a",
        "(Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;Ljr2;)Ljava/lang/Object;",
        "",
        "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
        "n",
        "(Ljr2;)Ljava/lang/Object;",
        "Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;",
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
.field public final a:Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;)V
    .locals 1
    .param p1    # Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;
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
    iput-object p1, p0, Lteam/opay/business/provider/smeVa/SmeVaProviderImpl;->a:Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;Ljr2;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;
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
            "Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;",
            "Ljr2<",
            "-",
            "Lteam/opay/core/http/HttpResult<",
            "Lteam/opay/business/provider/smeVa/QueryLargeTransferResp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/smeVa/SmeVaProviderImpl;->a:Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;->b(Lteam/opay/business/provider/smeVa/QueryLargeTransferReq;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public n(Ljr2;)Ljava/lang/Object;
    .locals 1
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
            "+",
            "Ljava/util/List<",
            "Lteam/opay/business/provider/smeVa/TransferNumberInfo;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/smeVa/SmeVaProviderImpl;->a:Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/business/provider/smeVa/SmeVaProviderRepository;->a(Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
