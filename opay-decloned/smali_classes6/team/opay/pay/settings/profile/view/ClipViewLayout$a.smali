.class public final Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;
.super Lcom/bumptech/glide/request/target/CustomViewTarget;
.source "ClipViewLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/profile/view/ClipViewLayout;->setImageSrc(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomViewTarget<",
        "Landroid/view/View;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u0008J)\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00032\u0010\u0010\r\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0003\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/settings/profile/view/ClipViewLayout$a",
        "Lcom/bumptech/glide/request/target/CustomViewTarget;",
        "Landroid/view/View;",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/Drawable;",
        "errorDrawable",
        "",
        "i",
        "(Landroid/graphics/drawable/Drawable;)V",
        "placeholder",
        "k",
        "resource",
        "Lcom/bumptech/glide/request/transition/a;",
        "transition",
        "p",
        "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V",
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
.field public final synthetic h:Lteam/opay/pay/settings/profile/view/ClipViewLayout;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/profile/view/ClipViewLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;->h:Lteam/opay/pay/settings/profile/view/ClipViewLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/CustomViewTarget;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic n(Ljava/lang/OutOfMemoryError;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;->r(Ljava/lang/OutOfMemoryError;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;->q(Ljava/lang/Exception;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final q(Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "e = {"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string/jumbo p0, "}"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static final r(Ljava/lang/OutOfMemoryError;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "oom "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;->p(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/a<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p2, "resource"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v1, p0, Lteam/opay/pay/settings/profile/view/ClipViewLayout$a;->h:Lteam/opay/pay/settings/profile/view/ClipViewLayout;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lteam/opay/pay/settings/profile/view/ClipViewLayout;->d(Lteam/opay/pay/settings/profile/view/ClipViewLayout;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_2

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lxk8;->a:Lxk8;

    .line 22
    .line 23
    new-instance v2, Lme2;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lme2;-><init>(Ljava/lang/OutOfMemoryError;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, v2, p2, v0}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lxk8;->a:Lxk8;

    .line 36
    .line 37
    new-instance v2, Lle2;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Lle2;-><init>(Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0, v2, p2, v0}, Lxk8;->i(Lxk8;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    return-void
.end method
