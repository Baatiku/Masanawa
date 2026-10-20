.class public Lcom/opay/face/phoneface/model/GyroscopeInfo;
.super Ljava/lang/Object;
.source "GyroscopeInfo.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private end_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private interval_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation
.end field


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
.method public getEnd_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/GyroscopeInfo;->end_data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInterval_data()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/GyroscopeInfo;->interval_data:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEnd_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/GyroscopeInfo;->end_data:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setInterval_data(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/SensorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/GyroscopeInfo;->interval_data:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
