.class public final Lteam/opay/pay/widget/internal/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR*\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lteam/opay/pay/widget/internal/CustomViewPager;",
        "Landroidx/viewpager/widget/ViewPager;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "T",
        "()V",
        "Lteam/opay/pay/widget/internal/LoopScroller;",
        "v0",
        "Lteam/opay/pay/widget/internal/LoopScroller;",
        "mLoopScroller",
        "",
        "value",
        "w0",
        "I",
        "getScrollDuration",
        "()I",
        "setScrollDuration",
        "(I)V",
        "scrollDuration",
        "loop-viewpager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public v0:Lteam/opay/pay/widget/internal/LoopScroller;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w0:I

.field public x0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->x0:Ljava/util/Map;

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x320

    .line 2
    iput p1, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->w0:I

    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/widget/internal/CustomViewPager;->T()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->x0:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x320

    .line 5
    iput p1, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->w0:I

    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/widget/internal/CustomViewPager;->T()V

    return-void
.end method


# virtual methods
.method public final T()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lteam/opay/pay/widget/internal/LoopScroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "context"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lteam/opay/pay/widget/internal/LoopScroller;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->v0:Lteam/opay/pay/widget/internal/LoopScroller;

    .line 16
    .line 17
    const/16 v1, 0x320

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/widget/internal/LoopScroller;->a(I)V

    .line 20
    .line 21
    .line 22
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    .line 23
    .line 24
    const-string v1, "j"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->v0:Lteam/opay/pay/widget/internal/LoopScroller;

    .line 35
    .line 36
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final getScrollDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->w0:I

    .line 2
    .line 3
    return v0
.end method

.method public final setScrollDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->w0:I

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/widget/internal/CustomViewPager;->v0:Lteam/opay/pay/widget/internal/LoopScroller;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lteam/opay/pay/widget/internal/LoopScroller;->a(I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method
