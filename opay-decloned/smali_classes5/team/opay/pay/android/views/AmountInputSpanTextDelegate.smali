.class public final Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;
.super Ljava/lang/Object;
.source "AmountInputSpanTextDelegate.kt"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\r\u001a\u00020\u000b2\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J1\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ8\u0010$\u001a\u00020\u000b2\u000e\u0010 \u001a\n \u001f*\u0004\u0018\u00010\u00140\u00142\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u0016H\u0096\u0001\u00a2\u0006\u0004\u0008$\u0010\u001bJ\u0019\u0010&\u001a\u00020\n2\u0008\u0010%\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010-\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010,\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008/\u0010)J\u001b\u00102\u001a\u0004\u0018\u0001002\u0008\u00101\u001a\u0004\u0018\u000100H\u0002\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u00084\u0010)J\u000f\u00105\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u00085\u0010)R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001c\u0010=\u001a\n \u001f*\u0004\u0018\u00010:0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001b\u0010C\u001a\u00020>8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u0016\u0010E\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010DR$\u0010G\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010FR\u0016\u0010H\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010D\u00a8\u0006I"
    }
    d2 = {
        "Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "editText",
        "Lteam/opay/pay/android/validation/AmountTextWatcher;",
        "watcher",
        "<init>",
        "(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Lteam/opay/pay/android/validation/AmountTextWatcher;)V",
        "Lkotlin/Function1;",
        "",
        "",
        "listener",
        "j",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Landroid/view/View;",
        "v",
        "hasFocus",
        "onFocusChange",
        "(Landroid/view/View;Z)V",
        "",
        "s",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "(Landroid/text/Editable;)V",
        "kotlin.jvm.PlatformType",
        "p0",
        "p1",
        "p2",
        "p3",
        "onTextChanged",
        "editable",
        "i",
        "(Landroid/text/Editable;)Z",
        "f",
        "()V",
        "n",
        "()Z",
        "end",
        "q",
        "(II)V",
        "o",
        "",
        "text",
        "h",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "e",
        "p",
        "a",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "b",
        "Lteam/opay/pay/android/validation/AmountTextWatcher;",
        "Landroid/content/Context;",
        "c",
        "Landroid/content/Context;",
        "context",
        "Landroid/text/style/ForegroundColorSpan;",
        "d",
        "Lid8;",
        "g",
        "()Landroid/text/style/ForegroundColorSpan;",
        "zeroSpan",
        "Z",
        "isKeyBoardShow",
        "Lkotlin/jvm/functions/Function1;",
        "onAmountInpouFocusChangeCallback",
        "shouldInsertZeros",
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
.field public final a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/android/validation/AmountTextWatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:Lkotlin/jvm/functions/Function1;
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

.field public g:Z


# direct methods
.method public constructor <init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Lteam/opay/pay/android/validation/AmountTextWatcher;)V
    .locals 1
    .param p1    # Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/android/validation/AmountTextWatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "editText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "watcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->b:Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->c:Landroid/content/Context;

    .line 23
    .line 24
    new-instance p1, Lqr;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lqr;-><init>(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->d:Lid8;

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->m(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;II)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->l(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;II)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)Landroid/text/style/ForegroundColorSpan;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->r(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)Landroid/text/style/ForegroundColorSpan;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->k(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final k(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->e:Z

    .line 2
    .line 3
    iget-object p2, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->o()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->e()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->p()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public static final l(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;II)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, ".00"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_4

    .line 20
    .line 21
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->i(Landroid/text/Editable;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v8, 0x6

    .line 42
    const/4 v9, 0x0

    .line 43
    const-string v5, "."

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-le p2, v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->o()V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-nez p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const/4 v8, 0x6

    .line 70
    const/4 v9, 0x0

    .line 71
    const-string v5, "."

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    :cond_2
    if-gt p2, v3, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    add-int/lit8 p1, p1, -0x3

    .line 95
    .line 96
    iget-object p2, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->q(II)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->i(Landroid/text/Editable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, ".00"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/lit8 p1, p1, -0x3

    .line 41
    .line 42
    if-ltz p1, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-gt p1, v0, :cond_0

    .line 58
    .line 59
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->q(II)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setSelection(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setSelection(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method

.method public static final r(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)Landroid/text/style/ForegroundColorSpan;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->c:Landroid/content/Context;

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$color;->black_15:I

    .line 6
    .line 7
    invoke-static {p0, v1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->g:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->f()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->g:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->g:Z

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->n()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    const/4 v5, 0x6

    .line 41
    const/4 v6, 0x0

    .line 42
    const-string v2, ".00"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_2

    .line 51
    .line 52
    add-int/lit8 v1, v0, 0x3

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->q(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x2

    .line 68
    const-string v3, "."

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-static {v0, v3, v1, v2, v4}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->b:Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/validation/AmountTextWatcher;->f(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, ".00"

    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    add-int/lit8 v0, v0, -0x3

    .line 131
    .line 132
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->q(II)V

    .line 146
    .line 147
    .line 148
    :cond_4
    :goto_0
    return-void
.end method

.method public final g()Landroid/text/style/ForegroundColorSpan;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    const-string v3, ".00"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v4, :cond_1

    .line 25
    .line 26
    const-string v3, "00"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    .line 30
    .line 31
    const-string v0, ".0"

    .line 32
    .line 33
    invoke-static {p1, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p1, v4, :cond_2

    .line 38
    .line 39
    const-string v3, "0"

    .line 40
    .line 41
    :cond_2
    :goto_0
    return-object v3
.end method

.method public final i(Landroid/text/Editable;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-class v2, Landroid/text/style/ForegroundColorSpan;

    .line 9
    .line 10
    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [Landroid/text/style/ForegroundColorSpan;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    array-length p1, p1

    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    xor-int/2addr v0, v1

    .line 24
    :cond_1
    return v0
.end method

.method public final j(Lkotlin/jvm/functions/Function1;)V
    .locals 1
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
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->c:Landroid/content/Context;

    .line 14
    .line 15
    const-string v0, "context"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lteam/opay/core/android/ContextKt;->d(Landroid/content/Context;)Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lvp7;->b(Landroid/app/Activity;)Lvp7;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lrr;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lrr;-><init>(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lvp7;->g(Lvp7$a;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 37
    .line 38
    new-instance v0, Lsr;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lsr;-><init>(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->h(Lkotlin/jvm/functions/Function2;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 47
    .line 48
    new-instance v0, Ltr;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Ltr;-><init>(Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->g(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->g()Landroid/text/style/ForegroundColorSpan;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->p()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->o()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->e()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->b:Lteam/opay/pay/android/validation/AmountTextWatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lteam/opay/pay/android/validation/AmountTextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p()V
    .locals 11

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v5, "."

    .line 14
    .line 15
    invoke-static {v0, v5, v4, v2, v3}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const-string v5, ".00"

    .line 31
    .line 32
    invoke-static {v0, v5, v4, v2, v3}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const/4 v9, 0x6

    .line 47
    const/4 v10, 0x0

    .line 48
    const-string v6, "."

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_1
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-interface {v2, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    invoke-virtual {v1, v3}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setNoticeText(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 78
    .line 79
    invoke-static {v0}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public final q(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputSpanTextDelegate;->g()Landroid/text/style/ForegroundColorSpan;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/16 v2, 0x21

    .line 21
    .line 22
    invoke-interface {v0, v1, p1, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method
