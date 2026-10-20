.class public final Lteam/opay/face/PreloadFragment$onViewCreated$1$1;
.super Ljava/lang/Object;
.source "PreloadFragment.kt"

# interfaces
.implements Lnpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/face/PreloadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnpc<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J;\u0010\u000b\u001a\u00020\t2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJE\u0010\u0010\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "team/opay/face/PreloadFragment$onViewCreated$1$1",
        "Lnpc;",
        "Landroid/graphics/drawable/Drawable;",
        "Lcom/bumptech/glide/load/engine/GlideException;",
        "e",
        "",
        "model",
        "Llfe;",
        "target",
        "",
        "isFirstResource",
        "b",
        "(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Llfe;Z)Z",
        "resource",
        "Lcom/bumptech/glide/load/DataSource;",
        "dataSource",
        "a",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z",
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


# instance fields
.field public final synthetic a:Lteam/opay/face/PreloadFragment;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lteam/opay/face/PreloadFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Llfe<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 2
    .line 3
    invoke-static {p2}, Lteam/opay/face/PreloadFragment;->P(Lteam/opay/face/PreloadFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    return p3

    .line 11
    :cond_0
    iget-object p2, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 12
    .line 13
    invoke-static {p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v3, Lteam/opay/face/PreloadFragment$onViewCreated$1$1$onResourceReady$1;

    .line 22
    .line 23
    iget-object p2, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 24
    .line 25
    const/4 p4, 0x0

    .line 26
    invoke-direct {v3, p2, p1, p4}, Lteam/opay/face/PreloadFragment$onViewCreated$1$1$onResourceReady$1;-><init>(Lteam/opay/face/PreloadFragment;Landroid/graphics/drawable/Drawable;Ljr2;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 33
    .line 34
    .line 35
    return p3
.end method

.method public b(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Llfe;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Llfe<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v3, Lteam/opay/face/PreloadFragment$onViewCreated$1$1$onLoadFailed$1;

    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->b:Landroid/content/Context;

    .line 14
    .line 15
    iget-object p2, p0, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a:Lteam/opay/face/PreloadFragment;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {v3, p1, p2, p3}, Lteam/opay/face/PreloadFragment$onViewCreated$1$1$onLoadFailed$1;-><init>(Landroid/content/Context;Lteam/opay/face/PreloadFragment;Ljr2;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lteam/opay/face/PreloadFragment$onViewCreated$1$1;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
