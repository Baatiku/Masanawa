.class public final Lteam/opay/core/android/views/MessageCenterImageSizeModel;
.super Ljava/lang/Object;
.source "ImageViewExtension.kt"

# interfaces
.implements Lq89;


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lq89;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/core/android/views/MessageCenterImageSizeModel;",
        "Lq89;",
        "<init>",
        "()V",
        "",
        "url",
        "Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;",
        "getFixedImageSizeModel",
        "(Ljava/lang/String;)Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;",
        "Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;",
        "getImageSizeModel",
        "(Ljava/lang/String;)Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;",
        "sdk_release"
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic getFixedImageSizeModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/MessageCenterImageSizeModel;->getFixedImageSizeModel(Ljava/lang/String;)Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;

    move-result-object p1

    return-object p1
.end method

.method public getFixedImageSizeModel(Ljava/lang/String;)Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;

    const/16 v1, 0x4b

    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/views/DialogImageSizeModelFutureStudio;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic getImageSizeModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/MessageCenterImageSizeModel;->getImageSizeModel(Ljava/lang/String;)Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;

    move-result-object p1

    return-object p1
.end method

.method public getImageSizeModel(Ljava/lang/String;)Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;

    const/16 v1, 0x4b

    invoke-direct {v0, p1, v1}, Lteam/opay/core/android/views/CustomImageSizeModelFutureStudio;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
