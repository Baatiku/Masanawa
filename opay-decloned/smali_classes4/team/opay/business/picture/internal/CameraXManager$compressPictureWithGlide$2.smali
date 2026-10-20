.class final Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CameraXManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/internal/CameraXManager;->a(Landroid/content/Context;Ljava/lang/String;Ljr2;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lzr2;",
        "",
        "kotlin.jvm.PlatformType",
        "<anonymous>",
        "(Lzr2;)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.picture.internal.CameraXManager$compressPictureWithGlide$2"
    f = "CameraXManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $filePath:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$filePath:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$context:Landroid/content/Context;

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
    new-instance p1, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$filePath:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljr2;)V

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

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$filePath:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    sget-object p1, Lteam/opay/business/picture/internal/CameraXManager;->a:Lteam/opay/business/picture/internal/CameraXManager;

    .line 23
    .line 24
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$context:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "compress"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lteam/opay/business/picture/internal/CameraXManager;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->c()Ljpc;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$filePath:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->j0(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljpc;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljpc;->R0()Lwm6;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    .line 65
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 66
    .line 67
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 68
    .line 69
    new-instance v3, Ljava/io/FileOutputStream;

    .line 70
    .line 71
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .line 76
    .line 77
    const/16 v3, 0x3c

    .line 78
    .line 79
    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lteam/opay/business/picture/internal/CameraXManager$compressPictureWithGlide$2;->$filePath:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    const-string p1, ""

    .line 95
    .line 96
    :goto_1
    return-object p1

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method
