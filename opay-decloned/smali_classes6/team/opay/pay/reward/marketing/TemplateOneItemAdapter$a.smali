.class public final Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "TemplateOneItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter;->m(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/reward/marketing/WidgetModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J)\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/reward/marketing/TemplateOneItemAdapter$a",
        "Lcom/bumptech/glide/request/target/CustomTarget;",
        "Landroid/graphics/Bitmap;",
        "resource",
        "Lcom/bumptech/glide/request/transition/a;",
        "transition",
        "",
        "b",
        "(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V",
        "Landroid/graphics/drawable/Drawable;",
        "placeholder",
        "e",
        "(Landroid/graphics/drawable/Drawable;)V",
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
.field public final synthetic d:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Landroid/content/Context;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;->d:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V
    .locals 2
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
    iget-object p2, p0, Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;->d:Lcom/google/android/material/button/MaterialButton;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    iget-object v1, p0, Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;->e:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p2, v0, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
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
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/reward/marketing/TemplateOneItemAdapter$a;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
