.class public final Lteam/opay/core/android/views/OsdkGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "ImageViewExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/core/android/views/OsdkGlideModule;",
        "Lcom/bumptech/glide/module/AppGlideModule;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/bumptech/glide/GlideBuilder;",
        "builder",
        "",
        "b",
        "(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V",
        "",
        "c",
        "()Z",
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
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GlideBuilder;
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
    const-string p1, "builder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "opay"

    .line 12
    .line 13
    sget-object v0, Lyq6$b;->d:Lyq6$b;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1, p1, v0}, Lyq6;->g(ILjava/lang/String;Lyq6$b;)Lyq6;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->d(Lyq6;)Lcom/bumptech/glide/GlideBuilder;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/GlideBuilder;->b(Lcom/bumptech/glide/load/engine/cache/c;)Lcom/bumptech/glide/GlideBuilder;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
