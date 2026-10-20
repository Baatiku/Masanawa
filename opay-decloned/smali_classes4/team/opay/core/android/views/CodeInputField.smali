.class public final Lteam/opay/core/android/views/CodeInputField;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CodeInputField.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/views/CodeInputField$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0090\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0013J\u000f\u0010\u001b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000eJ\u000f\u0010\u001c\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000eJ\u000f\u0010\u001d\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u000eJ\r\u0010\u001e\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001e\u0010\u000eJ\u0013\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010&\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020#2\u0008\u0008\u0002\u0010%\u001a\u00020\t\u00a2\u0006\u0004\u0008&\u0010\'J\r\u0010(\u001a\u00020\u000c\u00a2\u0006\u0004\u0008(\u0010\u000eJ\u000f\u0010)\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008+\u0010*J\u0017\u0010.\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00102\u001a\u00020\u000c2\u0006\u00101\u001a\u000200\u00a2\u0006\u0004\u00082\u00103R*\u00109\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u0010*\"\u0004\u00088\u0010\u0013R*\u0010=\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00106\u001a\u0004\u0008;\u0010*\"\u0004\u0008<\u0010\u0013R\"\u0010A\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00106\u001a\u0004\u0008?\u0010*\"\u0004\u0008@\u0010\u0013R*\u0010I\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR*\u0010M\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010D\u001a\u0004\u0008K\u0010F\"\u0004\u0008L\u0010HR0\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000c\u0018\u00010N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\"\u0010\\\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010[R\"\u0010`\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008]\u0010W\u001a\u0004\u0008^\u0010Y\"\u0004\u0008_\u0010[R$\u0010h\u001a\u0004\u0018\u00010a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR$\u0010l\u001a\u0004\u0018\u00010a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008i\u0010c\u001a\u0004\u0008j\u0010e\"\u0004\u0008k\u0010gR\u001a\u0010o\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u001a\u0010r\u001a\u0008\u0012\u0004\u0012\u00020p0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008q\u0010nR\"\u0010y\u001a\u00020s8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u0017\u0010~\u001a\u00020z8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010{\u001a\u0004\u0008|\u0010}R\u0016\u0010\u007f\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u00106R\u0017\u0010\u0082\u0001\u001a\u00030\u0080\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u001e\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u008b\u0001\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\r\u0010\u008a\u0001R&\u0010\u008d\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000c\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010PR\u0013\u0010\u008f\u0001\u001a\u00020s8F\u00a2\u0006\u0007\u001a\u0005\u0008\u008e\u0001\u0010v\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lteam/opay/core/android/views/CodeInputField;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
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
        "s",
        "()V",
        "u",
        "",
        "isInputNewChar",
        "o",
        "(Z)V",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "field",
        "hide",
        "B",
        "(Landroidx/appcompat/widget/AppCompatTextView;Z)V",
        "show",
        "C",
        "z",
        "A",
        "y",
        "p",
        "",
        "Lteam/opay/core/android/validation/ValidationTextView;",
        "getFields",
        "()Ljava/util/List;",
        "",
        "text",
        "fromIndex",
        "x",
        "(Ljava/lang/CharSequence;I)V",
        "n",
        "performClick",
        "()Z",
        "performLongClick",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "helper",
        "m",
        "(Lteam/opay/pay/account/KeyBoardHelper;)V",
        "value",
        "a",
        "Z",
        "getInvalid",
        "setInvalid",
        "invalid",
        "b",
        "getHideInput",
        "setHideInput",
        "hideInput",
        "c",
        "getLastInputFlash",
        "setLastInputFlash",
        "lastInputFlash",
        "Lkotlin/Function0;",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "getOnCodeEdited",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCodeEdited",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCodeEdited",
        "e",
        "getOnActionDone",
        "setOnActionDone",
        "onActionDone",
        "Lkotlin/Function1;",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "getOnEditTextFocusChange",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnEditTextFocusChange",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onEditTextFocusChange",
        "g",
        "I",
        "getFieldCount",
        "()I",
        "setFieldCount",
        "(I)V",
        "fieldCount",
        "h",
        "getInputMargin",
        "setInputMargin",
        "inputMargin",
        "Landroid/graphics/drawable/Drawable;",
        "i",
        "Landroid/graphics/drawable/Drawable;",
        "getHintBg",
        "()Landroid/graphics/drawable/Drawable;",
        "setHintBg",
        "(Landroid/graphics/drawable/Drawable;)V",
        "hintBg",
        "j",
        "getNormalBg",
        "setNormalBg",
        "normalBg",
        "k",
        "Ljava/util/List;",
        "fields",
        "Landroid/view/View;",
        "l",
        "cursors",
        "",
        "Ljava/lang/String;",
        "getCurrentShownCode",
        "()Ljava/lang/String;",
        "setCurrentShownCode",
        "(Ljava/lang/String;)V",
        "currentShownCode",
        "Lteam/opay/core/android/views/HiddenEditText;",
        "Lteam/opay/core/android/views/HiddenEditText;",
        "getEditText",
        "()Lteam/opay/core/android/views/HiddenEditText;",
        "editText",
        "disableTextChangedListener",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "constraintSet",
        "Ljava/lang/Runnable;",
        "q",
        "Ljava/lang/Runnable;",
        "cursorBlinker",
        "r",
        "Landroid/view/View;",
        "cursorToBlink",
        "Lteam/opay/pay/account/KeyBoardHelper;",
        "keyBoardHelper",
        "t",
        "onFocusChange",
        "getCode",
        "code",
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
.field public static final u:Lteam/opay/core/android/views/CodeInputField$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lkotlin/jvm/functions/Function0;
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

.field public e:Lkotlin/jvm/functions/Function0;
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

.field public g:I

.field public h:I

.field public i:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/android/validation/ValidationTextView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lteam/opay/core/android/views/HiddenEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Z

.field public final p:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Lteam/opay/pay/account/KeyBoardHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lkotlin/jvm/functions/Function1;
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
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/views/CodeInputField$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/views/CodeInputField$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/views/CodeInputField;->u:Lteam/opay/core/android/views/CodeInputField$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lteam/opay/core/android/views/CodeInputField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/core/android/views/CodeInputField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 4
    iput p3, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->l:Ljava/util/List;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->m:Ljava/lang/String;

    .line 8
    new-instance v0, Lteam/opay/core/android/views/HiddenEditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lteam/opay/core/android/views/HiddenEditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x12

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 10
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Luf2;->a(Lteam/opay/core/android/views/HiddenEditText;I)V

    .line 13
    :cond_0
    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 14
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 15
    sget-object v0, Lteam/opay/pay/R$styleable;->CodeInputField:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_count:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 17
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_margin:I

    const/16 p3, 0x10

    invoke-static {p3}, Ljmf;->d(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 18
    iput p2, p0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 19
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_hint_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/core/android/views/CodeInputField;->i:Landroid/graphics/drawable/Drawable;

    .line 20
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_normal_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lteam/opay/core/android/views/CodeInputField;->j:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->p()V

    return-void
.end method

.method private final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->q:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->q:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method

.method private final C(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x5

    .line 23
    :goto_0
    iget-object v1, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_1
    if-ge v3, v1, :cond_7

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-ne v0, v3, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_2
    iget-object v5, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lteam/opay/core/android/validation/ValidationTextView;

    .line 47
    .line 48
    iget-object v6, p0, Lteam/opay/core/android/views/CodeInputField;->l:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroid/view/View;->setActivated(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v7, p0, Lteam/opay/core/android/views/CodeInputField;->i:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    sget v7, Lteam/opay/pay/R$drawable;->shape_code_otp_hint:I

    .line 69
    .line 70
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    iget-object v7, p0, Lteam/opay/core/android/views/CodeInputField;->j:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    sget v7, Lteam/opay/pay/R$drawable;->shape_code_otp_default:I

    .line 83
    .line 84
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    if-eqz v4, :cond_5

    .line 92
    .line 93
    const/4 v7, 0x0

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const/4 v7, 0x4

    .line 96
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    iput-object v6, p0, Lteam/opay/core/android/views/CodeInputField;->r:Landroid/view/View;

    .line 102
    .line 103
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static synthetic a(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/CodeInputField;->t(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lteam/opay/core/android/views/CodeInputField;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/views/CodeInputField;->r(Lteam/opay/core/android/views/CodeInputField;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/CodeInputField;->v(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/CodeInputField;->q(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/android/views/CodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/android/views/CodeInputField;->w(Lteam/opay/core/android/views/CodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Lteam/opay/core/android/views/CodeInputField;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/core/android/views/CodeInputField;->o(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lteam/opay/core/android/views/CodeInputField;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->q:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/android/views/CodeInputField;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->r:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/core/android/views/CodeInputField;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lteam/opay/core/android/views/CodeInputField;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/CodeInputField;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lteam/opay/core/android/views/CodeInputField;Landroidx/appcompat/widget/AppCompatTextView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/android/views/CodeInputField;->B(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lteam/opay/core/android/views/CodeInputField;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/android/views/CodeInputField;->C(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final r(Lteam/opay/core/android/views/CodeInputField;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lteam/opay/core/android/views/CodeInputField;->C(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final s()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x30

    .line 4
    .line 5
    invoke-static {v1}, Ljmf;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v2}, Ljmf;->d(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const-string v5, "getContext(...)"

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v3, v4, :cond_2

    .line 22
    .line 23
    const/4 v4, 0x6

    .line 24
    if-eq v3, v4, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    mul-int/lit8 v3, v1, 0x6

    .line 29
    .line 30
    iget v7, v0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 31
    .line 32
    mul-int/lit8 v7, v7, 0x2

    .line 33
    .line 34
    add-int/2addr v7, v3

    .line 35
    const/16 v8, 0x32

    .line 36
    .line 37
    invoke-static {v8}, Ljmf;->d(I)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    add-int/2addr v7, v9

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v9}, Ljmf;->r(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-le v7, v9, :cond_1

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljmf;->r(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget v3, v0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 67
    .line 68
    mul-int/lit8 v3, v3, 0x2

    .line 69
    .line 70
    sub-int/2addr v1, v3

    .line 71
    invoke-static {v8}, Ljmf;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    sub-int/2addr v1, v3

    .line 76
    div-int/2addr v1, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Ljmf;->r(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iget v4, v0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 90
    .line 91
    mul-int/lit8 v4, v4, 0x2

    .line 92
    .line 93
    sub-int/2addr v2, v4

    .line 94
    sub-int/2addr v2, v3

    .line 95
    div-int/lit8 v2, v2, 0x5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    mul-int/lit8 v3, v1, 0x4

    .line 99
    .line 100
    iget v7, v0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 101
    .line 102
    mul-int/lit8 v7, v7, 0x2

    .line 103
    .line 104
    add-int/2addr v3, v7

    .line 105
    const/16 v7, 0x1e

    .line 106
    .line 107
    invoke-static {v7}, Ljmf;->d(I)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    add-int/2addr v3, v8

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v8}, Ljmf;->r(Landroid/content/Context;)I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-le v3, v8, :cond_3

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljmf;->r(Landroid/content/Context;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget v3, v0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 137
    .line 138
    mul-int/lit8 v3, v3, 0x2

    .line 139
    .line 140
    sub-int/2addr v1, v3

    .line 141
    invoke-static {v7}, Ljmf;->d(I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    sub-int/2addr v1, v3

    .line 146
    div-int/2addr v1, v4

    .line 147
    :cond_3
    :goto_0
    iget-object v3, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 148
    .line 149
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 150
    .line 151
    .line 152
    iget v3, v0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v14, 0x0

    .line 157
    :goto_1
    if-ge v7, v3, :cond_8

    .line 158
    .line 159
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    new-instance v13, Lteam/opay/core/android/validation/ValidationTextView;

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {v13, v8}, Lteam/opay/core/android/validation/ValidationTextView;-><init>(Landroid/content/Context;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 176
    .line 177
    .line 178
    const/16 v8, 0x11

    .line 179
    .line 180
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    .line 182
    .line 183
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v8, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v13, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    const/4 v12, 0x1

    .line 192
    invoke-virtual {v13, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    .line 197
    .line 198
    new-instance v8, Lbg2;

    .line 199
    .line 200
    invoke-direct {v8, v0}, Lbg2;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v15}, Landroid/view/View;->setId(I)V

    .line 207
    .line 208
    .line 209
    const-string v8, "font/roboto_500.xml"

    .line 210
    .line 211
    invoke-static {v8, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    sget v9, Lteam/opay/pay/R$color;->black_85:I

    .line 223
    .line 224
    invoke-static {v8, v9}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 235
    .line 236
    const/16 v16, 0x3

    .line 237
    .line 238
    const/16 v17, 0x0

    .line 239
    .line 240
    const/4 v10, 0x3

    .line 241
    const/4 v11, 0x0

    .line 242
    move v9, v15

    .line 243
    const/16 v18, 0x1

    .line 244
    .line 245
    move/from16 v12, v16

    .line 246
    .line 247
    move-object v6, v13

    .line 248
    move/from16 v13, v17

    .line 249
    .line 250
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 251
    .line 252
    .line 253
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 254
    .line 255
    const/4 v12, 0x4

    .line 256
    const/4 v13, 0x0

    .line 257
    const/4 v10, 0x4

    .line 258
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 259
    .line 260
    .line 261
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 262
    .line 263
    invoke-virtual {v8, v15, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->w(II)V

    .line 264
    .line 265
    .line 266
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 267
    .line 268
    invoke-virtual {v8, v15, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 269
    .line 270
    .line 271
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 272
    .line 273
    if-eqz v7, :cond_4

    .line 274
    .line 275
    const/4 v12, 0x2

    .line 276
    goto :goto_2

    .line 277
    :cond_4
    const/4 v12, 0x1

    .line 278
    :goto_2
    if-eqz v7, :cond_5

    .line 279
    .line 280
    move v13, v2

    .line 281
    goto :goto_3

    .line 282
    :cond_5
    const/4 v13, 0x0

    .line 283
    :goto_3
    const/4 v10, 0x1

    .line 284
    move v9, v15

    .line 285
    move v11, v14

    .line 286
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 287
    .line 288
    .line 289
    iget v8, v0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 290
    .line 291
    add-int/lit8 v8, v8, -0x1

    .line 292
    .line 293
    if-ne v7, v8, :cond_6

    .line 294
    .line 295
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 296
    .line 297
    const/4 v12, 0x1

    .line 298
    const/4 v13, 0x0

    .line 299
    const/4 v10, 0x2

    .line 300
    move v9, v14

    .line 301
    move v11, v15

    .line 302
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_6
    if-eqz v7, :cond_7

    .line 307
    .line 308
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 309
    .line 310
    const/4 v12, 0x1

    .line 311
    const/4 v13, 0x0

    .line 312
    const/4 v10, 0x2

    .line 313
    move v9, v14

    .line 314
    move v11, v15

    .line 315
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 316
    .line 317
    .line 318
    :cond_7
    :goto_4
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 319
    .line 320
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 321
    .line 322
    .line 323
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    sget v6, Lteam/opay/pay/R$layout;->otp_cursor:I

    .line 329
    .line 330
    invoke-static {v0, v6, v4}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    .line 339
    .line 340
    .line 341
    const/16 v8, 0x8

    .line 342
    .line 343
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    .line 348
    .line 349
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 350
    .line 351
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    sget v11, Lteam/opay/pay/R$dimen;->code_field_cursor_height:I

    .line 360
    .line 361
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->w(II)V

    .line 366
    .line 367
    .line 368
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 369
    .line 370
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    sget v11, Lteam/opay/pay/R$dimen;->code_field_cursor_width:I

    .line 379
    .line 380
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 385
    .line 386
    .line 387
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 388
    .line 389
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    const/4 v12, 0x3

    .line 394
    const/4 v13, 0x0

    .line 395
    const/4 v10, 0x3

    .line 396
    move v11, v15

    .line 397
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 398
    .line 399
    .line 400
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 401
    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    const/4 v12, 0x4

    .line 407
    const/4 v10, 0x4

    .line 408
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 409
    .line 410
    .line 411
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 412
    .line 413
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 414
    .line 415
    .line 416
    move-result v9

    .line 417
    const/4 v12, 0x1

    .line 418
    const/4 v10, 0x1

    .line 419
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 420
    .line 421
    .line 422
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 423
    .line 424
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 425
    .line 426
    .line 427
    move-result v9

    .line 428
    const/4 v12, 0x2

    .line 429
    const/4 v10, 0x2

    .line 430
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 431
    .line 432
    .line 433
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 434
    .line 435
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 436
    .line 437
    .line 438
    iget-object v8, v0, Lteam/opay/core/android/views/CodeInputField;->l:Ljava/util/List;

    .line 439
    .line 440
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    add-int/lit8 v7, v7, 0x1

    .line 444
    .line 445
    move v14, v15

    .line 446
    const/4 v6, 0x2

    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :cond_8
    return-void
.end method

.method public static final t(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final u()V
    .locals 14

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x106000d

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ldg2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Ldg2;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 34
    .line 35
    .line 36
    const v1, 0x3a83126f    # 0.001f

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 50
    .line 51
    iget v3, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 52
    .line 53
    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    new-array v3, v3, [Landroid/text/InputFilter;

    .line 58
    .line 59
    aput-object v2, v3, v1

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 69
    .line 70
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lteam/opay/core/android/views/CodeInputField$a;

    .line 74
    .line 75
    invoke-direct {v3, v2, p0}, Lteam/opay/core/android/views/CodeInputField$a;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/core/android/views/CodeInputField;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Leg2;

    .line 82
    .line 83
    invoke-direct {v2, p0}, Leg2;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 90
    .line 91
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 109
    .line 110
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget v4, Lteam/opay/pay/R$dimen;->code_field_height:I

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    div-int/lit8 v7, v0, 0x2

    .line 127
    .line 128
    const/4 v4, 0x3

    .line 129
    const/4 v0, 0x0

    .line 130
    const/4 v6, 0x3

    .line 131
    move v5, v0

    .line 132
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 133
    .line 134
    .line 135
    iget-object v8, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 136
    .line 137
    iget-object v2, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    const/4 v12, 0x4

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v10, 0x4

    .line 146
    move v11, v0

    .line 147
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 148
    .line 149
    .line 150
    iget-object v8, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 151
    .line 152
    iget-object v2, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    sget v3, Lteam/opay/pay/R$dimen;->code_field_width:I

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    div-int/lit8 v13, v2, 0x2

    .line 169
    .line 170
    const/4 v10, 0x1

    .line 171
    const/4 v12, 0x1

    .line 172
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 173
    .line 174
    .line 175
    iget-object v8, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 176
    .line 177
    iget-object v1, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    const/4 v12, 0x2

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v10, 0x2

    .line 186
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->p:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 190
    .line 191
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public static final v(Lteam/opay/core/android/views/CodeInputField;Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->t:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 20
    .line 21
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lteam/opay/core/android/views/CodeInputField;->z()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lteam/opay/pay/account/KeyBoardHelper;->p(Landroid/widget/EditText;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lteam/opay/core/android/views/CodeInputField;->y()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0}, Lteam/opay/core/android/views/CodeInputField;->A()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lteam/opay/core/android/views/CodeInputField;->C(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->f:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method

.method public static final w(Lteam/opay/core/android/views/CodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    const/4 p3, 0x1

    .line 3
    if-eq p2, p1, :cond_1

    .line 4
    .line 5
    const/4 p1, 0x6

    .line 6
    if-eq p2, p1, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lteam/opay/core/android/views/CodeInputField;->e:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return p3
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->o()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/pay/account/KeyBoardHelper;->s()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->q:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lteam/opay/core/android/views/CodeInputField$b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lteam/opay/core/android/views/CodeInputField$b;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->q:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/core/android/views/CodeInputField$b;->run()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Landroidx/appcompat/widget/AppCompatTextView;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentShownCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEditText()Lteam/opay/core/android/views/HiddenEditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFieldCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/android/validation/ValidationTextView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHideInput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHintBg()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInvalid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLastInputFlash()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNormalBg()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnActionDone()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnCodeEdited()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnEditTextFocusChange()Lkotlin/jvm/functions/Function1;
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
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Lteam/opay/pay/account/KeyBoardHelper;)V
    .locals 1
    .param p1    # Lteam/opay/pay/account/KeyBoardHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->s:Lteam/opay/pay/account/KeyBoardHelper;

    .line 7
    .line 8
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lteam/opay/core/android/views/CodeInputField;->C(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final o(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 20
    .line 21
    if-ge p1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/core/android/views/CodeInputField;->getCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 p1, v0, -0x1

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lteam/opay/core/android/validation/ValidationTextView;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lteam/opay/core/android/views/CodeInputField;->B(Landroidx/appcompat/widget/AppCompatTextView;Z)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->a(Landroid/view/View;)Lag8;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-static {v0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    new-instance v4, Lteam/opay/core/android/views/CodeInputField$flashLastInputChar$1;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-direct {v4, p0, p1, v0}, Lteam/opay/core/android/views/CodeInputField$flashLastInputChar$1;-><init>(Lteam/opay/core/android/views/CodeInputField;Lteam/opay/core/android/validation/ValidationTextView;Ljr2;)V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x3

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final p()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/android/views/CodeInputField;->s()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/core/android/views/CodeInputField;->u()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lxf2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lxf2;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lzf2;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lzf2;-><init>(Lteam/opay/core/android/views/CodeInputField;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setCurrentShownCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->m:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setFieldCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHideInput(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/CodeInputField;->b:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lteam/opay/core/android/validation/ValidationTextView;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public final setHintBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->i:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final setInputMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/android/views/CodeInputField;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInvalid(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/CodeInputField;->a:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/views/CodeInputField;->k:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lteam/opay/core/android/validation/ValidationTextView;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lteam/opay/core/android/validation/ValidationTextView;->setInvalid(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final setLastInputFlash(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/CodeInputField;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNormalBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnActionDone(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnCodeEdited(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnEditTextFocusChange(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lteam/opay/core/android/views/CodeInputField;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;I)V
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
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
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lteam/opay/core/android/views/CodeInputField;->o:Z

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/android/views/CodeInputField;->n:Lteam/opay/core/android/views/HiddenEditText;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v2, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v2, p2

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-lez v8, :cond_1

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    move-object v2, v1

    .line 41
    move v3, p2

    .line 42
    move v4, v8

    .line 43
    move-object v5, p1

    .line 44
    move v7, v8

    .line 45
    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-ge v8, v2, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    sub-int/2addr v2, v8

    .line 60
    iget v4, p0, Lteam/opay/core/android/views/CodeInputField;->g:I

    .line 61
    .line 62
    sub-int/2addr v4, p2

    .line 63
    sub-int/2addr v4, v8

    .line 64
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-interface {v1, p2, p1, v3, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-direct {p0, v0}, Lteam/opay/core/android/views/CodeInputField;->C(Z)V

    .line 72
    .line 73
    .line 74
    iput-boolean v3, p0, Lteam/opay/core/android/views/CodeInputField;->o:Z

    .line 75
    .line 76
    return-void
.end method
