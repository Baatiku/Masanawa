.class public final Lteam/opay/pay/android/views/NoticeAmountInputText;
.super Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
.source "NoticeAmountInputText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR0\u0010&\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010!\u001a\u0004\u0008)\u0010#\"\u0004\u0008*\u0010%\u00a8\u0006,"
    }
    d2 = {
        "Lteam/opay/pay/android/views/NoticeAmountInputText;",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
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
        "",
        "getFormatText",
        "()Ljava/lang/String;",
        "",
        "max",
        "",
        "setMaxInputAmount",
        "(F)V",
        "j",
        "()V",
        "e",
        "Ljava/lang/String;",
        "separator",
        "Lteam/opay/pay/android/validation/AmountTextWatcher;",
        "f",
        "Lid8;",
        "getWatcher",
        "()Lteam/opay/pay/android/validation/AmountTextWatcher;",
        "watcher",
        "Lkotlin/Function1;",
        "g",
        "Lkotlin/jvm/functions/Function1;",
        "getOnAmountMaskChangeListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnAmountMaskChangeListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onAmountMaskChangeListener",
        "",
        "h",
        "getOnAmountInpouFocusChangeCallback",
        "setOnAmountInpouFocusChangeCallback",
        "onAmountInpouFocusChangeCallback",
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
.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, ","

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->e:Ljava/lang/String;

    .line 3
    new-instance p1, Lxx9;

    invoke-direct {p1, p0}, Lxx9;-><init>(Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->f:Lid8;

    .line 4
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lag8;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lteam/opay/core/android/ContextKt;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    new-instance v0, Lteam/opay/pay/android/views/NoticeAmountInputText$a;

    invoke-direct {v0, p1, p0}, Lteam/opay/pay/android/views/NoticeAmountInputText$a;-><init>(Lag8;Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    const-string p1, ","

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->e:Ljava/lang/String;

    .line 8
    new-instance p1, Lxx9;

    invoke-direct {p1, p0}, Lxx9;-><init>(Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->f:Lid8;

    .line 9
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lag8;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lteam/opay/core/android/ContextKt;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    new-instance p2, Lteam/opay/pay/android/views/NoticeAmountInputText$a;

    invoke-direct {p2, p1, p0}, Lteam/opay/pay/android/views/NoticeAmountInputText$a;-><init>(Lag8;Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const-string p1, ","

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->e:Ljava/lang/String;

    .line 13
    new-instance p1, Lxx9;

    invoke-direct {p1, p0}, Lxx9;-><init>(Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->f:Lid8;

    .line 14
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lag8;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lteam/opay/core/android/ContextKt;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 15
    new-instance p2, Lteam/opay/pay/android/views/NoticeAmountInputText$a;

    invoke-direct {p2, p1, p0}, Lteam/opay/pay/android/views/NoticeAmountInputText$a;-><init>(Lag8;Lteam/opay/pay/android/views/NoticeAmountInputText;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method private final getWatcher()Lteam/opay/pay/android/validation/AmountTextWatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic i(Lteam/opay/pay/android/views/NoticeAmountInputText;)Lteam/opay/pay/android/validation/AmountTextWatcher;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/NoticeAmountInputText;->k(Lteam/opay/pay/android/views/NoticeAmountInputText;)Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final k(Lteam/opay/pay/android/views/NoticeAmountInputText;)Lteam/opay/pay/android/validation/AmountTextWatcher;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/android/validation/AmountTextWatcher;-><init>(Landroid/widget/EditText;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lteam/opay/pay/android/validation/AmountTextWatcher;->d(Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public getFormatText()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lkotlin/text/Regex;

    .line 10
    .line 11
    iget-object v2, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final getOnAmountInpouFocusChangeCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnAmountMaskChangeListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getWatcher()Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;-><init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Lteam/opay/pay/android/validation/AmountTextWatcher;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->h:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->j(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setMaxInputAmount(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/android/views/NoticeAmountInputText;->getWatcher()Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/android/validation/AmountTextWatcher;->e(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setOnAmountInpouFocusChangeCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnAmountMaskChangeListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/NoticeAmountInputText;->g:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
