.class public Lcom/opay/face/common/OFaceLiveConfigManager$a;
.super Ljava/lang/Object;
.source "OFaceLiveConfigManager.java"

# interfaces
.implements Lcom/opay/face/common/net/FaceConfigApi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/OFaceLiveConfigManager;->onStartFace(Landroid/content/Context;Lcom/opay/face/common/config/OAppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/face/common/config/OAppConfig;

.field public final synthetic b:Lcom/opay/face/common/OFaceLiveConfigManager;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/OFaceLiveConfigManager;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/OFaceLiveConfigManager$a;->b:Lcom/opay/face/common/OFaceLiveConfigManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/opay/face/common/OFaceLiveConfigManager$a;->a:Lcom/opay/face/common/config/OAppConfig;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/OFaceLiveConfigManager$a;->a:Lcom/opay/face/common/config/OAppConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/opay/face/common/OFaceLiveConfigManager;->putConfigBuilder(Ljava/lang/String;Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/opay/face/common/OFaceLiveConfigManager$a;->b:Lcom/opay/face/common/OFaceLiveConfigManager;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/opay/face/common/OFaceLiveConfigManager;->access$002(Lcom/opay/face/common/OFaceLiveConfigManager;I)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
