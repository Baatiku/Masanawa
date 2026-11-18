.class public Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;
.super Ljava/lang/Object;
.source "RedPackageFloatingMagnetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;->b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;->b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->o()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;->b:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->a(Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-boolean v2, p0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView$a;->a:Z

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatingMagnetView;->n(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
