.class public Lteam/opay/core/widget/keyboard/PosKeyboardView;
.super Landroid/widget/FrameLayout;
.source "PosKeyboardView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lteam/opay/core/widget/keyboard/PosKeyboardView;",
        "Landroid/widget/FrameLayout;",
        "",
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
        "C",
        "(I)V",
        "Lsi2;",
        "b",
        "Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;",
        "getBinding",
        "()Lsi2;",
        "binding",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "getOnInputCallback",
        "()Lteam/opay/core/widget/internal/OnInputCallback;",
        "setOnInputCallback",
        "(Lteam/opay/core/widget/internal/OnInputCallback;)V",
        "onInputCallback",
        "Landroid/view/View$OnKeyListener;",
        "getOnKeyListener",
        "()Landroid/view/View$OnKeyListener;",
        "onKeyListener",
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
.field public final synthetic a:Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

.field public final b:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/core/common/databinding/CommonLayoutKeyboardPosBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/core/widget/keyboard/PosKeyboardView;

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
    sput-object v1, Lteam/opay/core/widget/keyboard/PosKeyboardView;->c:[Lzo7;

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/PosKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/core/widget/keyboard/PosKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
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

    new-instance p1, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

    invoke-direct {p1}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;-><init>()V

    iput-object p1, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->a:Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

    .line 5
    new-instance p1, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string p2, "from(getContext())"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 7
    const-class v1, Lsi2;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;-><init>(Ljava/lang/Class;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->b:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/core/widget/keyboard/PosKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final A(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final B(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->q(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->t(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->z(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->o(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->u(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->x(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->s(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getBinding()Lsi2;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->b:Lcom/hi/dhl/binding/viewbind/ViewGroupViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/widget/keyboard/PosKeyboardView;->c:[Lzo7;

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
    check-cast v0, Lsi2;

    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->r(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->B(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->p(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->A(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->y(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->v(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->w(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final o(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final p(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final q(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final r(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final s(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p1, "."

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/internal/OnInputCallback;->g(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static final t(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static final u(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final v(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final w(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final x(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final y(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static final z(Lteam/opay/core/widget/keyboard/PosKeyboardView;Landroid/view/View;)V
    .locals 0

    .line 1
    const/16 p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->C(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/internal/OnInputCallback;->e(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public getOnInputCallback()Lteam/opay/core/widget/internal/OnInputCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->a:Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOnKeyListener()Landroid/view/View$OnKeyListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->a:Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->c()Landroid/view/View$OnKeyListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    sget-object v0, Lteam/opay/core/common/spi/c;->a:Lteam/opay/core/common/spi/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lteam/opay/core/common/spi/c;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lg0g;->d(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lsi2;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    new-instance v1, Lavb;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lavb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lsi2;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    new-instance v1, Ljvb;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Ljvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v0, v0, Lsi2;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    new-instance v1, Lkvb;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lkvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lsi2;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    new-instance v1, Llvb;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Llvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lsi2;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    new-instance v1, Lmvb;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lmvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Lsi2;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    new-instance v1, Lnvb;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lnvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Lsi2;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    new-instance v1, Lbvb;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lbvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v0, v0, Lsi2;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    new-instance v1, Lcvb;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v0, v0, Lsi2;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    new-instance v1, Ldvb;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Ldvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Lsi2;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    new-instance v1, Levb;

    .line 150
    .line 151
    invoke-direct {v1, p0}, Levb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v0, v0, Lsi2;->m:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 162
    .line 163
    new-instance v1, Lfvb;

    .line 164
    .line 165
    invoke-direct {v1, p0}, Lfvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v0, v0, Lsi2;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    new-instance v1, Lgvb;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lgvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget-object v0, v0, Lsi2;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    new-instance v1, Lhvb;

    .line 192
    .line 193
    invoke-direct {v1, p0}, Lhvb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lteam/opay/core/widget/keyboard/PosKeyboardView;->getBinding()Lsi2;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v0, v0, Lsi2;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    new-instance v1, Livb;

    .line 206
    .line 207
    invoke-direct {v1, p0}, Livb;-><init>(Lteam/opay/core/widget/keyboard/PosKeyboardView;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public setOnInputCallback(Lteam/opay/core/widget/internal/OnInputCallback;)V
    .locals 1
    .param p1    # Lteam/opay/core/widget/internal/OnInputCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/PosKeyboardView;->a:Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->e(Lteam/opay/core/widget/internal/OnInputCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
