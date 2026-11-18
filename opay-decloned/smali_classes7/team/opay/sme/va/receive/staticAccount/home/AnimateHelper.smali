.class public final Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;
.super Ljava/lang/Object;
.source "AnimateHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper$AnimationEndListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "a",
        "(Landroid/content/Context;)Landroid/view/View;",
        "animateView",
        "destView",
        "Landroid/view/animation/AnimationSet;",
        "c",
        "(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/AnimationSet;",
        "b",
        "(Landroid/content/Context;)Landroid/view/animation/AnimationSet;",
        "",
        "rest",
        "destRest",
        "d",
        "([I[I)Landroid/view/animation/AnimationSet;",
        "AnimationEndListener",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/View;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lteam/opay/sme/va/R$drawable;->sme_va_shape_oval_mint:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 17
    .line 18
    const/16 v1, 0x20

    .line 19
    .line 20
    invoke-static {v1}, Let;->h(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v1}, Let;->h(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-direct {p1, v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 33
    .line 34
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 35
    .line 36
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 37
    .line 38
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final b(Landroid/content/Context;)Landroid/view/animation/AnimationSet;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    sget v1, Lteam/opay/sme/va/R$anim;->sme_va_scale_animation:I

    .line 13
    .line 14
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    sget v1, Lteam/opay/sme/va/R$anim;->sme_va_alpha_animation:I

    .line 22
    .line 23
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final c(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/AnimationSet;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animateView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "destView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    new-array p1, v0, [I

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Lteam/opay/sme/va/receive/staticAccount/home/AnimateHelper;->d([I[I)Landroid/view/animation/AnimationSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final d([I[I)Landroid/view/animation/AnimationSet;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p2, v0

    .line 3
    .line 4
    aget v2, p1, v0

    .line 5
    .line 6
    sub-int/2addr v1, v2

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    invoke-static {v2}, Let;->h(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    add-int/2addr v1, v3

    .line 14
    int-to-float v1, v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aget p2, p2, v3

    .line 17
    .line 18
    aget p1, p1, v3

    .line 19
    .line 20
    sub-int/2addr p2, p1

    .line 21
    invoke-static {v2}, Let;->h(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    add-int/2addr p2, p1

    .line 26
    int-to-float p1, p2

    .line 27
    new-instance p2, Landroid/view/animation/AnimationSet;

    .line 28
    .line 29
    invoke-direct {p2, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v2, v4, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 39
    .line 40
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 50
    .line 51
    invoke-direct {v1, v4, v4, v4, p1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v1, 0x1f4

    .line 66
    .line 67
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 74
    .line 75
    .line 76
    return-object p2
.end method
