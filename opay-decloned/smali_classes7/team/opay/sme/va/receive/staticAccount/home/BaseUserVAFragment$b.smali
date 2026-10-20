.class public final Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;
.super Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper$AnimationEndListener;
.source "BaseUserVAFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->S(Lteam/opay/core/common/base/BaseDialogFragment;)V
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
        "team/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b",
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

.field public final synthetic b:Lteam/opay/core/common/base/BaseDialogFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;Lteam/opay/core/common/base/BaseDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;->a:Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;->b:Lteam/opay/core/common/base/BaseDialogFragment;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;->a:Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;->K(Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/sme/va/receive/staticAccount/home/BaseUserVAFragment$b;->b:Lteam/opay/core/common/base/BaseDialogFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/common/base/BaseDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
