.class public final Lteam/opay/pay/wallet/view/MarqueeView$b;
.super Ljava/lang/Object;
.source "MarqueeView.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/wallet/view/MarqueeView;->o(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/wallet/view/MarqueeView$b",
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
.field public final synthetic a:Lteam/opay/pay/wallet/view/MarqueeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/wallet/view/MarqueeView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/wallet/view/MarqueeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/wallet/view/MarqueeView<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/pay/wallet/view/MarqueeView;->e(Lteam/opay/pay/wallet/view/MarqueeView;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-static {v0, p1}, Lteam/opay/pay/wallet/view/MarqueeView;->h(Lteam/opay/pay/wallet/view/MarqueeView;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 20
    .line 21
    invoke-static {p1}, Lteam/opay/pay/wallet/view/MarqueeView;->e(Lteam/opay/pay/wallet/view/MarqueeView;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object v0, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 26
    .line 27
    invoke-static {v0}, Lteam/opay/pay/wallet/view/MarqueeView;->d(Lteam/opay/pay/wallet/view/MarqueeView;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-lt p1, v0, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 39
    .line 40
    invoke-static {p1, v1}, Lteam/opay/pay/wallet/view/MarqueeView;->h(Lteam/opay/pay/wallet/view/MarqueeView;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 44
    .line 45
    invoke-static {p1}, Lteam/opay/pay/wallet/view/MarqueeView;->d(Lteam/opay/pay/wallet/view/MarqueeView;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 50
    .line 51
    invoke-static {v2}, Lteam/opay/pay/wallet/view/MarqueeView;->e(Lteam/opay/pay/wallet/view/MarqueeView;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Lteam/opay/pay/wallet/view/MarqueeView;->c(Lteam/opay/pay/wallet/view/MarqueeView;Ljava/lang/Object;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 75
    .line 76
    invoke-static {p1, v1}, Lteam/opay/pay/wallet/view/MarqueeView;->g(Lteam/opay/pay/wallet/view/MarqueeView;Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 7
    .line 8
    invoke-static {v0}, Lteam/opay/pay/wallet/view/MarqueeView;->f(Lteam/opay/pay/wallet/view/MarqueeView;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/wallet/view/MarqueeView$b;->a:Lteam/opay/pay/wallet/view/MarqueeView;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0}, Lteam/opay/pay/wallet/view/MarqueeView;->g(Lteam/opay/pay/wallet/view/MarqueeView;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
