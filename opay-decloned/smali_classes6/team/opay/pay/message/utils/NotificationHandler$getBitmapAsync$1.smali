.class public final Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;
.super Ljava/lang/Object;
.source "NotificationHandler.kt"

# interfaces
.implements Lnpc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/message/utils/NotificationHandler;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "team/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1",
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
        "message_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->f:I

    .line 12
    .line 13
    iput-object p7, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->i:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->j:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 14
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Llfe;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/DataSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    move-object v0, p0

    .line 2
    new-instance v13, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;

    .line 3
    .line 4
    iget-object v3, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->a:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v4, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v5, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v6, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->d:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v7, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->e:Ljava/lang/String;

    .line 13
    .line 14
    iget v8, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->f:I

    .line 15
    .line 16
    iget-object v9, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->j:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v10, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->g:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v11, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->h:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v12, v0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->i:Ljava/lang/String;

    .line 23
    .line 24
    move-object v1, v13

    .line 25
    move-object v2, p1

    .line 26
    invoke-direct/range {v1 .. v12}, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onResourceReady$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v2, v3, v13, v4, v1}, Lwje;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return v4
.end method

.method public b(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Llfe;Z)Z
    .locals 10
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Llfe;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    new-instance p1, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onLoadFailed$1;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->f:I

    .line 14
    .line 15
    iget-object v7, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->i:Ljava/lang/String;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    invoke-direct/range {v0 .. v9}, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1$onLoadFailed$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    const-wide/16 p3, 0x0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {p3, p4, p1, v0, p2}, Lwje;->d(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lteam/opay/pay/message/utils/NotificationHandler$getBitmapAsync$1;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Llfe;Lcom/bumptech/glide/load/DataSource;Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
