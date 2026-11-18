.class public final Lteam/opay/core/common/android/glide/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/glide/ImageModel$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0019B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0013\u0010\r\u001a\u0004\u0018\u00010\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0010\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0018\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/core/common/android/glide/ImageModel;",
        "",
        "Lteam/opay/core/common/android/glide/ImageModel$Builder;",
        "builder",
        "<init>",
        "(Lteam/opay/core/common/android/glide/ImageModel$Builder;)V",
        "",
        "f",
        "()Z",
        "a",
        "Lteam/opay/core/common/android/glide/ImageModel$Builder;",
        "b",
        "()Ljava/lang/Object;",
        "model",
        "",
        "()I",
        "holder",
        "e",
        "radius",
        "d",
        "quality",
        "Lteam/opay/core/common/android/glide/ModelType;",
        "c",
        "()Lteam/opay/core/common/android/glide/ModelType;",
        "modelType",
        "Builder",
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


# instance fields
.field public final a:Lteam/opay/core/common/android/glide/ImageModel$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/common/android/glide/ImageModel$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/core/common/android/glide/ImageModel$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/common/android/glide/ImageModel;-><init>(Lteam/opay/core/common/android/glide/ImageModel$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->c()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Lteam/opay/core/common/android/glide/ModelType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->d()Lteam/opay/core/common/android/glide/ModelType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/glide/ImageModel;->a:Lteam/opay/core/common/android/glide/ImageModel$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/common/android/glide/ImageModel$Builder;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final f()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/android/glide/ImageModel;->b()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "http"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method
