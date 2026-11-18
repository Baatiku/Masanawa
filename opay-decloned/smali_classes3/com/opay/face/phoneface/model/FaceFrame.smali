.class public Lcom/opay/face/phoneface/model/FaceFrame;
.super Ljava/lang/Object;
.source "FaceFrame.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private face_num:I

.field private motion:Ljava/lang/String;

.field private pose:[I

.field private rect:[I

.field private ts:J


# direct methods
.method public constructor <init>(I[I[ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->face_num:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/face/phoneface/model/FaceFrame;->rect:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/opay/face/phoneface/model/FaceFrame;->pose:[I

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->ts:J

    .line 15
    .line 16
    iput-object p4, p0, Lcom/opay/face/phoneface/model/FaceFrame;->motion:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getFace_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/FaceFrame;->face_num:I

    .line 2
    .line 3
    return v0
.end method

.method public getMotion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceFrame;->motion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPose()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceFrame;->pose:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getRect()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/FaceFrame;->rect:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/FaceFrame;->ts:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setFace_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->face_num:I

    .line 2
    .line 3
    return-void
.end method

.method public setMotion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->motion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPose([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->pose:[I

    .line 2
    .line 3
    return-void
.end method

.method public setRect([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->rect:[I

    .line 2
    .line 3
    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/FaceFrame;->ts:J

    .line 2
    .line 3
    return-void
.end method
