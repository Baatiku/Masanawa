.class public final Lteam/opay/core/android/views/OpayActionBar;
.super Landroid/widget/LinearLayout;
.source "OpayActionBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/views/OpayActionBar$Companion;,
        Lteam/opay/core/android/views/OpayActionBar$ImageActionButton;,
        Lteam/opay/core/android/views/OpayActionBar$MenuActionButton;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 32\u00020\u0001:\u0003DEFB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\r\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u000f\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0018\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u0019\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010\u001aJ\u0017\u0010 \u001a\u00020\u00152\u0008\u0008\u0001\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008 \u0010\u001aJ\u001b\u0010#\u001a\u00020\u00152\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00150!\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u00152\u0008\u0008\u0002\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J5\u0010+\u001a\u00020\u00152\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010%2\u0008\u0008\u0002\u0010*\u001a\u00020\u001b2\u0010\u0008\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010!\u00a2\u0006\u0004\u0008+\u0010,JI\u0010.\u001a\u00020\u00152\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010%2\u0008\u0008\u0002\u0010*\u001a\u00020\u001b2\u0008\u0008\u0002\u0010-\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\t2\u0010\u0008\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010!\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00100\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u00080\u0010\u001aJ!\u00101\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u00081\u0010\u0008J\u001b\u00103\u001a\u0004\u0018\u0001022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u00083\u00104R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u0010;\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0014\u0010<\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010:R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00150!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0011\u0010C\u001a\u00020@8F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010B\u00a8\u0006G"
    }
    d2 = {
        "Lteam/opay/core/android/views/OpayActionBar;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "getBackView",
        "()Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getActionView",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "getEndActionView",
        "",
        "onFinishInflate",
        "()V",
        "titleRes",
        "setTitle",
        "(I)V",
        "",
        "titleString",
        "(Ljava/lang/String;)V",
        "colorRes",
        "setTitleColor",
        "setBackground",
        "Lkotlin/Function0;",
        "listener",
        "setBackNavigationListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "",
        "hide",
        "f",
        "(Z)V",
        "show",
        "text",
        "i",
        "(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "font",
        "h",
        "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V",
        "c",
        "g",
        "Lteam/opay/core/android/InjectableActivity;",
        "e",
        "(Landroid/content/Context;)Lteam/opay/core/android/InjectableActivity;",
        "Ls0b;",
        "a",
        "Ls0b;",
        "binding",
        "b",
        "I",
        "defColor",
        "defBgColor",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "defaultBackNavigationListener",
        "Landroid/view/View;",
        "getImageActionButton",
        "()Landroid/view/View;",
        "imageActionButton",
        "Companion",
        "ImageActionButton",
        "MenuActionButton",
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


# static fields
.field public static final e:Lteam/opay/core/android/views/OpayActionBar$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ls0b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public final d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/views/OpayActionBar$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/views/OpayActionBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/views/OpayActionBar;->e:Lteam/opay/core/android/views/OpayActionBar$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lteam/opay/core/android/views/OpayActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/core/android/views/OpayActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lteam/opay/core/android/views/OpayActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p3, p0, p4}, Ls0b;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ls0b;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lteam/opay/pay/R$color;->blue_grey_41:I

    invoke-static {p3, p4}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lteam/opay/core/android/views/OpayActionBar;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lteam/opay/pay/R$color;->osdk_color_white:I

    invoke-static {p3, p4}, Lzq2;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lteam/opay/core/android/views/OpayActionBar;->c:I

    .line 8
    new-instance p3, Ltna;

    invoke-direct {p3, p0}, Ltna;-><init>(Lteam/opay/core/android/views/OpayActionBar;)V

    iput-object p3, p0, Lteam/opay/core/android/views/OpayActionBar;->d:Lkotlin/jvm/functions/Function0;

    .line 9
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/views/OpayActionBar;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/views/OpayActionBar;->l(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/core/android/views/OpayActionBar;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/views/OpayActionBar;->d(Lteam/opay/core/android/views/OpayActionBar;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lteam/opay/core/android/views/OpayActionBar;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lteam/opay/core/android/views/OpayActionBar;->e(Landroid/content/Context;)Lteam/opay/core/android/InjectableActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/android/InjectableActivity;->onActionBarBack()V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static synthetic j(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    if-eqz p7, :cond_1

    .line 12
    .line 13
    move-object p7, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move-object p7, p2

    .line 16
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v0, p3

    .line 22
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    const/4 p4, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_2

    .line 29
    :cond_3
    move v1, p4

    .line 30
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 31
    .line 32
    if-eqz p2, :cond_4

    .line 33
    .line 34
    const/4 p5, 0x0

    .line 35
    :cond_4
    move-object v2, p5

    .line 36
    move-object p2, p0

    .line 37
    move-object p3, p1

    .line 38
    move-object p4, p7

    .line 39
    move-object p5, v0

    .line 40
    move p6, v1

    .line 41
    move-object p7, v2

    .line 42
    invoke-virtual/range {p2 .. p7}, Lteam/opay/core/android/views/OpayActionBar;->h(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/android/views/OpayActionBar;Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    const-string p2, ""

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/core/android/views/OpayActionBar;->i(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final l(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->e:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Landroid/content/Context;)Lteam/opay/core/android/InjectableActivity;
    .locals 1

    .line 1
    instance-of v0, p1, Lteam/opay/core/android/InjectableActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lteam/opay/core/android/InjectableActivity;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/OpayActionBar;->e(Landroid/content/Context;)Lteam/opay/core/android/InjectableActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    const-string v1, "backNavigationButton"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    xor-int/lit8 v1, p1, 0x1

    .line 11
    .line 12
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget v1, Lteam/opay/pay/R$dimen;->actionbar_title_left_margin:I

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 31
    .line 32
    iget-object v1, v1, Ls0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 49
    .line 50
    iget-object p1, p1, Ls0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/R$styleable;->OpayActionBar:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    sget p2, Lteam/opay/pay/R$styleable;->OpayActionBar_oab_title:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p2}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(I)V

    .line 15
    .line 16
    .line 17
    sget p2, Lteam/opay/pay/R$styleable;->OpayActionBar_oab_title_color:I

    .line 18
    .line 19
    iget v1, p0, Lteam/opay/core/android/views/OpayActionBar;->b:I

    .line 20
    .line 21
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lteam/opay/core/android/views/OpayActionBar;->setTitleColor(I)V

    .line 26
    .line 27
    .line 28
    sget p2, Lteam/opay/pay/R$styleable;->OpayActionBar_oab_bg_color:I

    .line 29
    .line 30
    iget v1, p0, Lteam/opay/core/android/views/OpayActionBar;->c:I

    .line 31
    .line 32
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 40
    .line 41
    iget-object p2, p2, Ls0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    .line 43
    sget v1, Lteam/opay/pay/R$styleable;->OpayActionBar_oab_color:I

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    sget p2, Lteam/opay/pay/R$styleable;->OpayActionBar_oab_hideBackNavigation:I

    .line 53
    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p0, p2}, Lteam/opay/core/android/views/OpayActionBar;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p2

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.method public final getActionView()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const-string v1, "endTextActionView"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getBackView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    const-string v1, "backNavigationButton"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getEndActionView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    const-string v1, "endImageActionButton"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getImageActionButton()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    const-string v1, "endImageActionButton"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final h(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "font"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p5}, Lteam/opay/core/android/views/OpayActionBar;->i(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    invoke-static {p3, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 27
    .line 28
    iget-object p2, p2, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    if-eqz p4, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 36
    .line 37
    iget-object p1, p1, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2, p4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final i(Ljava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 7
    .line 8
    iget-object v0, v0, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    const-string v1, "endTextActionView"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lteam/opay/core/android/ViewKt;->w(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 19
    .line 20
    iget-object p1, p1, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 28
    .line 29
    iget-object p1, p1, Ls0b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Luna;

    .line 35
    .line 36
    invoke-direct {p2, p3}, Luna;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 7
    .line 8
    iget-object v0, v0, Ls0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    const-string v1, "backNavigationButton"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/core/android/views/OpayActionBar;->d:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setBackNavigationListener(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 7
    .line 8
    iget-object v0, v0, Ls0b;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    const-string v1, "backNavigationButton"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setBackground(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setTitle(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    iget-object v1, v1, Ls0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incorrect resource ID for action bar title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lteam/opay/core/android/views/OpayActionBar;->setTitle(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    iget-object v0, v0, Ls0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayActionBar;->a:Ls0b;

    .line 2
    .line 3
    iget-object v0, v0, Ls0b;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
