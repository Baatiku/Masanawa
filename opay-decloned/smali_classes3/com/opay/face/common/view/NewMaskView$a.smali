.class public Lcom/opay/face/common/view/NewMaskView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NewMaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/face/common/view/NewMaskView;->j(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/opay/face/common/view/NewMaskView;


# direct methods
.method public constructor <init>(Lcom/opay/face/common/view/NewMaskView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/common/view/NewMaskView$a;->a:Lcom/opay/face/common/view/NewMaskView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/opay/face/common/view/NewMaskView$a;->a:Lcom/opay/face/common/view/NewMaskView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/opay/face/common/view/NewMaskView;->c(Lcom/opay/face/common/view/NewMaskView;)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p1, v0}, Lcom/opay/face/common/view/NewMaskView;->b(Lcom/opay/face/common/view/NewMaskView;F)F

    .line 11
    .line 12
    .line 13
    return-void
.end method
