.class public final Lteam/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "CreateBranchBannerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter;->l(Lteam/opay/core/common/internal/BindingViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J)\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00022\u0010\u0010\n\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter$a",
        "Lcom/bumptech/glide/request/target/SimpleTarget;",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        "errorDrawable",
        "",
        "i",
        "(Landroid/graphics/drawable/Drawable;)V",
        "resource",
        "Lcom/bumptech/glide/request/transition/a;",
        "transition",
        "j",
        "(Ljava/io/File;Lcom/bumptech/glide/request/transition/a;)V",
        "business-sme-store_release"
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
.field public final synthetic d:Lteam/opay/core/common/internal/BindingViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lxvd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/common/internal/BindingViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/internal/BindingViewHolder<",
            "Lxvd;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter$a;->d:Lteam/opay/core/common/internal/BindingViewHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter$a;->j(Ljava/io/File;Lcom/bumptech/glide/request/transition/a;)V

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

.method public j(Ljava/io/File;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/a<",
            "-",
            "Ljava/io/File;",
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
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p2, p0, Lteam/opay/sme/store/branch/CreateBranchBannerFragment$BannerAdapter$a;->d:Lteam/opay/core/common/internal/BindingViewHolder;

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/core/common/internal/BindingViewHolder;->a()Lxyf;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Lxvd;

    .line 21
    .line 22
    iget-object p2, p2, Lxvd;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
