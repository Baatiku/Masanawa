.class final Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraXController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->K(Landroid/app/Activity;Lag8;Landroid/view/ViewGroup;Leb7;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.opb.qrcode.scanner.controller.CameraXController$startCamera$1"
    f = "CameraXController.kt"
    l = {
        0x5f,
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $cameraX:Landroidx/camera/view/PreviewView;

.field final synthetic $lifecycleOwner:Lag8;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Lag8;Landroidx/camera/view/PreviewView;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lteam/opay/opb/qrcode/scanner/controller/CameraXController;",
            "Lag8;",
            "Landroidx/camera/view/PreviewView;",
            "Ljr2<",
            "-",
            "Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$activity:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$lifecycleOwner:Lag8;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$cameraX:Landroidx/camera/view/PreviewView;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$lifecycleOwner:Lag8;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$cameraX:Landroidx/camera/view/PreviewView;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;-><init>(Landroid/app/Activity;Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Lag8;Landroidx/camera/view/PreviewView;Ljr2;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lzr2;

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lzr2;

    .line 37
    .line 38
    :try_start_1
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    .line 40
    .line 41
    move-object p1, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lzr2;

    .line 49
    .line 50
    :try_start_2
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v4, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1$1;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {v4, v5}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1$1;-><init>(Ljr2;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    iput v3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->label:I

    .line 63
    .line 64
    invoke-static {v1, v4, p0}, Lxk1;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljr2;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-ne v1, v0, :cond_3

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_3
    :goto_0
    sget-object v1, Landroidx/camera/lifecycle/ProcessCameraProvider;->i:Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;

    .line 72
    .line 73
    iget-object v3, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$activity:Landroid/app/Activity;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroidx/camera/lifecycle/ProcessCameraProvider$Companion;->c(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    iput v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->label:I

    .line 82
    .line 83
    invoke-static {v1, p0}, Landroidx/concurrent/futures/ListenableFutureKt;->b(Lcom/google/common/util/concurrent/ListenableFuture;Ljr2;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-ne v1, v0, :cond_4

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    move-object v0, p1

    .line 91
    move-object p1, v1

    .line 92
    :goto_1
    check-cast p1, Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlinx/coroutines/g;->h(Lzr2;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 101
    .line 102
    invoke-virtual {v0}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->u()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 110
    .line 111
    invoke-static {v0, p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->S(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/lifecycle/ProcessCameraProvider;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 115
    .line 116
    invoke-static {p1}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->P(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    iget-object v0, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 123
    .line 124
    iget-object v1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$lifecycleOwner:Lag8;

    .line 125
    .line 126
    iget-object v2, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->$cameraX:Landroidx/camera/view/PreviewView;

    .line 127
    .line 128
    invoke-static {v0, p1, v1, v2}, Lteam/opay/opb/qrcode/scanner/controller/CameraXController;->O(Lteam/opay/opb/qrcode/scanner/controller/CameraXController;Landroidx/camera/lifecycle/ProcessCameraProvider;Lag8;Landroidx/camera/view/PreviewView;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .line 134
    return-object p1

    .line 135
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 139
    .line 140
    if-nez v0, :cond_7

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v2, "CameraX init Exception: "

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    sget-object p1, Lere;->a:Lere;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Lere;->b(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lteam/opay/opb/qrcode/scanner/controller/CameraXController$startCamera$1;->this$0:Lteam/opay/opb/qrcode/scanner/controller/CameraXController;

    .line 174
    .line 175
    invoke-virtual {p1}, Lteam/opay/opb/qrcode/scanner/controller/ICameraController;->k()Landroidx/lifecycle/MutableLiveData;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1
.end method
