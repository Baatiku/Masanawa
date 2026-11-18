.class public final Lteam/opay/pay/util/ViewShowEventReport;
.super Ljava/lang/Object;
.source "ViewShowEventReport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JQ\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062.\u0010\n\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0008\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R(\u0010\u001a\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0016j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/pay/util/ViewShowEventReport;",
        "",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "key",
        "",
        "Lkotlin/Pair;",
        "values",
        "",
        "c",
        "(Landroid/view/View;Ljava/lang/String;[Lkotlin/Pair;)V",
        "Landroid/content/Context;",
        "ctx",
        "",
        "g",
        "(Landroid/content/Context;)I",
        "",
        "f",
        "(Landroid/view/View;)Z",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "a",
        "Ljava/util/HashSet;",
        "upLoadIds",
        "b",
        "I",
        "mStatusBarHeight",
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
.field public final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;[Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/util/ViewShowEventReport;->d(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;[Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/util/ViewShowEventReport;->e(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;[Lkotlin/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->d()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/util/ViewShowEventReport;->f(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lx7b;->a:Lx7b;

    .line 22
    .line 23
    array-length v1, p3

    .line 24
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, [Lkotlin/Pair;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    check-cast p2, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->d()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static final e(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p2, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->c()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/util/ViewShowEventReport;->f(Landroid/view/View;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lx7b;->a:Lx7b;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [Lkotlin/Pair;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    check-cast p2, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 35
    .line 36
    invoke-virtual {p2}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->c()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public final varargs c(Landroid/view/View;Ljava/lang/String;[Lkotlin/Pair;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/util/ViewShowEventReport;->a:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    instance-of v0, p1, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;

    .line 30
    .line 31
    new-instance v1, Lf1g;

    .line 32
    .line 33
    invoke-direct {v1, p0, p2, p1, p3}, Lf1g;-><init>(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;[Lkotlin/Pair;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->b(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 37
    .line 38
    .line 39
    new-instance p3, Lg1g;

    .line 40
    .line 41
    invoke-direct {p3, p0, p2, p1}, Lg1g;-><init>(Lteam/opay/pay/util/ViewShowEventReport;Ljava/lang/String;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Lteam/opay/pay/ad/AutoRemoveListenerConstraintLayout;->a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/view/View;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "getContext(...)"

    .line 31
    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Ljmf;->q(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/ViewShowEventReport;->g(Landroid/content/Context;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    add-int/2addr v3, p1

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    if-ltz p1, :cond_1

    .line 56
    .line 57
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    if-ge p1, v3, :cond_1

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    :cond_1
    :goto_0
    return v0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/util/ViewShowEventReport;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lteam/opay/swarmfoundation/utils/StatusBarUtil;->d(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lteam/opay/pay/util/ViewShowEventReport;->b:I

    .line 10
    .line 11
    :cond_0
    iget p1, p0, Lteam/opay/pay/util/ViewShowEventReport;->b:I

    .line 12
    .line 13
    return p1
.end method
