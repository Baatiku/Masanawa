.class public final Lteam/opay/business/provider/active/ImageLottieView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "ImageLottieView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0003\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\n2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J-\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\r2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010\u000cR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$R\u001b\u0010(\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\"\u001a\u0004\u0008\'\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/business/provider/active/ImageLottieView;",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "r",
        "()V",
        "",
        "resUrl",
        "defaultRes",
        "s",
        "(Ljava/lang/String;I)V",
        "color",
        "setTintColor",
        "(I)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "diverseImgUrl",
        "Lteam/opay/business/provider/active/AdItem;",
        "ad",
        "adpCode",
        "z",
        "(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V",
        "onDetachedFromWindow",
        "Lcom/airbnb/lottie/model/KeyPath;",
        "a",
        "Lid8;",
        "getRemoteDarkAPath",
        "()Lcom/airbnb/lottie/model/KeyPath;",
        "remoteDarkAPath",
        "b",
        "getRemoteDarkBPath",
        "remoteDarkBPath",
        "business-provider_release"
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/active/ImageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/provider/active/ImageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lkd7;

    invoke-direct {p1}, Lkd7;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/provider/active/ImageLottieView;->a:Lid8;

    .line 6
    new-instance p1, Lod7;

    invoke-direct {p1}, Lod7;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/business/provider/active/ImageLottieView;->b:Lid8;

    .line 7
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->r()V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/provider/active/ImageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/business/provider/active/ImageLottieView;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final B(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0}, Ldm;->a(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    if-eqz p5, :cond_3

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p2}, Lteam/opay/business/provider/active/AdItem;->getDisplayed()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    sget-object p0, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 36
    .line 37
    invoke-virtual {p0}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Lteam/opay/business/provider/active/AdItem;->getTitle()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :cond_2
    invoke-virtual {p0, p3, p2}, Lteam/opay/business/provider/active/AdpApi;->z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlinx/coroutines/l;

    .line 48
    .line 49
    .line 50
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static final C(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/business/provider/active/AdpApi;->i:Lteam/opay/business/provider/active/AdpApi$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/business/provider/active/AdpApi$Companion;->a()Lteam/opay/business/provider/active/AdpApi;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-string p0, "LottieViewClick"

    .line 10
    .line 11
    :cond_0
    move-object v2, p0

    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v3, p1

    .line 16
    invoke-static/range {v1 .. v6}, Lteam/opay/business/provider/active/AdpApi;->y(Lteam/opay/business/provider/active/AdpApi;Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final D(Lteam/opay/business/provider/active/ImageLottieView;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "getContext(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "url"

    .line 13
    .line 14
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "e"

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/4 v1, 0x2

    .line 31
    new-array v1, v1, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object p1, v1, v2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    aput-object p2, v1, p1

    .line 38
    .line 39
    const-string p1, "load_remote_lottie_fail"

    .line 40
    .line 41
    invoke-virtual {v0, p0, p1, v1}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final E(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget p1, Lteam/opay/core/common/R$color;->opb_black:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final F(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget p1, Lteam/opay/core/common/R$color;->mint:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final G()Lcom/airbnb/lottie/model/KeyPath;
    .locals 3

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 2
    .line 3
    const-string v1, "**"

    .line 4
    .line 5
    const-string v2, "dark_a"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final H()Lcom/airbnb/lottie/model/KeyPath;
    .locals 3

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 2
    .line 3
    const-string v1, "**"

    .line 4
    .line 5
    const-string v2, "dark_b"

    .line 6
    .line 7
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic f(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->E(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/business/provider/active/ImageLottieView;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/provider/active/ImageLottieView;->D(Lteam/opay/business/provider/active/ImageLottieView;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getRemoteDarkAPath()Lcom/airbnb/lottie/model/KeyPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ImageLottieView;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getRemoteDarkBPath()Lcom/airbnb/lottie/model/KeyPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/provider/active/ImageLottieView;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/business/provider/active/ImageLottieView;->B(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;Landroid/view/View;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->C(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/provider/active/ImageLottieView;->v(Lcom/airbnb/lottie/LottieComposition;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k()Lcom/airbnb/lottie/model/KeyPath;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/ImageLottieView;->H()Lcom/airbnb/lottie/model/KeyPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->F(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/business/provider/active/ImageLottieView;->u(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->y(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o()Lcom/airbnb/lottie/model/KeyPath;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/provider/active/ImageLottieView;->G()Lcom/airbnb/lottie/model/KeyPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->w(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/provider/active/ImageLottieView;->x(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/provider/active/ImageLottieView$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/provider/active/ImageLottieView$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic t(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/provider/active/ImageLottieView;->s(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final u(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lteam/opay/core/common/spi/a;->b:Lteam/opay/core/common/spi/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "url"

    .line 13
    .line 14
    invoke-static {v2, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v2, "e"

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-static {v2, p3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    const/4 v2, 0x2

    .line 29
    new-array v2, v2, [Lkotlin/Pair;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object p1, v2, v3

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aput-object p3, v2, p1

    .line 36
    .line 37
    const-string p1, "load_remote_lottie_fail"

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Lteam/opay/core/common/spi/a;->a(Landroid/content/Context;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public static final v(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final w(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget p1, Lteam/opay/core/common/R$color;->opb_black:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 12
    .line 13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public static final x(Lteam/opay/business/provider/active/ImageLottieView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Landroid/graphics/ColorFilter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget p1, Lteam/opay/core/common/R$color;->mint:I

    .line 6
    .line 7
    invoke-static {p0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 12
    .line 13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 14
    .line 15
    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public static final y(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkAPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->clearValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkBPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->clearValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final s(Ljava/lang/String;I)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "resUrl"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ldm;->a(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lzd7;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2}, Lzd7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lae7;

    .line 35
    .line 36
    invoke-direct {v0}, Lae7;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkAPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 50
    .line 51
    new-instance v2, Lbe7;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lbe7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkBPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v2, Lmd7;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lmd7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lnd7;

    .line 80
    .line 81
    invoke-direct {v0, p0, p1}, Lnd7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    if-eqz p2, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    const/16 v6, 0x1c

    .line 100
    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    move-object v0, p0

    .line 106
    move-object v1, p1

    .line 107
    move v2, p2

    .line 108
    invoke-static/range {v0 .. v7}, Lteam/opay/core/common/android/glide/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-void
.end method

.method public final setTintColor(I)V
    .locals 1

    .line 1
    sget-object v0, Lgh2;->a:Lgh2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgh2;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final z(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/business/provider/active/AdItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v1, "diverseImgUrl"

    .line 2
    .line 3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lteam/opay/business/provider/active/AdItem;->getImageUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_0
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-lez v2, :cond_2

    .line 31
    .line 32
    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_2
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Ldm;->a(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_8

    .line 43
    .line 44
    new-instance v1, Lqd7;

    .line 45
    .line 46
    invoke-direct {v1, p0, v8}, Lqd7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2}, Lteam/opay/business/provider/active/AdItem;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    const/4 v1, 0x1

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    const/4 v0, 0x0

    .line 69
    goto :goto_2

    .line 70
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 71
    :goto_2
    if-nez v0, :cond_6

    .line 72
    .line 73
    new-instance v2, Lteam/opay/business/provider/active/ImageLottieView$b;

    .line 74
    .line 75
    invoke-direct {v2, p0, p2}, Lteam/opay/business/provider/active/ImageLottieView$b;-><init>(Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkAPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    .line 86
    .line 87
    new-instance v4, Lsd7;

    .line 88
    .line 89
    invoke-direct {v4, p0}, Lsd7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lteam/opay/business/provider/active/ImageLottieView;->getRemoteDarkBPath()Lcom/airbnb/lottie/model/KeyPath;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v4, Lud7;

    .line 100
    .line 101
    invoke-direct {v4, p0}, Lud7;-><init>(Lteam/opay/business/provider/active/ImageLottieView;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    const/4 v0, 0x3

    .line 117
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    const/4 v0, -0x1

    .line 122
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 133
    .line 134
    const/16 v6, 0x1e

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v2, 0x0

    .line 138
    const/4 v3, 0x0

    .line 139
    const/4 v4, 0x0

    .line 140
    const/4 v5, 0x0

    .line 141
    move-object v0, p0

    .line 142
    invoke-static/range {v0 .. v7}, Lteam/opay/core/common/android/glide/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;IIILnpc;ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :goto_4
    new-instance v3, Lwd7;

    .line 146
    .line 147
    invoke-direct {v3, v8, p0, p2, p3}, Lwd7;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lteam/opay/business/provider/active/ImageLottieView;Lteam/opay/business/provider/active/AdItem;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/4 v4, 0x3

    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v1, 0x0

    .line 153
    const/4 v2, 0x0

    .line 154
    move-object v0, p0

    .line 155
    invoke-static/range {v0 .. v5}, Lteam/opay/core/common/android/view/VisibilityKt;->f(Landroid/view/View;Ljava/util/List;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lyd7;

    .line 159
    .line 160
    invoke-direct {v0, p3, p2}, Lyd7;-><init>(Ljava/lang/String;Lteam/opay/business/provider/active/AdItem;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p0, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
