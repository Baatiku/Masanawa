.class public final Lteam/opay/spos/base/api/BuilderDelegate;
.super Lteam/opay/core/spi/IBuilderDelegate;
.source "IBuilderDelegateImpl.kt"


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/core/spi/IBuilderDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lteam/opay/spos/base/api/BuilderDelegate;",
        "Lteam/opay/core/spi/IBuilderDelegate;",
        "()V",
        "getHostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "getHttpDns",
        "",
        "getSSLSocketFactory",
        "Lkotlin/Pair;",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "Ljavax/net/ssl/X509TrustManager;",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/spi/IBuilderDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lk2d;->a:Lk2d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk2d;->c()Ljavax/net/ssl/HostnameVerifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHttpDns()Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getHttpDns()Lokhttp3/Dns;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lteam/opay/spos/base/api/BuilderDelegate;->getHttpDns()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Lokhttp3/Dns;

    return-object v0
.end method

.method public getSSLSocketFactory()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/Pair;

    .line 2
    .line 3
    sget-object v1, Lk2d;->a:Lk2d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lk2d;->e()Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lk2d;->b()Ljavax/net/ssl/X509TrustManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
