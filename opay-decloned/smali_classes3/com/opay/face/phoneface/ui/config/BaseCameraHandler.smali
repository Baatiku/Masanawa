.class public Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;
.super Landroid/os/Handler;
.source "BaseCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "BaseCameraHandler"


# instance fields
.field public final a:Lcom/opay/face/phoneface/decode/DecodeThread;

.field public final b:Lcom/opay/face/phoneface/ui/camera/CameraManager;

.field public final c:Lb87;

.field public d:Lpt1;

.field public e:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lb87;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;->RUNNING:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->e:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->c:Lb87;

    .line 9
    .line 10
    invoke-interface {p1}, Lb87;->getFaceCallback()Lpt1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d:Lpt1;

    .line 15
    .line 16
    new-instance v0, Lcom/opay/face/phoneface/decode/DecodeThread;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/opay/face/phoneface/decode/DecodeThread;-><init>(Lb87;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->a:Lcom/opay/face/phoneface/decode/DecodeThread;

    .line 22
    .line 23
    invoke-interface {p1}, Lb87;->getCameraManager()Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x9

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0xe

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0xc

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    const/16 v0, 0xd

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0xf

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x10

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    .line 43
    .line 44
    const/16 v0, 0xb

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x14

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x15

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0x16

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final b(Lcom/opay/face/phoneface/model/LiveCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d:Lpt1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lpt1;->x(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->f:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "quitSynchronously..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d:Lpt1;

    .line 10
    .line 11
    sget-object v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;->DONE:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->e:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->a:Lcom/opay/face/phoneface/decode/DecodeThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/opay/face/phoneface/decode/DecodeThread;->a()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->a:Lcom/opay/face/phoneface/decode/DecodeThread;

    .line 30
    .line 31
    const-wide/16 v1, 0x1f4

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    sget-object v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->f:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "InterruptedException"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->a()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b:Lcom/opay/face/phoneface/ui/camera/CameraManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->a:Lcom/opay/face/phoneface/decode/DecodeThread;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/opay/face/phoneface/decode/DecodeThread;->a()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/opay/face/phoneface/ui/camera/CameraManager;->k(Landroid/os/Handler;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->e:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 2
    .line 3
    sget-object v1, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;->DONE:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    packed-switch v0, :pswitch_data_1

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->f:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Unknown message: "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget p1, p1, Landroid/os/Message;->what:I

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_0
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_INTERNAL:Lcom/opay/face/phoneface/model/LiveCode;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_1
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_LINK_LIB:Lcom/opay/face/phoneface/model/LiveCode;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_2
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_STORAGE_NOT_AVAILABLE:Lcom/opay/face/phoneface/model/LiveCode;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_3
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_DO_OTHER_ACTION:Lcom/opay/face/phoneface/model/LiveCode;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_4
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_LIVE_OVER_MOTION:Lcom/opay/face/phoneface/model/LiveCode;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_5
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d:Lpt1;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lcom/opay/face/phoneface/model/Motion;

    .line 85
    .line 86
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 89
    .line 90
    invoke-interface {v0, v1, v2, p1}, Lpt1;->o(Lcom/opay/face/phoneface/model/Motion;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_6
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_TIME_OUT_NO_ACTION:Lcom/opay/face/phoneface/model/LiveCode;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_7
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_TIME_OUT_NO_FACE:Lcom/opay/face/phoneface/model/LiveCode;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_8
    sget-object p1, Lcom/opay/face/phoneface/model/LiveCode;->ERROR_LIVE_HACK:Lcom/opay/face/phoneface/model/LiveCode;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->b(Lcom/opay/face/phoneface/model/LiveCode;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    iput-object v1, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->e:Lcom/opay/face/phoneface/ui/config/BaseCameraHandler$State;

    .line 113
    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Lcom/opay/face/phoneface/model/OFaceLiveResult;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d:Lpt1;

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-interface {v0, p1}, Lpt1;->g(Lcom/opay/face/phoneface/model/OFaceLiveResult;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/opay/face/phoneface/ui/config/BaseCameraHandler;->d()V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_0
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
