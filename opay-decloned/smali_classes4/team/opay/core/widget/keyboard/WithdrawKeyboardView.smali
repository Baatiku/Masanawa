.class public Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;
.super Landroid/widget/FrameLayout;
.source "WithdrawKeyboardView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onFinishInflate",
        "()V",
        "num",
        "y",
        "(I)V",
        "Lvi2;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lvi2;",
        "binding",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "b",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "getOnInputCallback",
        "()Lteam/opay/core/widget/internal/OnInputCallback;",
        "setOnInputCallback",
        "(Lteam/opay/core/widget/internal/OnInputCallback;)V",
        "onInputCallback",
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
    const-string v1, "getBinding()Lteam/opay/core/common/databinding/CommonLayoutKeyboardWithdrawBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;

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
    sput-object v1, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->c:[Lzo7;

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const-string p2, "from(getContext())"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 7
    const-class v2, Lvi2;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->u(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->v(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->o(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->r(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->t(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->w(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->x(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getBinding()Lvi2;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->a:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->c:[Lzo7;

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
    check-cast v0, Lvi2;

    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->p(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->q(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->s(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->n(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->m(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final m(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final n(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final o(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final p(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p1, "."

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/internal/OnInputCallback;->g(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final q(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final r(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final s(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final t(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final u(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final v(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final w(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final x(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->y(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

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
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lvi2;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    new-instance v1, Lnag;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lnag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lvi2;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    new-instance v1, Lsag;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lsag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lvi2;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    new-instance v1, Ltag;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Ltag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lvi2;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    new-instance v1, Luag;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Luag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lvi2;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    new-instance v1, Lvag;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lvag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lvi2;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    new-instance v1, Lwag;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lwag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lvi2;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    new-instance v1, Lxag;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lxag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lvi2;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    new-instance v1, Lyag;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lyag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v0, v0, Lvi2;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    new-instance v1, Loag;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Loag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v0, v0, Lvi2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    new-instance v1, Lpag;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lpag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Lvi2;->l:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 151
    .line 152
    new-instance v1, Lqag;

    .line 153
    .line 154
    invoke-direct {v1, p0}, Lqag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->getBinding()Lvi2;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Lvi2;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    new-instance v1, Lrag;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lrag;-><init>(Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final setOnInputCallback(Lteam/opay/core/widget/internal/OnInputCallback;)V
    .locals 0
    .param p1    # Lteam/opay/core/widget/internal/OnInputCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/WithdrawKeyboardView;->b:Lteam/opay/core/widget/internal/OnInputCallback;

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
