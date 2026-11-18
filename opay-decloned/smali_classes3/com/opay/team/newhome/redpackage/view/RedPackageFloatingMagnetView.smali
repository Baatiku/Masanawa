.class public Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;
.super Landroid/widget/FrameLayout;
.source "RedPackageFloatingMagnetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;,
        Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:Lphc;

.field public f:J

.field public g:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

.field public h:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:F

.field public n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->l:Z

    .line 5
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->i()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->f(FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->c:F

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->d:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->a:F

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->b:F

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->f:J

    .line 30
    .line 31
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->m:F

    .line 3
    .line 4
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->e:Lphc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lphc;->a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final f(FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-float/2addr v0, p1

    .line 10
    const/4 p1, 0x2

    .line 11
    new-array p1, p1, [F

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput p2, p1, v1

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    aput v0, p1, p2

    .line 18
    .line 19
    const-string v0, "translationX"

    .line 20
    .line 21
    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 28
    .line 29
    .line 30
    new-array p2, p2, [Landroid/animation/Animator;

    .line 31
    .line 32
    aput-object p1, p2, v1

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 p1, 0x190

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->h(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getMagnetViewListener()Lphc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->e:Lphc;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    return-object v0
.end method

.method public h(ZZ)V
    .locals 1

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    neg-int p1, p1

    .line 10
    :goto_0
    int-to-float p1, p1

    .line 11
    div-float/2addr p1, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    const/4 v0, 0x0

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    iget p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->m:F

    .line 22
    .line 23
    cmpl-float p2, p2, v0

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->d()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->h:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;

    .line 31
    .line 32
    invoke-virtual {p2, p1, v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->c(FF)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Lohc;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->g:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

    .line 8
    .line 9
    new-instance v0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Lnhc;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->h:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->k:I

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lmhc;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lmhc;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->i:I

    .line 2
    .line 3
    div-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v0, v0

    .line 10
    cmpg-float v0, v1, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-boolean v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->l:Z

    .line 18
    .line 19
    return v0
.end method

.method public k()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->f:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x96

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->m:F

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n(ZZ)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    neg-float p1, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lgmf;->d(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    add-float/2addr v0, v1

    .line 28
    sub-float/2addr p1, v0

    .line 29
    :goto_0
    const/4 v0, 0x0

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    iget p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->m:F

    .line 33
    .line 34
    cmpl-float p2, p2, v0

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->d()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->g:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

    .line 42
    .line 43
    invoke-virtual {p2, p1, v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->c(FF)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->i:I

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j:I

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lgmf;->d(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->i:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lgmf;->c(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j:I

    .line 50
    .line 51
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->l(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    new-instance v1, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n:J

    .line 23
    .line 24
    sub-long/2addr v2, v4

    .line 25
    const-wide/16 v4, 0x32

    .line 26
    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-lez v0, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->p(Landroid/view/MotionEvent;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iput-wide v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n:J

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    iput-wide v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n:J

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->d()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->m()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->k()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->e()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->g()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->c(Landroid/view/MotionEvent;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->o()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->g:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->h:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    iput-wide v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n:J

    .line 85
    .line 86
    :cond_5
    :goto_0
    return v1
.end method

.method public final p(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->c:F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-float/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->a:F

    .line 9
    .line 10
    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setX(F)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->d:F

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-float/2addr v0, p1

    .line 21
    iget p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->b:F

    .line 22
    .line 23
    sub-float/2addr v0, p1

    .line 24
    iget p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->k:I

    .line 25
    .line 26
    int-to-float v1, p1

    .line 27
    cmpg-float v1, v0, v1

    .line 28
    .line 29
    if-gez v1, :cond_0

    .line 30
    .line 31
    int-to-float v0, p1

    .line 32
    :cond_0
    iget p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j:I

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr p1, v1

    .line 39
    int-to-float p1, p1

    .line 40
    cmpl-float p1, v0, p1

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    iget p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->j:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr p1, v0

    .line 51
    int-to-float v0, p1

    .line 52
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public setMagnetViewListener(Lphc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->e:Lphc;

    .line 2
    .line 3
    return-void
.end method
