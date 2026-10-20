.class public Lcom/opay/face/common/net/model/EventData;
.super Ljava/lang/Object;
.source "EventData.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private business:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private face_business:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/OFaceImage;",
            ">;"
        }
    .end annotation
.end field

.field private sdk_version:Ljava/lang/String;

.field private str:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


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
.method public getBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->business:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFace_business()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->face_business:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImages()Ljava/util/List;
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
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->images:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdk_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->str:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/net/model/EventData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBusiness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->business:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->code:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFace_business(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->face_business:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImages(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->images:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSdk_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->sdk_version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->str:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/net/model/EventData;->timestamp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
