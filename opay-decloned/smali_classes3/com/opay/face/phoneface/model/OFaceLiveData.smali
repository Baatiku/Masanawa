.class public Lcom/opay/face/phoneface/model/OFaceLiveData;
.super Ljava/lang/Object;
.source "OFaceLiveData.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private app_version:Ljava/lang/String;

.field private behavior:Lcom/opay/face/phoneface/model/Behavior;

.field private business:Ljava/lang/String;

.field private client:Ljava/lang/String;

.field private encrypted:Z

.field private face_business:Ljava/lang/String;

.field private face_request_id:Ljava/lang/String;

.field private face_token:Ljava/lang/String;

.field private fingerprint:Ljava/lang/String;

.field private image_base64:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private motion_image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/OFaceImage;",
            ">;"
        }
    .end annotation
.end field

.field private pkv:I

.field private platform:Ljava/lang/String;

.field private risk_info:Lcom/opay/face/phoneface/model/RiskInfo;

.field private sign:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private trace_id:Ljava/lang/String;

.field private valChainId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lf5a;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->version:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "Android"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->platform:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lf5a;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->client:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->pkv:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getApp_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->app_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBehavior()Lcom/opay/face/phoneface/model/Behavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->behavior:Lcom/opay/face/phoneface/model/Behavior;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->business:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->client:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFace_business()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_business:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFace_request_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_request_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFace_token()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->fingerprint:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImage_base64()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->image_base64:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMotion_image()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/OFaceImage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->motion_image:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPkv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->pkv:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRisk_info()Lcom/opay/face/phoneface/model/RiskInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->risk_info:Lcom/opay/face/phoneface/model/RiskInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrace_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->trace_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValChainId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->valChainId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->encrypted:Z

    .line 2
    .line 3
    return v0
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->app_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBehavior(Lcom/opay/face/phoneface/model/Behavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->behavior:Lcom/opay/face/phoneface/model/Behavior;

    .line 2
    .line 3
    return-void
.end method

.method public setBusiness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->business:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->client:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->encrypted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFace_business(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_business:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFace_request_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_request_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFace_token(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->face_token:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFingerprint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->fingerprint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImage_base64(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->image_base64:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMotion_image(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/OFaceImage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->motion_image:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPkv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->pkv:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRisk_info(Lcom/opay/face/phoneface/model/RiskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->risk_info:Lcom/opay/face/phoneface/model/RiskInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->sign:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTrace_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->trace_id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setValChainId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->valChainId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/OFaceLiveData;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
