.class public final Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "RewardsTaskDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a",
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
.field public final synthetic d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    .line 4
    .line 5
    .line 6
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
    iget-object p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p2, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 32
    .line 33
    invoke-virtual {p2}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lfia;

    .line 38
    .line 39
    iget-object p2, p2, Lfia;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->d:Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p2, v0, p1, p1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/opay/team/newhome/reward/tasks/RewardsTaskDialogFragment$a;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
