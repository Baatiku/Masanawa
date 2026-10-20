.class public Lteam/opay/business/guideview/c$a;
.super Ljava/lang/Object;
.source "Guide.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/guideview/c;->m(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/guideview/c;


# direct methods
.method public constructor <init>(Lteam/opay/business/guideview/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/guideview/c$a;->a:Lteam/opay/business/guideview/c;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/business/guideview/c$a;->a:Lteam/opay/business/guideview/c;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/business/guideview/c;->b(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/GuideBuilder$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/business/guideview/c$a;->a:Lteam/opay/business/guideview/c;

    .line 10
    .line 11
    invoke-static {p1}, Lteam/opay/business/guideview/c;->b(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/GuideBuilder$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lteam/opay/business/guideview/GuideBuilder$b;->onShown()V

    .line 16
    .line 17
    .line 18
    :cond_0
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
