.class public final Lteam/opay/core/biz/kong/IPrivacyImage;
.super Lteam/opay/core/common/android/glide/IGlideModel;
.source "PrivacyImageModel.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/core/common/android/glide/IGlideModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/core/biz/kong/IPrivacyImage;",
        "Lteam/opay/core/common/android/glide/IGlideModel;",
        "<init>",
        "()V",
        "modelType",
        "Lteam/opay/core/common/android/glide/ModelType;",
        "glideModel",
        "Ljava/lang/Class;",
        "Lteam/opay/core/common/android/glide/GlideModel;",
        "common-http_release"
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/common/android/glide/IGlideModel;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public glideModel()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lteam/opay/core/common/android/glide/GlideModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lteam/opay/core/biz/kong/PrivacyImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public modelType()Lteam/opay/core/common/android/glide/ModelType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/common/android/glide/ModelType;->PRIVACY_IMAGE:Lteam/opay/core/common/android/glide/ModelType;

    .line 2
    .line 3
    return-object v0
.end method
