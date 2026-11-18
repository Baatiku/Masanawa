.class final Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "ScrollLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/widget/scrolllayout/ScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DragCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016J \u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\tH\u0016J0\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016J \u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "<init>",
        "(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V",
        "tryCaptureView",
        "",
        "child",
        "Landroid/view/View;",
        "pointerId",
        "",
        "clampViewPositionHorizontal",
        "left",
        "dx",
        "clampViewPositionVertical",
        "top",
        "dy",
        "onViewCaptured",
        "",
        "capturedChild",
        "activePointerId",
        "onViewPositionChanged",
        "changedView",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "",
        "yvel",
        "business-widget_release"
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
.field public final synthetic a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;


# direct methods
.method public constructor <init>(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "child"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->e(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    if-gez p2, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 19
    .line 20
    invoke-static {p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->f(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    if-lez p2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 34
    .line 35
    invoke-static {v0}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->d(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-le p1, v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 48
    .line 49
    invoke-static {p1, p2}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->g(Lteam/opay/business/widget/scrolllayout/ScrollLayout;I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 53
    .line 54
    invoke-static {p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->c(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-le v0, p1, :cond_3

    .line 63
    .line 64
    neg-int p1, p1

    .line 65
    return p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " , "

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    return p2
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "child"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "capturedChild"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getElevation()F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    int-to-float v0, v0

    .line 14
    add-float/2addr p2, v0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "changedView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "releasedChild"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 7
    .line 8
    invoke-static {p1}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->h(Lteam/opay/business/widget/scrolllayout/ScrollLayout;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "child"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lteam/opay/business/widget/scrolllayout/ScrollLayout$DragCallback;->a:Lteam/opay/business/widget/scrolllayout/ScrollLayout;

    .line 7
    .line 8
    invoke-virtual {p2}, Lteam/opay/business/widget/scrolllayout/ScrollLayout;->j()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sget p2, Lteam/opay/business/widget/R$id;->contentLayout:I

    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method
