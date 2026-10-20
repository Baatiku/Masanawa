.class public final Lteam/opay/core/common/android/glide/ImageResizeModelLoader;
.super Ldr0;
.source "ImageResizeModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr0<",
        "Lteam/opay/core/common/android/glide/GlideModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ1\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/core/common/android/glide/ImageResizeModelLoader;",
        "Ldr0;",
        "Lteam/opay/core/common/android/glide/GlideModel;",
        "Lcom/bumptech/glide/load/model/ModelLoader;",
        "Lcom/bumptech/glide/load/model/GlideUrl;",
        "Ljava/io/InputStream;",
        "modelLoader",
        "<init>",
        "(Lcom/bumptech/glide/load/model/ModelLoader;)V",
        "model",
        "",
        "h",
        "(Lteam/opay/core/common/android/glide/GlideModel;)Z",
        "",
        "width",
        "height",
        "Lcom/bumptech/glide/load/Options;",
        "options",
        "",
        "g",
        "(Lteam/opay/core/common/android/glide/GlideModel;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/ModelLoader;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/model/ModelLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "modelLoader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ldr0;-><init>(Lcom/bumptech/glide/load/model/ModelLoader;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/android/glide/GlideModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/common/android/glide/ImageResizeModelLoader;->h(Lteam/opay/core/common/android/glide/GlideModel;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/core/common/android/glide/GlideModel;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/core/common/android/glide/ImageResizeModelLoader;->g(Lteam/opay/core/common/android/glide/GlideModel;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public g(Lteam/opay/core/common/android/glide/GlideModel;IILcom/bumptech/glide/load/Options;)Ljava/lang/String;
    .locals 0
    .param p1    # Lteam/opay/core/common/android/glide/GlideModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p4, "model"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2, p3}, Lteam/opay/core/common/android/glide/GlideModel;->a(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public h(Lteam/opay/core/common/android/glide/GlideModel;)Z
    .locals 1
    .param p1    # Lteam/opay/core/common/android/glide/GlideModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/common/android/glide/ModelType;->IMAGE_RESIZE:Lteam/opay/core/common/android/glide/ModelType;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/glide/GlideModel;->b(Lteam/opay/core/common/android/glide/ModelType;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
