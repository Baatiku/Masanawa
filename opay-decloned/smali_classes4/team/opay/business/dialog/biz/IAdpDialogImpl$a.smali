.class public final Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "IAdpDialogImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/dialog/biz/IAdpDialogImpl;->q(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V
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
        "team/opay/business/dialog/biz/IAdpDialogImpl$a",
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
        "business-dialog_release"
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
.field public final synthetic d:Lfa3;

.field public final synthetic e:Lteam/opay/business/provider/active/AdItem;

.field public final synthetic f:Lteam/opay/business/dialog/biz/IAdpDialogImpl;

.field public final synthetic g:Landroidx/fragment/app/FragmentManager;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfa3;Lteam/opay/business/provider/active/AdItem;Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->d:Lfa3;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->e:Lteam/opay/business/provider/active/AdItem;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->f:Lteam/opay/business/dialog/biz/IAdpDialogImpl;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->g:Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->h:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/a;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->j(Ljava/io/File;Lcom/bumptech/glide/request/transition/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->d:Lfa3;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lfa3;->c(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public j(Ljava/io/File;Lcom/bumptech/glide/request/transition/a;)V
    .locals 3
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
    iget-object p2, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->e:Lteam/opay/business/provider/active/AdItem;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lteam/opay/business/provider/active/AdItem;->setImgUrl(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->f:Lteam/opay/business/dialog/biz/IAdpDialogImpl;

    .line 16
    .line 17
    iget-object p2, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->g:Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->h:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->e:Lteam/opay/business/provider/active/AdItem;

    .line 22
    .line 23
    iget-object v2, p0, Lteam/opay/business/dialog/biz/IAdpDialogImpl$a;->d:Lfa3;

    .line 24
    .line 25
    invoke-static {p1, p2, v0, v1, v2}, Lteam/opay/business/dialog/biz/IAdpDialogImpl;->f(Lteam/opay/business/dialog/biz/IAdpDialogImpl;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Lfa3;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
