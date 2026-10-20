.class public abstract Lcom/opay/face/common/activity/BaseLiveActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseLiveActivity.java"

# interfaces
.implements Lpt1;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/common/activity/BaseLiveActivity$a;
    }
.end annotation


# static fields
.field public static final J:Ljava/lang/String; = "BaseLiveActivity"

.field public static final K:Ljava/lang/String;

.field public static final L:Ljava/lang/String;

.field public static final M:Ljava/lang/String;

.field public static final N:Ljava/lang/String;


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public D:Landroid/hardware/SensorManager;

.field public E:Landroid/hardware/Sensor;

.field public F:Landroid/hardware/Sensor;

.field public G:Z

.field public H:Landroid/app/Activity;

.field public I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final a:[Ljava/lang/String;

.field public final b:I

.field public c:Lcom/opay/face/common/activity/BaseLiveActivity$a;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lcom/opay/face/common/config/OAppConfig;

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Landroid/media/AudioManager;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.opay.face."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/opay/face/common/activity/BaseLiveActivity;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ".live_config"

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->K:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ".app_config"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->L:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ".result_path"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->M:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ".result_live_image_path"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->N:Ljava/lang/String;

    .line 102
    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.permission.CAMERA"

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->a:[Ljava/lang/String;

    .line 11
    .line 12
    const/16 v0, 0x88

    .line 13
    .line 14
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->b:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->g:I

    .line 18
    .line 19
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->h:I

    .line 20
    .line 21
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->i:I

    .line 22
    .line 23
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->j:I

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->q:Z

    .line 27
    .line 28
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->r:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->A:I

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic u(Lcom/opay/face/common/activity/BaseLiveActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/activity/BaseLiveActivity;->G(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/opay/face/R$string;->text_unknown:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x44c

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p1, "Unknown error!"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    sget p1, Lcom/opay/face/R$string;->text_timeout_error_no_face:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    sget p1, Lcom/opay/face/R$string;->text_timeout_error_no_action:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    sget p1, Lcom/opay/face/R$string;->text_live_error_over_action:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :pswitch_3
    sget p1, Lcom/opay/face/R$string;->text_live_error:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    sget p1, Lcom/opay/face/R$string;->text_live_cancel:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :pswitch_5
    sget p1, Lcom/opay/face/R$string;->text_no_permission:I

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :pswitch_6
    sget p1, Lcom/opay/face/R$string;->text_live_error_do_other_action:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :pswitch_7
    sget p1, Lcom/opay/face/R$string;->text_storage_not_available:I

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :pswitch_8
    sget p1, Lcom/opay/face/R$string;->text_internal_error:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_0

    .line 79
    :pswitch_9
    sget p1, Lcom/opay/face/R$string;->text_link_error:I

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :pswitch_a
    sget p1, Lcom/opay/face/R$string;->text_unable_to_open_camera:I

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string p1, "Use another verification method."

    .line 94
    .line 95
    :goto_0
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch -0x3f3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->k:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFarNear()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->B:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->k:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFlash()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    return v0

    .line 28
    :cond_2
    return v1

    .line 29
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public D()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "audio"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/media/AudioManager;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->w:Landroid/media/AudioManager;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->x:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->S()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/opay/face/common/activity/BaseLiveActivity;->K:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    instance-of v2, v1, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    check-cast v1, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->k:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v2, Lcom/opay/face/common/activity/BaseLiveActivity;->L:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    instance-of v2, v1, Lcom/opay/face/common/config/OAppConfig;

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    check-cast v1, Lcom/opay/face/common/config/OAppConfig;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x1

    .line 83
    new-array v4, v4, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v3, v4, v0

    .line 86
    .line 87
    const-string v0, "%03d"

    .line 88
    .line 89
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Lcom/opay/face/common/config/OAppConfig;->setFaceRequestId(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->l:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getToken()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->m:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->n:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/opay/face/common/config/OAppConfig;->getExtraMap()Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    const-string v1, "valChainId"

    .line 136
    .line 137
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-nez v2, :cond_2

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/String;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    const-string v0, ""

    .line 152
    .line 153
    :goto_1
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->o:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->l:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->t(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->m:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->v(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->n:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->w(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->o:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/opay/face/common/util/TraceUtils;->x(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/opay/face/common/config/OAppConfig;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    const-string v0, "opay_face"

    .line 187
    .line 188
    invoke-static {p0, v0}, Lgz5;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    const/16 v0, -0x3f0

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->P(I)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_5
    sget-object v1, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v3, "facePath:"

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v1, v2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iput-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->e:Ljava/lang/String;

    .line 244
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    iget-object v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->e:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v2, "face_images"

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->f:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v0}, Lgz5;->j(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    return-void
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->k:Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectSensor()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final synthetic G(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "User is not authorized..."

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->H(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "User has permission..."

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->r:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/opay/face/common/activity/BaseLiveActivity;->H(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public I(Lcom/opay/face/common/activity/BaseLiveActivity$a;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->a:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->J([Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->a:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->K([Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "\u8bf7\u6c42\u6743\u9650"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->d:Z

    .line 29
    .line 30
    iput-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->c:Lcom/opay/face/common/activity/BaseLiveActivity$a;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->a:[Ljava/lang/String;

    .line 33
    .line 34
    const/16 v0, 0x88

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Lks0;->a(Lcom/opay/face/common/activity/BaseLiveActivity;[Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Lcom/opay/face/common/activity/BaseLiveActivity$a;->a(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final J([Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-static {p0, v3}, Lms0;->a(Lcom/opay/face/common/activity/BaseLiveActivity;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final K([Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-static {p0, v3}, Lls0;->a(Lcom/opay/face/common/activity/BaseLiveActivity;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public L()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->E:Landroid/hardware/Sensor;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->D:Landroid/hardware/SensorManager;

    .line 13
    .line 14
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->F:Landroid/hardware/Sensor;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->D:Landroid/hardware/SensorManager;

    .line 22
    .line 23
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public M()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->x:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->w:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x64

    .line 15
    .line 16
    iget v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->x:I

    .line 17
    .line 18
    div-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->z:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public O(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    int-to-float p2, p2

    .line 10
    const v1, 0x3b808081

    .line 11
    .line 12
    .line 13
    mul-float p2, p2, v1

    .line 14
    .line 15
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public P(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/opay/face/common/activity/BaseLiveActivity;->A(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->Q(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Q(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->N()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    new-instance v0, Lcom/opay/face/common/model/LiveTraceResult;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/opay/face/common/model/LiveTraceResult;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v1, -0x3e9

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, -0x3ea

    .line 20
    .line 21
    if-eq p1, v1, :cond_1

    .line 22
    .line 23
    const/16 v1, -0x3ec

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    const/16 v1, -0x3ef

    .line 28
    .line 29
    if-eq p1, v1, :cond_1

    .line 30
    .line 31
    const/16 v1, -0x3eb

    .line 32
    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const/16 v1, -0x3ed

    .line 36
    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 43
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p2, v0, Lcom/opay/face/common/model/LiveTraceResult;->b:Ljava/lang/String;

    .line 50
    .line 51
    iget v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->y:I

    .line 52
    .line 53
    iput v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->f:I

    .line 54
    .line 55
    iget v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->z:I

    .line 56
    .line 57
    iput v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->g:I

    .line 58
    .line 59
    invoke-static {}, Lcom/opay/face/util/Logs;->h()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-static {v3}, Lcom/opay/face/util/Logs;->r(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->d:Ljava/lang/String;

    .line 68
    .line 69
    iget v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->A:I

    .line 70
    .line 71
    iput v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->e:I

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->B()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    iput v2, v0, Lcom/opay/face/common/model/LiveTraceResult;->h:I

    .line 78
    .line 79
    iput-boolean v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->i:Z

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->G:Z

    .line 82
    .line 83
    iput-boolean v1, v0, Lcom/opay/face/common/model/LiveTraceResult;->j:Z

    .line 84
    .line 85
    iget-object v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->p:Lcom/opay/face/common/config/OAppConfig;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/opay/face/common/util/TraceUtils;->o(Lcom/opay/face/common/model/LiveTraceResult;Lcom/opay/face/common/config/OAppConfig;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/opay/face/phoneface/model/OFaceLiveError;

    .line 91
    .line 92
    invoke-direct {v0, p1, p2}, Lcom/opay/face/phoneface/model/OFaceLiveError;-><init>(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->C:I

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->d(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->B()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/model/OFaceLiveError;->e(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/opay/face/common/OFaceLiveSender;->b()Lcom/opay/face/common/OFaceLiveSender;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v0}, Lcom/opay/face/common/OFaceLiveSender;->a(Lcom/opay/face/phoneface/model/OFaceLiveError;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 115
    .line 116
    .line 117
    :cond_2
    return-void
.end method

.method public abstract R()V
.end method

.method public S()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->x:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->w:Landroid/media/AudioManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x64

    .line 15
    .line 16
    iget v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->x:I

    .line 17
    .line 18
    div-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->y:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public T()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->F()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->D:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->H:Landroid/app/Activity;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->I:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x80

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v0, Lcom/opay/face/R$color;->live_white:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p0, p1}, Lcom/opay/face/common/util/ScreenTools;->d(Landroid/app/Activity;I)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-static {p0, p1}, Lcom/opay/face/common/util/ScreenTools;->c(Landroid/app/Activity;Z)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0xff

    .line 40
    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->O(Landroid/app/Activity;I)V

    .line 42
    .line 43
    .line 44
    const-string v0, "sensor"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/hardware/SensorManager;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->D:Landroid/hardware/SensorManager;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->E:Landroid/hardware/Sensor;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->D:Landroid/hardware/SensorManager;

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->F:Landroid/hardware/Sensor;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->D()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->y()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->R()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->w()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->E()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->z()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onPause..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->s:Z

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->u:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->v:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->d:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "onRequestPermissionsResult..."

    .line 5
    .line 6
    invoke-static {v1, v2}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->d:Z

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x88

    .line 16
    .line 17
    if-ne p1, v2, :cond_3

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    :goto_0
    array-length v3, p2

    .line 22
    if-ge p1, v3, :cond_2

    .line 23
    .line 24
    sget-object v3, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 25
    .line 26
    aget v4, p3, p1

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    const-string v4, "\u5df2"

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v4, "\u672a"

    .line 34
    .line 35
    :goto_1
    aget-object v5, p2, p1

    .line 36
    .line 37
    const/4 v6, 0x2

    .line 38
    new-array v6, v6, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v4, v6, v1

    .line 41
    .line 42
    aput-object v5, v6, v0

    .line 43
    .line 44
    const-string v4, "%s\u83b7\u5f97<%s>\u6743\u9650."

    .line 45
    .line 46
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lcom/opay/face/util/Logs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    aget v3, p3, p1

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    :cond_1
    add-int/2addr p1, v0

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->c:Lcom/opay/face/common/activity/BaseLiveActivity$a;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1, v2}, Lcom/opay/face/common/activity/BaseLiveActivity$a;->a(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/face/common/activity/BaseLiveActivity;->J:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onResume..."

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->s:Z

    .line 13
    .line 14
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->M()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public w()V
    .locals 0

    .line 1
    return-void
.end method

.method public y()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "window"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/view/WindowManager;

    .line 13
    .line 14
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/opay/face/common/activity/BaseLiveActivity;->C()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eq v2, v3, :cond_0

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eq v2, v3, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x3

    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->g:I

    .line 46
    .line 47
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->h:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->g:I

    .line 59
    .line 60
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->h:I

    .line 65
    .line 66
    :goto_0
    iget v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->g:I

    .line 67
    .line 68
    iget v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->h:I

    .line 69
    .line 70
    if-le v0, v1, :cond_2

    .line 71
    .line 72
    iput v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->i:I

    .line 73
    .line 74
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->j:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iput v0, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->i:I

    .line 78
    .line 79
    iput v1, p0, Lcom/opay/face/common/activity/BaseLiveActivity;->j:I

    .line 80
    .line 81
    :goto_1
    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    new-instance v0, Lns0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lns0;-><init>(Lcom/opay/face/common/activity/BaseLiveActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/opay/face/common/activity/BaseLiveActivity;->I(Lcom/opay/face/common/activity/BaseLiveActivity$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
