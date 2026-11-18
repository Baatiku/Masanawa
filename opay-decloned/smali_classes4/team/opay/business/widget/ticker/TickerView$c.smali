.class public Lteam/opay/business/widget/ticker/TickerView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/widget/ticker/TickerView;->g(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lteam/opay/business/widget/ticker/TickerView;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/ticker/TickerView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->b:Lteam/opay/business/widget/ticker/TickerView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/widget/ticker/TickerView$c;->a:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->b:Lteam/opay/business/widget/ticker/TickerView;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/business/widget/ticker/TickerView;->a(Lteam/opay/business/widget/ticker/TickerView;)Lrke;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lrke;->f()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->b:Lteam/opay/business/widget/ticker/TickerView;

    .line 11
    .line 12
    invoke-static {p1}, Lteam/opay/business/widget/ticker/TickerView;->b(Lteam/opay/business/widget/ticker/TickerView;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->b:Lteam/opay/business/widget/ticker/TickerView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1a

    .line 23
    .line 24
    if-lt p1, v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->a:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lteam/opay/business/widget/ticker/TickerView$c;->b:Lteam/opay/business/widget/ticker/TickerView;

    .line 33
    .line 34
    iget-object v0, p0, Lteam/opay/business/widget/ticker/TickerView$c;->a:Ljava/lang/Runnable;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
