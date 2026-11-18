.class public final Lteam/opay/core/card/CardContentButtonView;
.super Landroid/widget/FrameLayout;
.source "CardContentButtonView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lteam/opay/core/card/CardContentButtonView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lteam/opay/core/card/ButtonDto;",
        "cardBtnData",
        "",
        "setData",
        "(Lteam/opay/core/card/ButtonDto;)V",
        "d",
        "",
        "time",
        "h",
        "(J)V",
        "remainingTime",
        "",
        "f",
        "(J)Ljava/lang/String;",
        "Landroid/view/View;",
        "tagView",
        "g",
        "(Landroid/view/View;)V",
        "Landroid/os/CountDownTimer;",
        "a",
        "Landroid/os/CountDownTimer;",
        "mTimer",
        "Landroid/animation/AnimatorSet;",
        "b",
        "Landroid/animation/AnimatorSet;",
        "animatorSet",
        "Lrb8;",
        "c",
        "Lrb8;",
        "binding",
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
.field public a:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lrb8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/card/CardContentButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/card/CardContentButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lrb8;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lrb8;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/card/CardContentButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/card/CardContentButtonView;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/card/CardContentButtonView;->e(Lteam/opay/core/card/CardContentButtonView;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/core/card/CardContentButtonView;)Lrb8;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lteam/opay/core/card/CardContentButtonView;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/card/CardContentButtonView;->f(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lteam/opay/core/card/CardContentButtonView;Lteam/opay/core/card/ButtonDto;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "getContext(...)"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getJumpUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public final d(Lteam/opay/core/card/ButtonDto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getIconUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 15
    .line 16
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/bumptech/glide/a;->v(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->j()Ljpc;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getIconUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    const-string v1, ""

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Ljpc;->M0(Ljava/lang/String;)Ljpc;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lteam/opay/core/card/CardContentButtonView$a;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lteam/opay/core/card/CardContentButtonView$a;-><init>(Lteam/opay/core/card/CardContentButtonView;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljpc;->C0(Llfe;)Llfe;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 52
    .line 53
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 60
    .line 61
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIconPadding(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->b:Landroid/animation/AnimatorSet;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getButtonStyle()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "1"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const-string v1, "btnConfirm"

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 89
    .line 90
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lteam/opay/core/card/CardContentButtonView;->g(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 99
    .line 100
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lgy1;

    .line 106
    .line 107
    invoke-direct {v1, p0, p1}, Lgy1;-><init>(Lteam/opay/core/card/CardContentButtonView;Lteam/opay/core/card/ButtonDto;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final f(J)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0x3e8

    .line 3
    .line 4
    int-to-long v1, v1

    .line 5
    div-long v1, p1, v1

    .line 6
    .line 7
    const/16 v3, 0xe10

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    div-long v5, v1, v3

    .line 11
    .line 12
    const/16 v7, 0x18

    .line 13
    .line 14
    int-to-long v7, v7

    .line 15
    rem-long/2addr v5, v7

    .line 16
    const-wide/32 v7, 0x5265c00

    .line 17
    .line 18
    .line 19
    cmp-long v9, p1, v7

    .line 20
    .line 21
    if-lez v9, :cond_0

    .line 22
    .line 23
    const v0, 0x5265c00

    .line 24
    .line 25
    .line 26
    int-to-long v0, v0

    .line 27
    div-long/2addr p1, v0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " Days "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "h"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_0
    rem-long p1, v1, v3

    .line 55
    .line 56
    const/16 v3, 0x3c

    .line 57
    .line 58
    int-to-long v3, v3

    .line 59
    div-long/2addr p1, v3

    .line 60
    rem-long/2addr v1, v3

    .line 61
    sget-object v3, Lf6e;->a:Lf6e;

    .line 62
    .line 63
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-array v1, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    aput-object v3, v1, v2

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    aput-object p1, v1, v2

    .line 82
    .line 83
    const/4 p1, 0x2

    .line 84
    aput-object p2, v1, p1

    .line 85
    .line 86
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "%02d:%02d:%02d"

    .line 91
    .line 92
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "format(...)"

    .line 97
    .line 98
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method public final g(Landroid/view/View;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    const-string v2, "scaleX"

    .line 8
    .line 9
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x3e8

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    const/4 v4, -0x1

    .line 27
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 31
    .line 32
    .line 33
    const-string v5, "scaleY"

    .line 34
    .line 35
    new-array v6, v0, [F

    .line 36
    .line 37
    fill-array-data v6, :array_1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 45
    .line 46
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lteam/opay/core/card/CardContentButtonView;->b:Landroid/animation/AnimatorSet;

    .line 67
    .line 68
    new-array v0, v0, [Landroid/animation/Animator;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    aput-object v1, v0, v3

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    aput-object p1, v0, v1

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
    .end array-data
.end method

.method public final h(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->a:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lteam/opay/core/card/CardContentButtonView$b;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p0}, Lteam/opay/core/card/CardContentButtonView$b;-><init>(JLteam/opay/core/card/CardContentButtonView;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->a:Landroid/os/CountDownTimer;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setData(Lteam/opay/core/card/ButtonDto;)V
    .locals 9
    .param p1    # Lteam/opay/core/card/ButtonDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cardBtnData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 7
    .line 8
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getRightIconContext()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getReduceExpiryTimeLong()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lkotlin/text/StringsKt;->y(Ljava/lang/String;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-wide v5, v3

    .line 32
    :goto_0
    const-string v2, "tipsGroup"

    .line 33
    .line 34
    const-string v7, "cardBottomTag"

    .line 35
    .line 36
    cmp-long v8, v5, v3

    .line 37
    .line 38
    if-eqz v8, :cond_4

    .line 39
    .line 40
    const-wide v3, 0x134fd9000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v8, v5, v3

    .line 46
    .line 47
    if-lez v8, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    iget-object v1, v0, Lrb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lrb8;->g:Landroidx/constraintlayout/widget/Group;

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getReduceExpiryDesc()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, v0, Lrb8;->d:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getReduceExpiryDesc()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    iget-object v1, v0, Lrb8;->d:Landroid/widget/TextView;

    .line 94
    .line 95
    sget v2, Lteam/opay/pay/R$string;->osdk_card_discount_expires:I

    .line 96
    .line 97
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    iget-object v1, p0, Lteam/opay/core/card/CardContentButtonView;->c:Lrb8;

    .line 105
    .line 106
    iget-object v1, v1, Lrb8;->e:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {p0, v5, v6}, Lteam/opay/core/card/CardContentButtonView;->f(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v5, v6}, Lteam/opay/core/card/CardContentButtonView;->h(J)V

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_4
    :goto_3
    iget-object v3, v0, Lrb8;->g:Landroidx/constraintlayout/widget/Group;

    .line 120
    .line 121
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_5
    iget-object v1, v0, Lrb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getRightIconContext()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lrb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    :goto_4
    iget-object v1, v0, Lrb8;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    :goto_5
    iget-object v0, v0, Lrb8;->b:Lcom/google/android/material/button/MaterialButton;

    .line 163
    .line 164
    invoke-virtual {p1}, Lteam/opay/core/card/ButtonDto;->getContext()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p1}, Lteam/opay/core/card/CardContentButtonView;->d(Lteam/opay/core/card/ButtonDto;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
