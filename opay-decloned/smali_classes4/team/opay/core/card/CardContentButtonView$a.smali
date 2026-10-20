.class public final Lteam/opay/core/card/CardContentButtonView$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "CardContentButtonView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/card/CardContentButtonView;->d(Lteam/opay/core/card/ButtonDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J)\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/core/card/CardContentButtonView$a",
        "Lcom/bumptech/glide/request/target/CustomTarget;",
        "Landroid/graphics/drawable/Drawable;",
        "resource",
        "Lcom/bumptech/glide/request/transition/a;",
        "transition",
        "",
        "b",
        "(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/a;)V",
        "errorDrawable",
        "i",
        "(Landroid/graphics/drawable/Drawable;)V",
        "placeholder",
        "e",
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
.field public final synthetic d:Lteam/opay/core/card/CardContentButtonView;


# direct methods
.method public constructor <init>(Lteam/opay/core/card/CardContentButtonView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/card/CardContentButtonView$a;->d:Lteam/opay/core/card/CardContentButtonView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/a<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
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
    iget-object p2, p0, Lteam/opay/core/card/CardContentButtonView$a;->d:Lteam/opay/core/card/CardContentButtonView;

    .line 7
    .line 8
    invoke-static {p2}, Lteam/opay/core/card/CardContentButtonView;->b(Lteam/opay/core/card/CardContentButtonView;)Lrb8;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object p2, p2, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardContentButtonView$a;->b(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->i(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lteam/opay/core/card/CardContentButtonView$a;->d:Lteam/opay/core/card/CardContentButtonView;

    .line 5
    .line 6
    invoke-static {p1}, Lteam/opay/core/card/CardContentButtonView;->b(Lteam/opay/core/card/CardContentButtonView;)Lrb8;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
