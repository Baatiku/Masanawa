.class public final Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;
.super Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper$AnimationEndListener;
.source "BaseUserVAFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "team/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c",
        "Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper$AnimationEndListener;",
        "Landroid/view/animation/Animation;",
        "animation",
        "",
        "onAnimationEnd",
        "(Landroid/view/animation/Animation;)V",
        "sme-va_release"
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
.field public final synthetic a:Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;->a:Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper$AnimationEndListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;->a:Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$c;->b:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
