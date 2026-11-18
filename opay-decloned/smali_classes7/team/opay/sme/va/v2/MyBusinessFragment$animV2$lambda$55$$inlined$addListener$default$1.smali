.class public final Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/va/v2/MyBusinessFragment;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release"
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
.field public final synthetic a:Lteam/opay/sme/va/v2/MyBusinessFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/va/v2/MyBusinessFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lbl8;->c:Lbl8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const-string v2, "animV2 \u52a8\u753b\u7ed3\u675f\u5566"

    .line 6
    .line 7
    invoke-static {p1, v2, v0, v1, v0}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Loaf;->a:Loaf;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Loaf;->H(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->v0(Lteam/opay/sme/va/v2/MyBusinessFragment;)Lfxd;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lfxd;->A:Lteam/opay/business/provider/active/ImageLottieView;

    .line 41
    .line 42
    const-string v0, "lottieBg"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lg0g;->d(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 51
    .line 52
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->U0(Lteam/opay/sme/va/v2/MyBusinessFragment;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/sme/va/v2/MyBusinessFragment$animV2$lambda$55$$inlined$addListener$default$1;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lteam/opay/sme/va/v2/MyBusinessFragment;->z0(Lteam/opay/sme/va/v2/MyBusinessFragment;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
