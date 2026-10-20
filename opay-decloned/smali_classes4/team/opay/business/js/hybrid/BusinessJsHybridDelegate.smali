.class public final Lteam/opay/business/js/hybrid/BusinessJsHybridDelegate;
.super Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;
.source "BusinessJsHybridDelegate.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u0014\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lteam/opay/business/js/hybrid/BusinessJsHybridDelegate;",
        "Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;",
        "<init>",
        "()V",
        "getHybridResourceList",
        "",
        "",
        "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
        "getHybridAssetList",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "business-js_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/hybrid/IHybridDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getHybridAssetList()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/js/hybrid/BusinessJsHybridDelegate;->getHybridAssetList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getHybridAssetList()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lteam/opay/business/js/hybrid/BusinessJsAssets;->c:Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;

    invoke-virtual {v0}, Lteam/opay/business/js/hybrid/BusinessJsAssets$Companion;->a()Lteam/opay/business/js/hybrid/BusinessJsAssets;

    move-result-object v0

    invoke-virtual {v0}, Lteam/opay/business/js/hybrid/BusinessJsAssets;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getHybridResourceList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/swarmfoundation/hybrid/HybridBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
