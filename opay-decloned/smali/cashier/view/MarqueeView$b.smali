.class public final Lcashier/view/MarqueeView$b;
.super Ljava/lang/Object;
.source "MarqueeView.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcashier/view/MarqueeView;->n(II)V
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
        "cashier/view/MarqueeView$b",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/view/animation/Animation;",
        "animation",
        "",
        "onAnimationStart",
        "(Landroid/view/animation/Animation;)V",
        "onAnimationEnd",
        "onAnimationRepeat",
        "cashier_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcashier/view/MarqueeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcashier/view/MarqueeView<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcashier/view/MarqueeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcashier/view/MarqueeView<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

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
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 7
    .line 8
    invoke-static {p1}, Lcashier/view/MarqueeView;->e(Lcashier/view/MarqueeView;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcashier/view/MarqueeView;->h(Lcashier/view/MarqueeView;I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 18
    .line 19
    invoke-static {p1}, Lcashier/view/MarqueeView;->e(Lcashier/view/MarqueeView;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 24
    .line 25
    invoke-static {v0}, Lcashier/view/MarqueeView;->c(Lcashier/view/MarqueeView;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    if-lt p1, v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 37
    .line 38
    invoke-static {p1, v1}, Lcashier/view/MarqueeView;->h(Lcashier/view/MarqueeView;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 42
    .line 43
    invoke-static {p1}, Lcashier/view/MarqueeView;->c(Lcashier/view/MarqueeView;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 48
    .line 49
    invoke-static {v2}, Lcashier/view/MarqueeView;->e(Lcashier/view/MarqueeView;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcashier/view/MarqueeView;->b(Lcashier/view/MarqueeView;Ljava/lang/Object;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 73
    .line 74
    invoke-static {p1, v1}, Lcashier/view/MarqueeView;->g(Lcashier/view/MarqueeView;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

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
    .param p1    # Landroid/view/animation/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 7
    .line 8
    invoke-static {v0}, Lcashier/view/MarqueeView;->f(Lcashier/view/MarqueeView;)Z

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
    iget-object p1, p0, Lcashier/view/MarqueeView$b;->a:Lcashier/view/MarqueeView;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p1, v0}, Lcashier/view/MarqueeView;->g(Lcashier/view/MarqueeView;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
