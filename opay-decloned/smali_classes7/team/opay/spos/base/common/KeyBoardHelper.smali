.class public final Lteam/opay/spos/base/common/KeyBoardHelper;
.super Ljava/lang/Object;
.source "KeyBoardHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/base/common/KeyBoardHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\u0008\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/spos/base/common/KeyBoardHelper;",
        "",
        "Landroid/inputmethodservice/KeyboardView;",
        "keyboardView",
        "Landroid/widget/EditText;",
        "editText",
        "<init>",
        "(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;)V",
        "a",
        "Landroid/inputmethodservice/KeyboardView;",
        "b",
        "()Landroid/inputmethodservice/KeyboardView;",
        "Landroid/widget/EditText;",
        "()Landroid/widget/EditText;",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "c",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "listener",
        "d",
        "Companion",
        "spos-common-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lteam/opay/spos/base/common/KeyBoardHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/base/common/KeyBoardHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/base/common/KeyBoardHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/base/common/KeyBoardHelper;->d:Lteam/opay/spos/base/common/KeyBoardHelper$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;)V
    .locals 3
    .param p1    # Landroid/inputmethodservice/KeyboardView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "keyboardView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "editText"

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
    iput-object p1, p0, Lteam/opay/spos/base/common/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/spos/base/common/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 17
    .line 18
    new-instance v0, Lteam/opay/spos/base/common/KeyBoardHelper$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lteam/opay/spos/base/common/KeyBoardHelper$a;-><init>(Lteam/opay/spos/base/common/KeyBoardHelper;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lteam/opay/spos/base/common/KeyBoardHelper;->c:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    sget v2, Lteam/opay/spos/base/R$xml;->keyboard_number_password:I

    .line 39
    .line 40
    invoke-direct {v0, p2, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/base/common/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    return-object v0
.end method
