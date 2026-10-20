.class public Lcom/opay/face/common/OFaceLiveConfigManager;
.super Ljava/lang/Object;
.source "OFaceLiveConfigManager.java"

# interfaces
.implements Lcom/opay/face/common/OFaceLiveDelegate;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lcom/opay/face/common/OFaceLiveDelegate;
    }
.end annotation


# static fields
.field private static sConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSecRet:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/opay/face/common/OFaceLiveConfigManager;->sConfigMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/opay/face/common/OFaceLiveConfigManager;->mSecRet:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$002(Lcom/opay/face/common/OFaceLiveConfigManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/common/OFaceLiveConfigManager;->mSecRet:I

    .line 2
    .line 3
    return p1
.end method

.method public static getConfigBuilder(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/opay/face/common/OFaceLiveConfigManager;->sConfigMap:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static putConfigBuilder(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/opay/face/common/OFaceLiveConfigManager;->sConfigMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public onStartFace(Landroid/content/Context;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/opay/face/OFaceAlg;->getInstance()Lcom/opay/face/OFaceAlg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/opay/face/OFaceAlg;->initialize(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/opay/face/common/OFaceLiveConfigManager;->getConfigBuilder(Ljava/lang/String;)Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l0()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    sub-long/2addr v1, v3

    .line 31
    const-wide/32 v3, 0x493e0

    .line 32
    .line 33
    .line 34
    cmp-long v0, v1, v3

    .line 35
    .line 36
    if-gez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/opay/face/common/OFaceLiveConfigManager;->mSecRet:I

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/opay/face/common/OFaceLiveConfigManager$a;

    .line 46
    .line 47
    invoke-direct {v2, p0, p2}, Lcom/opay/face/common/OFaceLiveConfigManager$a;-><init>(Lcom/opay/face/common/OFaceLiveConfigManager;Lcom/opay/face/common/config/OAppConfig;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v1, v2}, Lcom/opay/face/common/net/FaceConfigApi;->k(Landroid/content/Context;ILjava/lang/String;Lcom/opay/face/common/net/FaceConfigApi$a;)Lretrofit2/Call;

    .line 51
    .line 52
    .line 53
    return-void
.end method
