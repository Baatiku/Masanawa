.class public final Lteam/opay/pay/widget/internal/ViewPager2Helper;
.super Ljava/lang/Object;
.source "ViewPager2Helper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ/\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lteam/opay/pay/widget/internal/ViewPager2Helper;",
        "",
        "<init>",
        "()V",
        "Lag8;",
        "lifecycleOwner",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "pager",
        "",
        "item",
        "",
        "d",
        "(Lag8;Landroidx/viewpager2/widget/ViewPager2;I)V",
        "",
        "duration",
        "b",
        "(Lag8;Landroidx/viewpager2/widget/ViewPager2;IJ)V",
        "Landroid/animation/ValueAnimator;",
        "a",
        "Landroid/animation/ValueAnimator;",
        "animator",
        "I",
        "previousValue",
        "loop-viewpager_release"
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
.field public a:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lag8;Lteam/opay/pay/widget/internal/ViewPager2Helper;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/widget/internal/ViewPager2Helper;->c(Lag8;Lteam/opay/pay/widget/internal/ViewPager2Helper;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lag8;Lteam/opay/pay/widget/internal/ViewPager2Helper;Landroidx/viewpager2/widget/ViewPager2;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$pager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "animation"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p0, v0

    .line 31
    :goto_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    .line 33
    if-eq p0, v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    instance-of p3, p0, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    check-cast v0, Ljava/lang/Integer;

    .line 45
    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p3, 0x0

    .line 55
    :goto_1
    iget v1, p1, Lteam/opay/pay/widget/internal/ViewPager2Helper;->b:I

    .line 56
    .line 57
    sub-int/2addr p3, v1

    .line 58
    int-to-float p3, p3

    .line 59
    neg-float p3, p3

    .line 60
    invoke-virtual {p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->d(F)Z

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :cond_3
    iput p0, p1, Lteam/opay/pay/widget/internal/ViewPager2Helper;->b:I

    .line 70
    .line 71
    :cond_4
    return-void
.end method


# virtual methods
.method public final b(Lag8;Landroidx/viewpager2/widget/ViewPager2;IJ)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pager"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->b:I

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sub-int/2addr p3, v1

    .line 37
    mul-int v2, v2, p3

    .line 38
    .line 39
    iget-object p3, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    .line 45
    .line 46
    :cond_2
    filled-new-array {v0, v2}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iput-object p3, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    new-instance v0, Ly0g;

    .line 59
    .line 60
    invoke-direct {v0, p1, p0, p2}, Ly0g;-><init>(Lag8;Lteam/opay/pay/widget/internal/ViewPager2Helper;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object p3, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    new-instance v0, Lteam/opay/pay/widget/internal/ViewPager2Helper$a;

    .line 71
    .line 72
    invoke-direct {v0, p1, p2}, Lteam/opay/pay/widget/internal/ViewPager2Helper$a;-><init>(Lag8;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 84
    .line 85
    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    :goto_2
    iget-object p1, p0, Lteam/opay/pay/widget/internal/ViewPager2Helper;->a:Landroid/animation/ValueAnimator;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 104
    .line 105
    .line 106
    :cond_7
    return-void
.end method

.method public final d(Lag8;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    if-eqz p2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->f()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->b()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p2, p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->m(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p2, p3, v0}, Landroidx/viewpager2/widget/ViewPager2;->m(IZ)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    return-void
.end method
