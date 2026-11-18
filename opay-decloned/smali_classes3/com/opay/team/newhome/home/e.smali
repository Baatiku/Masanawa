.class public final synthetic Lcom/opay/team/newhome/home/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/opay/team/newhome/home/FloatingWidget;


# direct methods
.method public synthetic constructor <init>(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/home/e;->a:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/home/e;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/opay/team/newhome/home/e;->c:Lcom/opay/team/newhome/home/FloatingWidget;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/home/e;->a:Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/home/e;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/opay/team/newhome/home/e;->c:Lcom/opay/team/newhome/home/FloatingWidget;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel$showPopTrue$1;->c(Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;Landroid/view/View;Lcom/opay/team/newhome/home/FloatingWidget;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
