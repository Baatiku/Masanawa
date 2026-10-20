.class public Lcom/opay/face/phoneface/model/Behavior;
.super Ljava/lang/Object;
.source "Behavior.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private accelerometer:Lcom/opay/face/phoneface/model/AccelerometerInfo;

.field private face_process:Lcom/opay/face/phoneface/model/FaceProcess;

.field private gyroscope:Lcom/opay/face/phoneface/model/GyroscopeInfo;

.field private live_frame_avg_pt_ms:J

.field private live_frame_pt_ms:J

.field private live_total_pt_ms:J

.field private motion_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/MotionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private retry_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/opay/face/phoneface/model/Behavior;->motion_info:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAccelerometer()Lcom/opay/face/phoneface/model/AccelerometerInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/Behavior;->accelerometer:Lcom/opay/face/phoneface/model/AccelerometerInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFace_process()Lcom/opay/face/phoneface/model/FaceProcess;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/Behavior;->face_process:Lcom/opay/face/phoneface/model/FaceProcess;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGyroscope()Lcom/opay/face/phoneface/model/GyroscopeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/Behavior;->gyroscope:Lcom/opay/face/phoneface/model/GyroscopeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLive_frame_avg_pt_ms()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/Behavior;->live_frame_avg_pt_ms:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLive_frame_pt_ms()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/Behavior;->live_frame_pt_ms:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLive_total_pt_ms()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/Behavior;->live_total_pt_ms:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMotion_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/MotionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/Behavior;->motion_info:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetry_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/Behavior;->retry_count:I

    .line 2
    .line 3
    return v0
.end method

.method public setAccelerometer(Lcom/opay/face/phoneface/model/AccelerometerInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/Behavior;->accelerometer:Lcom/opay/face/phoneface/model/AccelerometerInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setFace_process(Lcom/opay/face/phoneface/model/FaceProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/Behavior;->face_process:Lcom/opay/face/phoneface/model/FaceProcess;

    .line 2
    .line 3
    return-void
.end method

.method public setGyroscope(Lcom/opay/face/phoneface/model/GyroscopeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/Behavior;->gyroscope:Lcom/opay/face/phoneface/model/GyroscopeInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setLive_frame_avg_pt_ms(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/Behavior;->live_frame_avg_pt_ms:J

    .line 2
    .line 3
    return-void
.end method

.method public setLive_frame_pt_ms(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/Behavior;->live_frame_pt_ms:J

    .line 2
    .line 3
    return-void
.end method

.method public setLive_total_pt_ms(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/Behavior;->live_total_pt_ms:J

    .line 2
    .line 3
    return-void
.end method

.method public setMotion_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/MotionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/Behavior;->motion_info:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRetry_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/model/Behavior;->retry_count:I

    .line 2
    .line 3
    return-void
.end method
