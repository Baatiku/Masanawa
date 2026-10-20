.class public final Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;
.super Ljava/lang/Object;
.source "Visibility.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/android/view/VisibilityKt;->e(Landroid/view/View;Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R$\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u0008\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "<init>",
        "(ILkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V",
        "",
        "onGlobalLayout",
        "()V",
        "Landroid/view/View;",
        "a",
        "Landroid/view/View;",
        "getAddedView",
        "()Landroid/view/View;",
        "(Landroid/view/View;)V",
        "addedView",
        "common-base_release"
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
.field public a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function2;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->c:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->d:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->e:Landroid/view/View;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->f:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->a:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->a:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->d:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x2

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lnk8;->c:Lnk8;

    .line 36
    .line 37
    iget v3, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->b:I

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " -> onGlobalLayout.step-4-1, isVisible = false"

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v0, v3, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->c:Lkotlin/jvm/functions/Function2;

    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->d:Landroid/view/View;

    .line 62
    .line 63
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->e:Landroid/view/View;

    .line 69
    .line 70
    invoke-static {}, Lteam/opay/core/common/android/view/VisibilityKt;->d()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lnk8;->c:Lnk8;

    .line 79
    .line 80
    iget v3, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->b:I

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, " -> onGlobalLayout.step-4-2, isVisible = true"

    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v0, v3, v2, v1, v2}, Lteam/opay/core/common/GenericLogger;->s(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->c:Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    iget-object v1, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->d:Landroid/view/View;

    .line 105
    .line 106
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->e:Landroid/view/View;

    .line 112
    .line 113
    invoke-static {}, Lteam/opay/core/common/android/view/VisibilityKt;->d()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;->f:Lkotlin/jvm/functions/Function1;

    .line 122
    .line 123
    const-string v1, "step-1"

    .line 124
    .line 125
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method
