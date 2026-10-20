.class public Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;
.super Ljava/lang/Object;
.source "RedPackageFloatingMagnetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:F

.field public c:F

.field public d:Landroid/animation/AnimatorSet;

.field public final synthetic e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->a:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Lnhc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(FF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->b:F

    .line 2
    .line 3
    iput p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->c:F

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->a:Landroid/os/Handler;

    .line 9
    .line 10
    const-wide/16 v0, 0x1388

    .line 11
    .line 12
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->b:F

    .line 22
    .line 23
    iget-object v1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lgmf;->d(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    cmpl-float v0, v0, v1

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->g:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 47
    .line 48
    iget v1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->b:F

    .line 49
    .line 50
    iget v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->c:F

    .line 51
    .line 52
    new-instance v3, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b$a;

    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b$a;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2, v3}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$b;->d:Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method
