.class public final Lteam/opay/core/android/views/CustomImageSizeGlideModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "ViewExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/views/CustomImageSizeGlideModule$CustomImageSizeUrlLoaderFactory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/android/views/CustomImageSizeGlideModule;",
        "Lcom/bumptech/glide/module/LibraryGlideModule;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/bumptech/glide/a;",
        "glide",
        "Lcom/bumptech/glide/Registry;",
        "registry",
        "",
        "a",
        "(Landroid/content/Context;Lcom/bumptech/glide/a;Lcom/bumptech/glide/Registry;)V",
        "CustomImageSizeUrlLoaderFactory",
        "advertisement_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/a;Lcom/bumptech/glide/Registry;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "glide"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "registry"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lteam/opay/core/android/views/CustomImageSizeGlideModule$CustomImageSizeUrlLoaderFactory;

    .line 17
    .line 18
    invoke-direct {p1}, Lteam/opay/core/android/views/CustomImageSizeGlideModule$CustomImageSizeUrlLoaderFactory;-><init>()V

    .line 19
    .line 20
    .line 21
    const-class p2, Ldx2;

    .line 22
    .line 23
    const-class v0, Ljava/io/InputStream;

    .line 24
    .line 25
    invoke-virtual {p3, p2, v0, p1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Lza9;)Lcom/bumptech/glide/Registry;

    .line 26
    .line 27
    .line 28
    return-void
.end method
