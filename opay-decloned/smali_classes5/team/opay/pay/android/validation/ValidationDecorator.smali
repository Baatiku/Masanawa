.class public Lteam/opay/pay/android/validation/ValidationDecorator;
.super Ljava/lang/Object;
.source "ValidationDecorator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\nB\'\u0008\u0016\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0004\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ#\u0010\u001f\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001aJ\u000f\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008#\u0010\"J#\u0010)\u001a\u00020\u00182\u0006\u0010%\u001a\u00020$2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0&\u00a2\u0006\u0004\u0008)\u0010*R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001a\u0010:\u001a\u0002058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u0016\u0010<\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00107R$\u0010B\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR$\u0010E\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010=\u001a\u0004\u0008C\u0010?\"\u0004\u0008D\u0010AR\u0016\u0010H\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR*\u0010O\u001a\u00020\'2\u0006\u0010I\u001a\u00020\'8\u0004@DX\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010N\u00a8\u0006P"
    }
    d2 = {
        "Lteam/opay/pay/android/validation/ValidationDecorator;",
        "",
        "Lteam/opay/pay/android/views/DetailInputText;",
        "detailInputText",
        "<init>",
        "(Lteam/opay/pay/android/views/DetailInputText;)V",
        "Lteam/opay/pay/android/views/AmountInputText;",
        "amountInputText",
        "(Lteam/opay/pay/android/views/AmountInputText;)V",
        "Lteam/opay/pay/android/views/NoticeAmountInputView;",
        "(Lteam/opay/pay/android/views/NoticeAmountInputView;)V",
        "Landroid/widget/TextView;",
        "label",
        "Lteam/opay/pay/android/views/KeyboardEditText;",
        "input",
        "Landroid/view/View;",
        "container",
        "(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;)V",
        "Landroid/text/TextWatcher;",
        "s",
        "()Landroid/text/TextWatcher;",
        "",
        "invalid",
        "needBackGround",
        "",
        "m",
        "(ZZ)V",
        "f",
        "()V",
        "i",
        "errorAllowed",
        "g",
        "",
        "l",
        "()I",
        "j",
        "Lag8;",
        "owner",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/android/validation/ValidationInfo;",
        "validationState",
        "n",
        "(Lag8;Landroidx/lifecycle/LiveData;)V",
        "a",
        "Landroid/widget/TextView;",
        "getLabel",
        "()Landroid/widget/TextView;",
        "b",
        "Lteam/opay/pay/android/views/KeyboardEditText;",
        "k",
        "()Lteam/opay/pay/android/views/KeyboardEditText;",
        "c",
        "Landroid/view/View;",
        "",
        "d",
        "Ljava/lang/String;",
        "getOriginalLabelText",
        "()Ljava/lang/String;",
        "originalLabelText",
        "e",
        "oldInput",
        "Ljava/lang/Integer;",
        "getInvalidDrawableRes",
        "()Ljava/lang/Integer;",
        "p",
        "(Ljava/lang/Integer;)V",
        "invalidDrawableRes",
        "getValidDrawableRes",
        "q",
        "validDrawableRes",
        "h",
        "Z",
        "interactedWithInput",
        "value",
        "Lteam/opay/pay/android/validation/ValidationInfo;",
        "getValidationInfo",
        "()Lteam/opay/pay/android/validation/ValidationInfo;",
        "r",
        "(Lteam/opay/pay/android/validation/ValidationInfo;)V",
        "validationInfo",
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
.field public final a:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/android/views/KeyboardEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Z

.field public i:Lteam/opay/pay/android/validation/ValidationInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/views/KeyboardEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lteam/opay/pay/android/validation/ValidationInfo;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lteam/opay/pay/android/validation/ValidationInfo;-><init>(ZZLjava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 17
    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 18
    iput-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 19
    iput-object p3, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->d:Ljava/lang/String;

    .line 21
    instance-of p1, p2, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    if-eqz p1, :cond_1

    check-cast p2, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    invoke-virtual {p2}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->getFormatText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->s()Landroid/text/TextWatcher;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    move-object p3, p2

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/android/views/AmountInputText;)V
    .locals 2
    .param p1    # Lteam/opay/pay/android/views/AmountInputText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "amountInputText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountInputText;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/android/views/DetailInputText;)V
    .locals 7
    .param p1    # Lteam/opay/pay/android/views/DetailInputText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detailInputText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lteam/opay/pay/android/views/DetailInputText;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lteam/opay/pay/android/views/DetailInputText;->getInputText()Lteam/opay/pay/android/views/KeyboardEditText;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/android/views/NoticeAmountInputView;)V
    .locals 2
    .param p1    # Lteam/opay/pay/android/views/NoticeAmountInputView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "amountInputText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getInputText()Lteam/opay/pay/android/views/NoticeAmountInputText;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lteam/opay/pay/android/views/NoticeAmountInputView;->getContainerView()Landroid/view/View;

    move-result-object p1

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lteam/opay/pay/android/validation/ValidationDecorator;-><init>(Landroid/widget/TextView;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/android/validation/ValidationDecorator;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/validation/ValidationDecorator;->t(Lteam/opay/pay/android/validation/ValidationDecorator;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/validation/ValidationDecorator;->o(Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/validation/ValidationInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/android/validation/ValidationDecorator;->w(Ljava/lang/String;Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/android/validation/ValidationDecorator;I)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/validation/ValidationDecorator;->u(Lteam/opay/pay/android/validation/ValidationDecorator;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e(Lteam/opay/pay/android/validation/ValidationDecorator;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->v(Lteam/opay/pay/android/validation/ValidationDecorator;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/validation/ValidationDecorator;->g(ZZ)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: decorate"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static final o(Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/validation/ValidationDecorator;->r(Lteam/opay/pay/android/validation/ValidationInfo;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final t(Lteam/opay/pay/android/validation/ValidationDecorator;Landroid/view/View;Z)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->h:Z

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const/4 p2, 0x2

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p0, p1, v1, p2, v0}, Lteam/opay/pay/android/validation/ValidationDecorator;->h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static final u(Lteam/opay/pay/android/validation/ValidationDecorator;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p0, v2, v1, p1, v0}, Lteam/opay/pay/android/validation/ValidationDecorator;->h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return v1
.end method

.method public static final v(Lteam/opay/pay/android/validation/ValidationDecorator;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-static {p0, v2, v3, v0, v1}, Lteam/opay/pay/android/validation/ValidationDecorator;->h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final w(Ljava/lang/String;Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/KeyboardEditText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p1, Lteam/opay/pay/android/validation/ValidationDecorator;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iput-object p0, p1, Lteam/opay/pay/android/validation/ValidationDecorator;->e:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    iput-boolean p0, p1, Lteam/opay/pay/android/validation/ValidationDecorator;->h:Z

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p2, 0x0

    .line 31
    :goto_0
    const/4 p3, 0x0

    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p2, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_1
    const/4 p2, 0x1

    .line 44
    :goto_2
    xor-int/2addr p0, p2

    .line 45
    invoke-virtual {p1, p3, p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->g(ZZ)V

    .line 46
    .line 47
    .line 48
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public g(ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/validation/ValidationDecorator;->m(ZZ)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 20
    .line 21
    invoke-virtual {p2}, Lteam/opay/pay/android/validation/ValidationInfo;->a()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz p1, :cond_7

    .line 37
    .line 38
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 39
    .line 40
    invoke-virtual {p2}, Lteam/opay/pay/android/validation/ValidationInfo;->a()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 62
    .line 63
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 88
    .line 89
    invoke-virtual {p2}, Lteam/opay/pay/android/validation/ValidationInfo;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->d:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->a:Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_2
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v2, v0, v1}, Lteam/opay/pay/android/validation/ValidationDecorator;->h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->f()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->g:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lteam/opay/pay/R$drawable;->solid_f8_radius_4:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final k()Lteam/opay/pay/android/views/KeyboardEditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lteam/opay/pay/R$drawable;->input_background_invalid:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final m(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    iget-object p2, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->c:Landroid/view/View;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->l()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/android/validation/ValidationDecorator;->j()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final n(Lag8;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag8;",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/android/validation/ValidationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "validationState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lumf;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lumf;-><init>(Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final p(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->g:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lteam/opay/pay/android/validation/ValidationInfo;)V
    .locals 3
    .param p1    # Lteam/opay/pay/android/validation/ValidationInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->i:Lteam/opay/pay/android/validation/ValidationInfo;

    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->h:Z

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p0, p1, v2, v0, v1}, Lteam/opay/pay/android/validation/ValidationDecorator;->h(Lteam/opay/pay/android/validation/ValidationDecorator;ZZILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final s()Landroid/text/TextWatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/validation/ValidationDecorator;->b:Lteam/opay/pay/android/views/KeyboardEditText;

    .line 2
    .line 3
    instance-of v1, v0, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 9
    .line 10
    invoke-virtual {v1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->getFormatText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Lqmf;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lqmf;-><init>(Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    new-instance v2, Lrmf;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lrmf;-><init>(Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lteam/opay/pay/android/views/KeyboardEditText;->d(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lsmf;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lsmf;-><init>(Lteam/opay/pay/android/validation/ValidationDecorator;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lteam/opay/pay/android/views/KeyboardEditText;->setBackListener(Lkotlin/jvm/functions/Function0;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ltmf;

    .line 54
    .line 55
    invoke-direct {v2, v1, p0, v0}, Ltmf;-><init>(Ljava/lang/String;Lteam/opay/pay/android/validation/ValidationDecorator;Lteam/opay/pay/android/views/KeyboardEditText;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
