.class public Lteam/opay/business/widget/ticker/TickerView$a;
.super Ljava/lang/Object;
.source "TickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/widget/ticker/TickerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/ticker/TickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$a;->a:Lteam/opay/business/widget/ticker/TickerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView$a;->a:Lteam/opay/business/widget/ticker/TickerView;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/business/widget/ticker/TickerView;->a(Lteam/opay/business/widget/ticker/TickerView;)Lrke;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Lrke;->g(F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$a;->a:Lteam/opay/business/widget/ticker/TickerView;

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/business/widget/ticker/TickerView;->b(Lteam/opay/business/widget/ticker/TickerView;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$a;->a:Lteam/opay/business/widget/ticker/TickerView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
