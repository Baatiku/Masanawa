.class public Lcom/opay/face/phoneface/model/MotionInfo;
.super Ljava/lang/Object;
.source "MotionInfo.java"

# interfaces
.implements Lteam/opay/KeepNoProguard;


# instance fields
.field private left_eye:[I

.field private motion:Ljava/lang/String;

.field private pt_ms:J

.field private right_eye:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/face/phoneface/model/MotionInfo;->motion:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/opay/face/phoneface/model/MotionInfo;->pt_ms:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getLeft_eye()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/MotionInfo;->left_eye:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public getMotion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/MotionInfo;->motion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPt_ms()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/opay/face/phoneface/model/MotionInfo;->pt_ms:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRight_eye()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/model/MotionInfo;->right_eye:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public setLeft_eye([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/MotionInfo;->left_eye:[I

    .line 2
    .line 3
    return-void
.end method

.method public setMotion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/MotionInfo;->motion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPt_ms(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/opay/face/phoneface/model/MotionInfo;->pt_ms:J

    .line 2
    .line 3
    return-void
.end method

.method public setRight_eye([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/model/MotionInfo;->right_eye:[I

    .line 2
    .line 3
    return-void
.end method
