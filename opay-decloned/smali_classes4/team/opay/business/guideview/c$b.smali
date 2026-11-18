.class public Lteam/opay/business/guideview/c$b;
.super Ljava/lang/Object;
.source "Guide.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/guideview/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lteam/opay/business/guideview/c;


# direct methods
.method public constructor <init>(Lteam/opay/business/guideview/c;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/guideview/c$b;->b:Lteam/opay/business/guideview/c;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/guideview/c$b;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/business/guideview/c$b;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/business/guideview/c$b;->b:Lteam/opay/business/guideview/c;

    .line 4
    .line 5
    invoke-static {v0}, Lteam/opay/business/guideview/c;->a(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/MaskView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/business/guideview/c$b;->b:Lteam/opay/business/guideview/c;

    .line 13
    .line 14
    invoke-static {p1}, Lteam/opay/business/guideview/c;->b(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/GuideBuilder$b;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lteam/opay/business/guideview/c$b;->b:Lteam/opay/business/guideview/c;

    .line 21
    .line 22
    invoke-static {p1}, Lteam/opay/business/guideview/c;->b(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/GuideBuilder$b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lteam/opay/business/guideview/GuideBuilder$b;->onDismiss()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lteam/opay/business/guideview/c$b;->b:Lteam/opay/business/guideview/c;

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/business/guideview/c;->c(Lteam/opay/business/guideview/c;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
