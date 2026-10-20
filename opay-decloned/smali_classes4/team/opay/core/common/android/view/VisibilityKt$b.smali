.class public final Lteam/opay/core/common/android/view/VisibilityKt$b;
.super Ljava/lang/Object;
.source "Visibility.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/core/common/android/view/VisibilityKt;->e(Landroid/view/View;Ljava/util/List;ZLkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "team/opay/core/common/android/view/VisibilityKt$b",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/View;",
        "v",
        "",
        "onViewAttachedToWindow",
        "(Landroid/view/View;)V",
        "onViewDetachedFromWindow",
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
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;

.field public final synthetic d:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->b:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->c:Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;

    .line 6
    .line 7
    iput-object p4, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->d:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/core/common/android/view/VisibilityKt$b;->b(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Let;->j(Landroid/view/View;)Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const p1, 0x1020002

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p0, v1

    .line 46
    :goto_0
    if-eqz p0, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    invoke-virtual {p0, p3}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p0, p4}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/view/ViewGroup;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->a:Landroid/view/View;

    .line 7
    .line 8
    iget-object v4, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->b:Ljava/util/List;

    .line 9
    .line 10
    iget-object v5, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->c:Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;

    .line 11
    .line 12
    iget-object v6, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->d:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 13
    .line 14
    iget-object v7, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    new-instance v8, Lq2g;

    .line 17
    .line 18
    move-object v1, v8

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, v0

    .line 21
    invoke-direct/range {v1 .. v7}, Lq2g;-><init>(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lteam/opay/core/common/android/view/VisibilityKt$addOnVisibilityChangeListener$LayoutListener;Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/core/common/android/view/VisibilityKt$b;->a:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
