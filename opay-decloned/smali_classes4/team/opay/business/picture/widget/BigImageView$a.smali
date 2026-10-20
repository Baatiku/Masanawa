.class public final Lteam/opay/business/picture/widget/BigImageView$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BigImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/picture/widget/BigImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/business/picture/widget/BigImageView$a",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onDoubleTap",
        "(Landroid/view/MotionEvent;)Z",
        "onSingleTapConfirmed",
        "business-picture_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/business/picture/widget/BigImageView;


# direct methods
.method public constructor <init>(Lteam/opay/business/picture/widget/BigImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk8;->c:Lfk8;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const-string v3, "--------onDoubleTap"

    .line 11
    .line 12
    invoke-static {v0, v3, v1, v2, v1}, Lteam/opay/core/common/GenericLogger;->j(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 16
    .line 17
    invoke-static {v0}, Lteam/opay/business/picture/widget/BigImageView;->g(Lteam/opay/business/picture/widget/BigImageView;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v2, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 34
    .line 35
    invoke-virtual {v2}, Lteam/opay/business/picture/widget/BigImageView;->getScale()F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 40
    .line 41
    invoke-static {v4}, Lteam/opay/business/picture/widget/BigImageView;->e(Lteam/opay/business/picture/widget/BigImageView;)F

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const-wide/16 v5, 0x10

    .line 46
    .line 47
    cmpg-float v3, v3, v4

    .line 48
    .line 49
    if-gez v3, :cond_1

    .line 50
    .line 51
    iget-object v3, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 52
    .line 53
    new-instance v4, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;

    .line 54
    .line 55
    invoke-static {v3}, Lteam/opay/business/picture/widget/BigImageView;->e(Lteam/opay/business/picture/widget/BigImageView;)F

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-direct {v4, v3, v7, v0, p1}, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;-><init>(Lteam/opay/business/picture/widget/BigImageView;FFF)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v3, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 67
    .line 68
    new-instance v4, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;

    .line 69
    .line 70
    invoke-static {v3}, Lteam/opay/business/picture/widget/BigImageView;->d(Lteam/opay/business/picture/widget/BigImageView;)F

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-direct {v4, v3, v7, v0, p1}, Lteam/opay/business/picture/widget/BigImageView$AutoScaleRunnable;-><init>(Lteam/opay/business/picture/widget/BigImageView;FFF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-static {v2, v1}, Lteam/opay/business/picture/widget/BigImageView;->h(Lteam/opay/business/picture/widget/BigImageView;Z)V

    .line 81
    .line 82
    .line 83
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/picture/widget/BigImageView$a;->a:Lteam/opay/business/picture/widget/BigImageView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/business/picture/widget/BigImageView;->getOnSingleTapConfirm()Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
