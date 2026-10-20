.class public Lteam/opay/core/widget/keyboard/CorpKeyboardView;
.super Landroid/widget/FrameLayout;
.source "CorpKeyboardView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\rR\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010#\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010%\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/core/widget/keyboard/CorpKeyboardView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "displayValue",
        "",
        "setDisplayValue",
        "(I)V",
        "onFinishInflate",
        "()V",
        "num",
        "A",
        "Lui2;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lui2;",
        "binding",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "b",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "getOnInputCallback",
        "()Lteam/opay/core/widget/internal/OnInputCallback;",
        "setOnInputCallback",
        "(Lteam/opay/core/widget/internal/OnInputCallback;)V",
        "onInputCallback",
        "Landroid/widget/TextView;",
        "getKey2View",
        "()Landroid/widget/TextView;",
        "key2View",
        "getKeyText",
        "keyText",
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


# static fields
.field public static final synthetic c:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/core/widget/internal/OnInputCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/core/common/databinding/CommonLayoutKeyboardViewBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/core/widget/keyboard/CorpKeyboardView;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->c:[Lzo7;

    .line 23
    .line 24
    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
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
    new-instance p3, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string v0, "from(getContext())"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 7
    const-class v2, Lui2;

    const/4 v4, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p3, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 9
    sget-object p3, Lteam/opay/core/common/R$styleable;->CorpKeyboardView:[I

    const-string v0, "CorpKeyboardView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lteam/opay/core/common/R$styleable;->CorpKeyboardView_right_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 12
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    move-result-object p3

    iget-object p3, p3, Lui2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    move-result-object p2

    iget-object p2, p2, Lui2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    sget p3, Lteam/opay/core/common/R$styleable;->CorpKeyboardView_right_text_size:I

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x41e00000    # 28.0f

    .line 16
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 17
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 18
    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 19
    :cond_0
    sget p2, Lteam/opay/core/common/R$styleable;->CorpKeyboardView_right_image:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p2, v0, v0, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    move-result-object p3

    iget-object p3, p3, Lui2;->m:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_1
    sget p2, Lteam/opay/core/common/R$styleable;->CorpKeyboardView_display_value:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 23
    invoke-virtual {p0, p2}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->setDisplayValue(I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->z(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->r(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->v(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->o(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->x(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->u(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->n(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getBinding()Lui2;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->c:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;->f(Landroid/view/ViewGroup;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lui2;

    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->y(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->s(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->p(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->q(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->w(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->t(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final n(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final o(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final p(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final q(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final r(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final s(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->h()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final t(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final u(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final v(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final w(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final x(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final y(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final z(Lteam/opay/core/widget/keyboard/CorpKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->A(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/internal/OnInputCallback;->e(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getKey2View()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lui2;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const-string v1, "key2"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getKeyText()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lui2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    const-string v1, "keyText"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lui2;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    new-instance v1, Lus2;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lus2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lui2;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    new-instance v1, Lbt2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lbt2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lui2;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v1, Lct2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lct2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lui2;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    new-instance v1, Ldt2;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Ldt2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lui2;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    new-instance v1, Let2;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Let2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lui2;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    new-instance v1, Lft2;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lft2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lui2;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    new-instance v1, Lgt2;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lgt2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lui2;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    new-instance v1, Lvs2;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lvs2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Lui2;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    new-instance v1, Lws2;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lws2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lui2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    new-instance v1, Lxs2;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lxs2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lui2;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    new-instance v1, Lys2;

    .line 153
    .line 154
    invoke-direct {v1, p0}, Lys2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Lui2;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 165
    .line 166
    new-instance v1, Lzs2;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lzs2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lui2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    new-instance v1, Lat2;

    .line 181
    .line 182
    invoke-direct {v1, p0}, Lat2;-><init>(Lteam/opay/core/widget/keyboard/CorpKeyboardView;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final setDisplayValue(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lui2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    const-string v2, "keyText"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->getBinding()Lui2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lui2;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    .line 27
    const-string v2, "keyImage"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    xor-int/2addr p1, v0

    .line 33
    invoke-static {v1, p1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final setOnInputCallback(Lteam/opay/core/widget/internal/OnInputCallback;)V
    .locals 0
    .param p1    # Lteam/opay/core/widget/internal/OnInputCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/widget/keyboard/CorpKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    return-void
.end method
