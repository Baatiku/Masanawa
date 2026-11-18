.class public final Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;
.super Ljava/lang/Object;
.source "KeyboardAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0010\u001a\u00020\u000c8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "a",
        "Lteam/opay/core/widget/internal/OnInputCallback;",
        "b",
        "()Lteam/opay/core/widget/internal/OnInputCallback;",
        "e",
        "(Lteam/opay/core/widget/internal/OnInputCallback;)V",
        "onInputCallback",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnKeyListener;",
        "c",
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


# instance fields
.field public a:Lteam/opay/core/widget/internal/OnInputCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroid/view/View$OnKeyListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb97;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lb97;-><init>(Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b:Landroid/view/View$OnKeyListener;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->d(Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final d(Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_8

    .line 6
    .line 7
    const/4 p1, 0x7

    .line 8
    const/4 p3, 0x1

    .line 9
    if-lt p2, p1, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    if-gt p2, v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    sub-int/2addr p2, p1

    .line 22
    invoke-virtual {p0, p2}, Lteam/opay/core/widget/internal/OnInputCallback;->e(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return p3

    .line 26
    :cond_1
    const/16 p1, 0x43

    .line 27
    .line 28
    if-ne p2, p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return p3

    .line 40
    :cond_3
    const/16 p1, 0x42

    .line 41
    .line 42
    if-ne p2, p1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lteam/opay/core/widget/internal/OnInputCallback;->c()V

    .line 51
    .line 52
    .line 53
    :cond_4
    return p3

    .line 54
    :cond_5
    const/16 p1, 0x9e

    .line 55
    .line 56
    if-eq p2, p1, :cond_6

    .line 57
    .line 58
    const/16 p1, 0x13

    .line 59
    .line 60
    if-ne p2, p1, :cond_8

    .line 61
    .line 62
    :cond_6
    invoke-virtual {p0}, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b()Lteam/opay/core/widget/internal/OnInputCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_7

    .line 67
    .line 68
    const-string p1, "."

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lteam/opay/core/widget/internal/OnInputCallback;->g(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_7
    return p3

    .line 74
    :cond_8
    const/4 p0, 0x0

    .line 75
    return p0
.end method


# virtual methods
.method public b()Lteam/opay/core/widget/internal/OnInputCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->a:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/view/View$OnKeyListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->b:Landroid/view/View$OnKeyListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lteam/opay/core/widget/internal/OnInputCallback;)V
    .locals 0
    .param p1    # Lteam/opay/core/widget/internal/OnInputCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/widget/keyboard/IKeyboardCallbackImpl;->a:Lteam/opay/core/widget/internal/OnInputCallback;

    .line 2
    .line 3
    return-void
.end method
