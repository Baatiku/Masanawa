.class public final Lteam/opay/pay/android/views/PatternedView$a;
.super Landroid/view/ViewOutlineProvider;
.source "PatternedView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/android/views/PatternedView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "team/opay/pay/android/views/PatternedView$a",
        "Landroid/view/ViewOutlineProvider;",
        "Landroid/view/View;",
        "view",
        "Landroid/graphics/Outline;",
        "outline",
        "",
        "getOutline",
        "(Landroid/view/View;Landroid/graphics/Outline;)V",
        "sdk_release"
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
.field public final synthetic a:Lteam/opay/pay/android/views/PatternedView;


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/views/PatternedView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/PatternedView$a;->a:Lteam/opay/pay/android/views/PatternedView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget-object v2, p0, Lteam/opay/pay/android/views/PatternedView$a;->a:Lteam/opay/pay/android/views/PatternedView;

    .line 16
    .line 17
    invoke-static {v2}, Lteam/opay/pay/android/views/PatternedView;->b(Lteam/opay/pay/android/views/PatternedView;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v1, v2

    .line 22
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    iget-object v4, p0, Lteam/opay/pay/android/views/PatternedView$a;->a:Lteam/opay/pay/android/views/PatternedView;

    .line 27
    .line 28
    invoke-static {v4}, Lteam/opay/pay/android/views/PatternedView;->a(Lteam/opay/pay/android/views/PatternedView;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/2addr v3, v4

    .line 33
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
