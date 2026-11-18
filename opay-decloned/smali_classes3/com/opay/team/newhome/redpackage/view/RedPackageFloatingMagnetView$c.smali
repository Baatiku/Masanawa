.class public Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;
.super Ljava/lang/Object;
.source "RedPackageFloatingMagnetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/animation/AnimatorSet;

.field public final synthetic b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Lohc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->a:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 2
    .line 3
    new-instance v1, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c$a;-><init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2, v1}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->b(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->a:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->a:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$c;->a:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
