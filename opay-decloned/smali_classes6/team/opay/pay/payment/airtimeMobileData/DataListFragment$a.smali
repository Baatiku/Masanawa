.class public final Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;
.super Ljava/lang/Object;
.source "DataListFragment.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/payment/airtimeMobileData/DataListFragment;->Z(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/payment/airtimeMobileData/DataListFragment$a",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/view/animation/Animation;",
        "animation",
        "",
        "onAnimationStart",
        "(Landroid/view/animation/Animation;)V",
        "onAnimationEnd",
        "onAnimationRepeat",
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
.field public final synthetic a:Lteam/opay/pay/payment/airtimeMobileData/DataListFragment;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lteam/opay/pay/payment/airtimeMobileData/DataListFragment;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->a:Lteam/opay/pay/payment/airtimeMobileData/DataListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->a:Lteam/opay/pay/payment/airtimeMobileData/DataListFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/base/BaseFragmentV2;->N()Lxyf;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lzb6;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->b:Landroid/view/View;

    .line 13
    .line 14
    iget-boolean v0, p0, Lteam/opay/pay/payment/airtimeMobileData/DataListFragment$a;->c:Z

    .line 15
    .line 16
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
