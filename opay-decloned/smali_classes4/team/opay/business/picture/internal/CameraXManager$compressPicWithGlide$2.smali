.class final Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraXManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "Ljava/io/File;",
        "<anonymous>",
        "(Lzr2;)Ljava/io/File;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.picture.internal.CameraXManager$compressPicWithGlide$2"
    f = "CameraXManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $file:Ljava/io/File;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$file:Ljava/io/File;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 2
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
    new-instance p1, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$file:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;-><init>(Landroid/content/Context;Ljava/io/File;Ljr2;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 12
    .line 13
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$context:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "compress"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lteam/opay/business/picture/internal/CameraXManager;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$context:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$file:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljpc;->J0(Ljava/io/File;)Ljpc;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v1, 0x2d0

    .line 38
    .line 39
    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->Y(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljpc;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljpc;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljpc;->R0()Lwm6;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/graphics/Bitmap;

    .line 61
    .line 62
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 63
    .line 64
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 65
    .line 66
    new-instance v3, Ljava/io/FileOutputStream;

    .line 67
    .line 68
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    .line 73
    .line 74
    const/16 v3, 0x5a

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPicWithGlide$2;->$file:Ljava/io/File;

    .line 85
    .line 86
    :goto_0
    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method
