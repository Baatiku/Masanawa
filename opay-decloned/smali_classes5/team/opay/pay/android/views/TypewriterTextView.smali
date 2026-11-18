.class public final Lteam/opay/pay/android/views/TypewriterTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TypewriterTextView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/views/TypewriterTextView$SavedState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001JB\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0015\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u001bH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0019\u0010%\u001a\u00020\u000f2\u0008\u0010$\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\'\u0010 R\u0016\u0010*\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R\u0016\u0010/\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00101\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010.R\u0016\u00104\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00106\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00103R\u0016\u00109\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u0010;\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010.R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010>R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010H\u00a8\u0006K"
    }
    d2 = {
        "Lteam/opay/pay/android/views/TypewriterTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lzr2;",
        "getLifecycleScope",
        "()Lzr2;",
        "",
        "text",
        "",
        "setTextWithAnimation",
        "(Ljava/lang/String;)V",
        "",
        "speed",
        "setTypingSpeed",
        "(J)V",
        "setCursorBlinkSpeed",
        "",
        "show",
        "setShowCursor",
        "(Z)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "onDetachedFromWindow",
        "()V",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "()Landroid/os/Parcelable;",
        "state",
        "onRestoreInstanceState",
        "(Landroid/os/Parcelable;)V",
        "o",
        "a",
        "J",
        "typingSpeed",
        "b",
        "cursorBlinkSpeed",
        "c",
        "Z",
        "showCursor",
        "d",
        "isTyping",
        "e",
        "Ljava/lang/String;",
        "currentText",
        "f",
        "fullText",
        "g",
        "I",
        "cursorPosition",
        "h",
        "cursorVisible",
        "Lkotlinx/coroutines/l;",
        "i",
        "Lkotlinx/coroutines/l;",
        "typingJob",
        "j",
        "cursorJob",
        "Landroid/graphics/Paint;",
        "k",
        "Landroid/graphics/Paint;",
        "cursorPaint",
        "Landroid/text/TextPaint;",
        "l",
        "Landroid/text/TextPaint;",
        "textPaint",
        "SavedState",
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
.field public a:J

.field public b:J

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:I

.field public h:Z

.field public i:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroid/text/TextPaint;
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/views/TypewriterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/views/TypewriterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x50

    .line 5
    iput-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->a:J

    const-wide/16 v0, 0x1f4

    .line 6
    iput-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->b:J

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 10
    iput-boolean p3, p0, Lteam/opay/pay/android/views/TypewriterTextView;->h:Z

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->k:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 17
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 20
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->l:Landroid/text/TextPaint;

    .line 21
    sget-object v0, Lteam/opay/pay/R$styleable;->TypewriterTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lteam/opay/pay/R$styleable;->TypewriterTextView_typingSpeed:I

    const/16 v0, 0x50

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->a:J

    .line 23
    sget p2, Lteam/opay/pay/R$styleable;->TypewriterTextView_cursorBlinkSpeed:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->b:J

    .line 24
    sget p2, Lteam/opay/pay/R$styleable;->TypewriterTextView_showCursor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 25
    sget p2, Lteam/opay/pay/R$styleable;->TypewriterTextView_typewriterText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/android/views/TypewriterTextView;->setTextWithAnimation(Ljava/lang/String;)V

    .line 28
    :cond_1
    :goto_0
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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/android/views/TypewriterTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic c(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lteam/opay/pay/android/views/TypewriterTextView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic e(Lteam/opay/pay/android/views/TypewriterTextView;)Lkotlinx/coroutines/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->j:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lteam/opay/pay/android/views/TypewriterTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lteam/opay/pay/android/views/TypewriterTextView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getLifecycleScope()Lzr2;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lag8;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lag8;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/g;->a(Lkotlin/coroutines/CoroutineContext;)Lzr2;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlinx/coroutines/g;->a(Lkotlin/coroutines/CoroutineContext;)Lzr2;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_1
    return-object v0
.end method

.method public static final synthetic h(Lteam/opay/pay/android/views/TypewriterTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic i(Lteam/opay/pay/android/views/TypewriterTextView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lteam/opay/pay/android/views/TypewriterTextView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lteam/opay/pay/android/views/TypewriterTextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lteam/opay/pay/android/views/TypewriterTextView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Lteam/opay/pay/android/views/TypewriterTextView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lteam/opay/pay/android/views/TypewriterTextView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->i:Lkotlinx/coroutines/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->j:Lkotlinx/coroutines/l;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 19
    .line 20
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/android/views/TypewriterTextView;->o()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
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
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->h:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->l:Landroid/text/TextPaint;

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    add-float v5, v1, v0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getBaseline()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-float v4, v0, v1

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    add-float v6, v0, v1

    .line 51
    .line 52
    iget-object v7, p0, Lteam/opay/pay/android/views/TypewriterTextView;->k:Landroid/graphics/Paint;

    .line 53
    .line 54
    move-object v2, p1

    .line 55
    move v3, v5

    .line 56
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->getCurrentText()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->getFullText()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->getCursorPosition()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->g:I

    .line 31
    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->isTyping()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 37
    .line 38
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ge p1, v0, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/TypewriterTextView;->setTextWithAnimation(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->setCurrentText(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->setFullText(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->g:I

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->setCursorPosition(I)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/views/TypewriterTextView$SavedState;->setTyping(Z)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public final setCursorBlinkSpeed(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->b:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShowCursor(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->j:Lkotlinx/coroutines/l;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setTextWithAnimation(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/android/views/TypewriterTextView;->o()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->f:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->e:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->g:I

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->d:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lteam/opay/pay/android/views/TypewriterTextView;->getLifecycleScope()Lzr2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v3, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-direct {v3, p0, p1}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$1;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x3

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->i:Lkotlinx/coroutines/l;

    .line 40
    .line 41
    iget-boolean v0, p0, Lteam/opay/pay/android/views/TypewriterTextView;->c:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-direct {p0}, Lteam/opay/pay/android/views/TypewriterTextView;->getLifecycleScope()Lzr2;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v4, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;

    .line 50
    .line 51
    invoke-direct {v4, p0, p1}, Lteam/opay/pay/android/views/TypewriterTextView$setTextWithAnimation$2;-><init>(Lteam/opay/pay/android/views/TypewriterTextView;Ljr2;)V

    .line 52
    .line 53
    .line 54
    const/4 v5, 0x3

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->j:Lkotlinx/coroutines/l;

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final setTypingSpeed(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lteam/opay/pay/android/views/TypewriterTextView;->a:J

    .line 2
    .line 3
    return-void
.end method
