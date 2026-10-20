.class public final Lteam/opay/pay/account/KeyBoardHelper;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyBoardHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/KeyBoardHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 Y2\u00020\u0001:\u0001ZBQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ1\u0010\"\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J1\u0010&\u001a\u00020\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008&\u0010#J\'\u0010.\u001a\u00020-2\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00101\u001a\u00020\u00102\u0008\u00100\u001a\u0004\u0018\u00010-\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\u0010H\u0003\u00a2\u0006\u0004\u00083\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008\u0019\u0010:\"\u0004\u0008;\u0010\u0012R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010=\u001a\u0004\u0008A\u0010?R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010=\u001a\u0004\u0008B\u0010?R\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010\u0016R\u0019\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010F\u001a\u0004\u0008C\u0010GR*\u0010N\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010H8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008I\u0010K\"\u0004\u0008L\u0010MR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010PR\u0014\u0010T\u001a\u00020R8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010SR*\u0010X\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010H8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010J\u001a\u0004\u0008V\u0010K\"\u0004\u0008W\u0010M\u00a8\u0006["
    }
    d2 = {
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/inputmethodservice/KeyboardView;",
        "keyboardView",
        "Landroid/widget/EditText;",
        "editText",
        "Landroid/view/View;",
        "tipsView",
        "backView",
        "rootLayout",
        "",
        "closeOnScroll",
        "Lt1b;",
        "keyboardBinding",
        "<init>",
        "(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;)V",
        "",
        "p",
        "(Landroid/widget/EditText;)V",
        "s",
        "()V",
        "o",
        "()Z",
        "i",
        "Landroid/view/MotionEvent;",
        "e",
        "onSingleTapConfirmed",
        "(Landroid/view/MotionEvent;)Z",
        "onSingleTapUp",
        "e1",
        "e2",
        "",
        "distanceX",
        "distanceY",
        "onScroll",
        "(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z",
        "velocityX",
        "velocityY",
        "onFling",
        "Landroid/content/Context;",
        "context",
        "Lag8;",
        "lifecycleOwner",
        "Lteam/opay/core/android/views/CodeInputField;",
        "codeInput",
        "Lkotlinx/coroutines/l;",
        "t",
        "(Landroid/content/Context;Lag8;Lteam/opay/core/android/views/CodeInputField;)Lkotlinx/coroutines/l;",
        "job",
        "u",
        "(Lkotlinx/coroutines/l;)V",
        "j",
        "a",
        "Landroid/inputmethodservice/KeyboardView;",
        "g",
        "()Landroid/inputmethodservice/KeyboardView;",
        "b",
        "Landroid/widget/EditText;",
        "()Landroid/widget/EditText;",
        "setEditText",
        "c",
        "Landroid/view/View;",
        "getTipsView",
        "()Landroid/view/View;",
        "d",
        "getBackView",
        "getRootLayout",
        "f",
        "Z",
        "getCloseOnScroll",
        "Lt1b;",
        "()Lt1b;",
        "Lkotlin/Function0;",
        "h",
        "Lkotlin/jvm/functions/Function0;",
        "()Lkotlin/jvm/functions/Function0;",
        "q",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onDeleteClickListener",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;",
        "listener",
        "Landroidx/core/view/GestureDetectorCompat;",
        "Landroidx/core/view/GestureDetectorCompat;",
        "gestureDetector",
        "k",
        "getTouchOut",
        "r",
        "touchOut",
        "l",
        "Companion",
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
.field public static final l:Lteam/opay/pay/account/KeyBoardHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroid/inputmethodservice/KeyboardView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Z

.field public final g:Lt1b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/account/KeyBoardHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/account/KeyBoardHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/account/KeyBoardHelper;->l:Lteam/opay/pay/account/KeyBoardHelper$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;)V
    .locals 1
    .param p1    # Landroid/inputmethodservice/KeyboardView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lt1b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "keyboardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/account/KeyBoardHelper;->c:Landroid/view/View;

    .line 6
    iput-object p4, p0, Lteam/opay/pay/account/KeyBoardHelper;->d:Landroid/view/View;

    .line 7
    iput-object p5, p0, Lteam/opay/pay/account/KeyBoardHelper;->e:Landroid/view/View;

    .line 8
    iput-boolean p6, p0, Lteam/opay/pay/account/KeyBoardHelper;->f:Z

    .line 9
    iput-object p7, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 10
    new-instance p2, Lteam/opay/pay/account/KeyBoardHelper$a;

    invoke-direct {p2, p0}, Lteam/opay/pay/account/KeyBoardHelper$a;-><init>(Lteam/opay/pay/account/KeyBoardHelper;)V

    iput-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper;->i:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 11
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lteam/opay/pay/account/KeyBoardHelper;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->j()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-direct/range {v2 .. v9}, Lteam/opay/pay/account/KeyBoardHelper;-><init>(Landroid/inputmethodservice/KeyboardView;Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLt1b;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/KeyBoardHelper;->k(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/KeyBoardHelper;->l(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/account/KeyBoardHelper;->m(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/account/KeyBoardHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/account/KeyBoardHelper;->n(Lteam/opay/pay/account/KeyBoardHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final k(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/account/KeyBoardHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final n(Lteam/opay/pay/account/KeyBoardHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/account/KeyBoardHelper;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroidx/core/view/GestureDetectorCompat;->a(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method


# virtual methods
.method public final e()Landroid/widget/EditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lt1b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->h:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->c:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->d:Landroid/view/View;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v0, v0, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget-object v0, v0, Lt1b;->h:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_6
    return-void
.end method

.method public final j()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    invoke-static {v0}, Ljzf;->a(Landroid/view/View;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x23

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 27
    .line 28
    iget-object v2, p0, Lteam/opay/pay/account/KeyBoardHelper;->i:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 34
    .line 35
    new-instance v2, Landroid/inputmethodservice/Keyboard;

    .line 36
    .line 37
    iget-object v3, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget v4, Lteam/opay/pay/R$xml;->keyboard_number_password:I

    .line 44
    .line 45
    invoke-direct {v2, v3, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 63
    .line 64
    new-instance v1, Ljp7;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Ljp7;-><init>(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->d:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    invoke-static {v1}, Ljmf;->d(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->c(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->d:Landroid/view/View;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    new-instance v1, Lkp7;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lkp7;-><init>(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->e:Landroid/view/View;

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    new-instance v1, Llp7;

    .line 102
    .line 103
    invoke-direct {v1, p0}, Llp7;-><init>(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->e:Landroid/view/View;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    new-instance v1, Lmp7;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lmp7;-><init>(Lteam/opay/pay/account/KeyBoardHelper;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e2"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e2"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->k:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->k:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->i()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->k:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final p(Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Landroid/widget/EditText;
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
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper;->b:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/account/KeyBoardHelper;->j()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper;->h:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iput-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->a:Landroid/inputmethodservice/KeyboardView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->c:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->d:Landroid/view/View;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, v0, Lt1b;->h:Landroid/view/View;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final t(Landroid/content/Context;Lag8;Lteam/opay/core/android/views/CodeInputField;)Lkotlinx/coroutines/l;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/android/views/CodeInputField;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v4, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "lifecycleOwner"

    .line 8
    .line 9
    move-object v2, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    invoke-static {p2}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lni3;->c()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    new-instance v10, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v1, v10

    .line 29
    move-object v3, p0

    .line 30
    move-object/from16 v7, p3

    .line 31
    .line 32
    invoke-direct/range {v1 .. v8}, Lteam/opay/pay/account/KeyBoardHelper$startListenerOtp$1;-><init>(Lag8;Lteam/opay/pay/account/KeyBoardHelper;Landroid/content/Context;JLteam/opay/core/android/views/CodeInputField;Ljr2;)V

    .line 33
    .line 34
    .line 35
    const/4 v11, 0x2

    .line 36
    const/4 v12, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    move-object v7, v0

    .line 39
    move-object v8, v9

    .line 40
    move-object v9, v1

    .line 41
    invoke-static/range {v7 .. v12}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final u(Lkotlinx/coroutines/l;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/account/KeyBoardHelper;->g:Lt1b;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lt1b;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
