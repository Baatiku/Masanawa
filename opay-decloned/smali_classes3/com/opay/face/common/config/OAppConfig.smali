.class public Lcom/opay/face/common/config/OAppConfig;
.super Ljava/lang/Object;
.source "OAppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private debug:Z

.field private hasDowngradeMethod:Z

.field private hasOtherMethod:Z

.field private mBusiness:Ljava/lang/String;

.field private mExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceBusiness:Ljava/lang/String;

.field private mFaceCaptureConfig:Ljava/lang/String;

.field private mFaceRequestId:Ljava/lang/String;

.field private mFaceSecurityConfig:Ljava/lang/String;

.field private mFaceToken:Ljava/lang/String;

.field private mLiveConfig:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTraceId:Ljava/lang/String;

.field private newUI:Z

.field private useInternalUpload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->debug:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtraMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mExtraMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceCaptureConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceCaptureConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceRequestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceSecurityConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceSecurityConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLiveConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mLiveConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/config/OAppConfig;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasDowngradeMethod()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->hasDowngradeMethod:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasOtherMethod()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->debug:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNewUI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->newUI:Z

    .line 2
    .line 3
    return v0
.end method

.method public isUseInternalUpload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/common/config/OAppConfig;->useInternalUpload:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBusiness(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDebug(Z)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/config/OAppConfig;->debug:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtraMap(Ljava/util/Map;)Lcom/opay/face/common/config/OAppConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/opay/face/common/config/OAppConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mExtraMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFaceBusiness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceCaptureConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceCaptureConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceRequestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceSecurityConfig(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceSecurityConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFaceToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mFaceToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHasDowngradeMethod(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/config/OAppConfig;->hasDowngradeMethod:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHasOtherMethod(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/config/OAppConfig;->hasOtherMethod:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLiveConfig(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mLiveConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNewUI(Z)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/config/OAppConfig;->newUI:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/opay/face/common/config/OAppConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/config/OAppConfig;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUseInternalUpload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/common/config/OAppConfig;->useInternalUpload:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "OAppConfig{mBusiness=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/common/config/OAppConfig;->mBusiness:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "mTraceId=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/opay/face/common/config/OAppConfig;->mTraceId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x7d

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
