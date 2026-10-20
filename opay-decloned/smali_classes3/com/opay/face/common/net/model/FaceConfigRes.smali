.class public Lcom/opay/face/common/net/model/FaceConfigRes;
.super Ljava/lang/Object;
.source "FaceConfigRes.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private config:Lcom/opay/face/common/net/model/Config;

.field private faceBusiness:Ljava/lang/String;

.field private publicKey:Lcom/opay/face/phoneface/model/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/opay/face/common/net/model/Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->config:Lcom/opay/face/common/net/model/Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->faceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPublicKey()Lcom/opay/face/phoneface/model/PublicKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->publicKey:Lcom/opay/face/phoneface/model/PublicKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public setConfig(Lcom/opay/face/common/net/model/Config;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->config:Lcom/opay/face/common/net/model/Config;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceBusiness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->faceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPublicKey(Lcom/opay/face/phoneface/model/PublicKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->publicKey:Lcom/opay/face/phoneface/model/PublicKey;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FaceConfigRes{config="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->config:Lcom/opay/face/common/net/model/Config;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", publicKey="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/opay/face/common/net/model/FaceConfigRes;->publicKey:Lcom/opay/face/phoneface/model/PublicKey;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
