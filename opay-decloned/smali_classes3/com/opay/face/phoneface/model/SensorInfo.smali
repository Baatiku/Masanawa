.class public Lcom/opay/face/phoneface/model/SensorInfo;
.super Ljava/lang/Object;
.source "SensorInfo.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private ts:J

.field private v:[F


# direct methods
.method public constructor <init>(J[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/SensorInfo;->ts:J

    .line 5
    .line 6
    invoke-static {p3}, Lz0a;->c([F)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/opay/face/phoneface/model/SensorInfo;->v:[F

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/SensorInfo;->ts:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getV()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/SensorInfo;->v:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public setTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/SensorInfo;->ts:J

    .line 2
    .line 3
    return-void
.end method

.method public setV([F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lz0a;->c([F)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/face/phoneface/model/SensorInfo;->v:[F

    .line 5
    .line 6
    return-void
.end method
