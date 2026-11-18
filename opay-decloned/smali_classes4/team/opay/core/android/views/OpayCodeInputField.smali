.class public final Lteam/opay/core/android/views/OpayCodeInputField;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "OpayCodeInputField.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/views/OpayCodeInputField$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 j2\u00020\u0001:\u0001kB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000eJ\r\u0010\u0016\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u000f\u0010\u0017\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR*\u0010#\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\u0018\"\u0004\u0008\"\u0010\u0013R*\u0010\'\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010 \u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008&\u0010\u0013R*\u0010/\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R*\u00103\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010*\u001a\u0004\u00081\u0010,\"\u0004\u00082\u0010.R\u0014\u00106\u001a\u00020\t8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0014\u00108\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00105R\u0014\u0010:\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00089\u00105R\u0014\u0010<\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u00105R\"\u0010B\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u00105\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0016\u0010D\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u00105R\u0016\u0010E\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00105R\u0016\u0010G\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00105R\u0016\u0010I\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010 R\u001a\u0010M\u001a\u0008\u0012\u0004\u0012\u00020K0J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010LR\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00020N0J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010LR\"\u0010W\u001a\u00020Q8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010R\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010VR\u0017\u0010]\u001a\u00020X8\u0006\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u0016\u0010_\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010 R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010aR\u0018\u0010e\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010dR\u0018\u0010g\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010fR\u0011\u0010i\u001a\u00020Q8F\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010T\u00a8\u0006l"
    }
    d2 = {
        "Lteam/opay/core/android/views/OpayCodeInputField;",
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
        "n",
        "()V",
        "p",
        "",
        "show",
        "u",
        "(Z)V",
        "s",
        "t",
        "k",
        "performClick",
        "()Z",
        "performLongClick",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
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
        "Lkotlin/Function0;",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "getOnCodeEdited",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCodeEdited",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCodeEdited",
        "d",
        "getOnActionDone",
        "setOnActionDone",
        "onActionDone",
        "e",
        "I",
        "defaultFiledCount",
        "f",
        "defaultFiledMargin",
        "g",
        "defaultNormalBg",
        "h",
        "defaultHintBg",
        "i",
        "getFieldCount",
        "()I",
        "setFieldCount",
        "(I)V",
        "fieldCount",
        "j",
        "filedMargin",
        "mNormalBg",
        "l",
        "mInputBg",
        "m",
        "mCursorShow",
        "",
        "Lteam/opay/core/android/validation/ValidationTextView;",
        "Ljava/util/List;",
        "fields",
        "Landroid/view/View;",
        "o",
        "cursors",
        "",
        "Ljava/lang/String;",
        "getCurrentShownCode",
        "()Ljava/lang/String;",
        "setCurrentShownCode",
        "(Ljava/lang/String;)V",
        "currentShownCode",
        "Lteam/opay/core/android/views/HiddenEditText;",
        "q",
        "Lteam/opay/core/android/views/HiddenEditText;",
        "getEditText",
        "()Lteam/opay/core/android/views/HiddenEditText;",
        "editText",
        "r",
        "disableTextChangedListener",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "constraintSet",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "cursorBlinker",
        "Landroid/view/View;",
        "cursorToBlink",
        "getCode",
        "code",
        "v",
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
.field public static final v:Lteam/opay/core/android/views/OpayCodeInputField$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lkotlin/jvm/functions/Function0;
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

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public final n:Ljava/util/List;
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

.field public final o:Ljava/util/List;
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

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lteam/opay/core/android/views/HiddenEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Z

.field public final s:Landroidx/constraintlayout/widget/ConstraintSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/views/OpayCodeInputField$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/views/OpayCodeInputField$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/views/OpayCodeInputField;->v:Lteam/opay/core/android/views/OpayCodeInputField$Companion;

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
    invoke-direct {p0, p1, v0}, Lteam/opay/core/android/views/OpayCodeInputField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lteam/opay/core/android/views/OpayCodeInputField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    .line 4
    iput p3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->e:I

    const/16 v0, 0xa

    .line 5
    invoke-static {v0}, Ljmf;->d(I)I

    move-result v0

    iput v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->f:I

    .line 6
    sget v1, Lteam/opay/pay/R$drawable;->shape_code_otp_default:I

    iput v1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->g:I

    .line 7
    sget v2, Lteam/opay/pay/R$drawable;->shape_code_otp_hint:I

    iput v2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->h:I

    .line 8
    iput p3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 9
    iput v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->j:I

    .line 10
    iput v1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->k:I

    .line 11
    iput v2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->l:I

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->o:Ljava/util/List;

    .line 14
    const-string v3, ""

    iput-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->p:Ljava/lang/String;

    .line 15
    new-instance v3, Lteam/opay/core/android/views/HiddenEditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lteam/opay/core/android/views/HiddenEditText;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x12

    .line 16
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 17
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 18
    iput-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 19
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 20
    sget-object v3, Lteam/opay/pay/R$styleable;->CodeInputField:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_count:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 22
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_margin:I

    int-to-float p3, v0

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->j:I

    .line 24
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_normal_bg:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 25
    iput p2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->k:I

    .line 26
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_hint_bg:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->l:I

    .line 27
    sget p2, Lteam/opay/pay/R$styleable;->CodeInputField_input_cursor_show:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->m:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->k()V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/core/android/views/OpayCodeInputField;->r(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/OpayCodeInputField;->o(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lteam/opay/core/android/views/OpayCodeInputField;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->m(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/OpayCodeInputField;->q(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/core/android/views/OpayCodeInputField;->l(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lteam/opay/core/android/views/OpayCodeInputField;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->t:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lteam/opay/core/android/views/OpayCodeInputField;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->u:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lteam/opay/core/android/views/OpayCodeInputField;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lteam/opay/core/android/views/OpayCodeInputField;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lteam/opay/core/android/views/OpayCodeInputField;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/core/android/views/OpayCodeInputField;->u(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final l(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static final m(Lteam/opay/core/android/views/OpayCodeInputField;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lteam/opay/core/android/views/OpayCodeInputField;->u(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final n()V
    .locals 13

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v9, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_5

    .line 12
    .line 13
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    new-instance v11, Lteam/opay/core/android/validation/ValidationTextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "getContext(...)"

    .line 24
    .line 25
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v11, v3}, Lteam/opay/core/android/validation/ValidationTextView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x11

    .line 35
    .line 36
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 40
    .line 41
    const/16 v4, 0x2a

    .line 42
    .line 43
    invoke-static {v4}, Ljmf;->d(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x2d

    .line 48
    .line 49
    invoke-static {v5}, Ljmf;->d(I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    const/4 v12, 0x1

    .line 60
    invoke-virtual {v11, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget v4, Lteam/opay/pay/R$animator;->lift_on_focus:I

    .line 71
    .line 72
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v11, v3}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 77
    .line 78
    .line 79
    new-instance v3, Lfra;

    .line 80
    .line 81
    invoke-direct {v3, p0}, Lfra;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v10}, Landroid/view/View;->setId(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 94
    .line 95
    const/4 v7, 0x3

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v5, 0x3

    .line 98
    const/4 v6, 0x0

    .line 99
    move v4, v10

    .line 100
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    .line 105
    const/4 v7, 0x4

    .line 106
    const/4 v5, 0x4

    .line 107
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    sget v5, Lteam/opay/pay/R$dimen;->code_field_width:I

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v3, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->w(II)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v3, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 139
    .line 140
    if-eqz v2, :cond_0

    .line 141
    .line 142
    const/4 v4, 0x2

    .line 143
    const/4 v7, 0x2

    .line 144
    goto :goto_1

    .line 145
    :cond_0
    const/4 v7, 0x1

    .line 146
    :goto_1
    if-eqz v2, :cond_1

    .line 147
    .line 148
    iget v4, p0, Lteam/opay/core/android/views/OpayCodeInputField;->j:I

    .line 149
    .line 150
    move v8, v4

    .line 151
    goto :goto_2

    .line 152
    :cond_1
    const/4 v8, 0x0

    .line 153
    :goto_2
    const/4 v5, 0x1

    .line 154
    move v4, v10

    .line 155
    move v6, v9

    .line 156
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 157
    .line 158
    .line 159
    iget v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 160
    .line 161
    sub-int/2addr v3, v12

    .line 162
    if-ne v2, v3, :cond_2

    .line 163
    .line 164
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 165
    .line 166
    const/4 v7, 0x1

    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v5, 0x2

    .line 169
    move v4, v9

    .line 170
    move v6, v10

    .line 171
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_2
    if-eqz v2, :cond_3

    .line 176
    .line 177
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 178
    .line 179
    const/4 v7, 0x1

    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v5, 0x2

    .line 182
    move v4, v9

    .line 183
    move v6, v10

    .line 184
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_3
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 188
    .line 189
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 190
    .line 191
    .line 192
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    iget-boolean v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->m:Z

    .line 198
    .line 199
    if-eqz v3, :cond_4

    .line 200
    .line 201
    sget v3, Lteam/opay/pay/R$layout;->otp_cursor:I

    .line 202
    .line 203
    invoke-static {p0, v3, v1}, Lozf;->a(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v9, v3}, Landroid/view/View;->setId(I)V

    .line 212
    .line 213
    .line 214
    const/16 v3, 0x8

    .line 215
    .line 216
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    const/high16 v3, 0x40000000    # 2.0f

    .line 220
    .line 221
    invoke-virtual {v9, v3}, Landroid/view/View;->setElevation(F)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 228
    .line 229
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    sget v6, Lteam/opay/pay/R$dimen;->code_field_cursor_height:I

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->w(II)V

    .line 244
    .line 245
    .line 246
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 247
    .line 248
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    sget v6, Lteam/opay/pay/R$dimen;->code_field_cursor_width:I

    .line 257
    .line 258
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 263
    .line 264
    .line 265
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 266
    .line 267
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    const/4 v7, 0x3

    .line 272
    const/4 v8, 0x0

    .line 273
    const/4 v5, 0x3

    .line 274
    move v6, v10

    .line 275
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 276
    .line 277
    .line 278
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 279
    .line 280
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    const/4 v7, 0x4

    .line 285
    const/4 v5, 0x4

    .line 286
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 287
    .line 288
    .line 289
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 290
    .line 291
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    const/4 v7, 0x1

    .line 296
    const/4 v5, 0x1

    .line 297
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 298
    .line 299
    .line 300
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 301
    .line 302
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    const/4 v7, 0x2

    .line 307
    const/4 v5, 0x2

    .line 308
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 309
    .line 310
    .line 311
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 312
    .line 313
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 314
    .line 315
    .line 316
    iget-object v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->o:Ljava/util/List;

    .line 317
    .line 318
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 322
    .line 323
    move v9, v10

    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :cond_5
    return-void
.end method

.method public static final o(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final p()V
    .locals 14

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

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
    new-instance v1, Ldra;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Ldra;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

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
    iget v3, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

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
    new-instance v2, Lteam/opay/core/android/views/OpayCodeInputField$a;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Lteam/opay/core/android/views/OpayCodeInputField$a;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Lera;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lera;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 85
    .line 86
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 104
    .line 105
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget v4, Lteam/opay/pay/R$dimen;->code_field_height:I

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    div-int/lit8 v7, v0, 0x2

    .line 122
    .line 123
    const/4 v4, 0x3

    .line 124
    const/4 v0, 0x0

    .line 125
    const/4 v6, 0x3

    .line 126
    move v5, v0

    .line 127
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 128
    .line 129
    .line 130
    iget-object v8, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 131
    .line 132
    iget-object v2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    const/4 v12, 0x4

    .line 139
    const/4 v13, 0x0

    .line 140
    const/4 v10, 0x4

    .line 141
    move v11, v0

    .line 142
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 143
    .line 144
    .line 145
    iget-object v8, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 146
    .line 147
    iget-object v2, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    sget v3, Lteam/opay/pay/R$dimen;->code_field_width:I

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    div-int/lit8 v13, v2, 0x2

    .line 164
    .line 165
    const/4 v10, 0x1

    .line 166
    const/4 v12, 0x1

    .line 167
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 168
    .line 169
    .line 170
    iget-object v8, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 171
    .line 172
    iget-object v1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    const/4 v12, 0x2

    .line 179
    const/4 v13, 0x0

    .line 180
    const/4 v10, 0x2

    .line 181
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->s:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public static final q(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 9
    .line 10
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->s()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->t()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-direct {p0, p2}, Lteam/opay/core/android/views/OpayCodeInputField;->u(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final r(Lteam/opay/core/android/views/OpayCodeInputField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
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
    iget-object p0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->d:Lkotlin/jvm/functions/Function0;

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

.method private final s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->t:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Lteam/opay/core/android/views/OpayCodeInputField$b;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lteam/opay/core/android/views/OpayCodeInputField$b;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->t:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {v0}, Lteam/opay/core/android/views/OpayCodeInputField$b;->run()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private final t()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->t:Ljava/lang/Runnable;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->t:Ljava/lang/Runnable;

    .line 15
    .line 16
    return-void
.end method

.method private final u(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->getCode()Ljava/lang/String;

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
    iget v1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->getCode()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->e:I

    .line 24
    .line 25
    sub-int/2addr v0, v2

    .line 26
    :goto_0
    iget-object v1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_1
    if-ge v4, v1, :cond_6

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    if-ne v0, v4, :cond_1

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v5, 0x0

    .line 43
    :goto_2
    iget-object v6, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lteam/opay/core/android/validation/ValidationTextView;

    .line 50
    .line 51
    invoke-virtual {v6, v5}, Landroid/view/View;->setActivated(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 55
    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    iget v7, p0, Lteam/opay/core/android/views/OpayCodeInputField;->l:I

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-virtual {v6, v7}, Landroid/view/View;->setElevation(F)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    iget v7, p0, Lteam/opay/core/android/views/OpayCodeInputField;->k:I

    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    sget v8, Lteam/opay/pay/R$dimen;->code_field_no_shadow_elevation:I

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    int-to-float v7, v7

    .line 85
    invoke-virtual {v6, v7}, Landroid/view/View;->setElevation(F)V

    .line 86
    .line 87
    .line 88
    :goto_3
    iget-boolean v7, p0, Lteam/opay/core/android/views/OpayCodeInputField;->m:Z

    .line 89
    .line 90
    if-eqz v7, :cond_5

    .line 91
    .line 92
    iget-object v7, p0, Lteam/opay/core/android/views/OpayCodeInputField;->o:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Landroid/view/View;

    .line 99
    .line 100
    if-eqz v5, :cond_3

    .line 101
    .line 102
    const/4 v8, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    const/4 v8, 0x4

    .line 105
    :goto_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    iput-object v7, p0, Lteam/opay/core/android/views/OpayCodeInputField;->u:Landroid/view/View;

    .line 111
    .line 112
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentShownCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEditText()Lteam/opay/core/android/views/HiddenEditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFieldCount()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHideInput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getInvalid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->a:Z

    .line 2
    .line 3
    return v0
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
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->d:Lkotlin/jvm/functions/Function0;

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
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->n()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/core/android/views/OpayCodeInputField;->p()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lbra;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lbra;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcra;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcra;-><init>(Lteam/opay/core/android/views/OpayCodeInputField;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
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
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

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

.method public performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

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
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->q:Lteam/opay/core/android/views/HiddenEditText;

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
    iput-object p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setFieldCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHideInput(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->b:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

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

.method public final setInvalid(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->a:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/core/android/views/OpayCodeInputField;->n:Ljava/util/List;

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
    iput-object p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->d:Lkotlin/jvm/functions/Function0;

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
    iput-object p1, p0, Lteam/opay/core/android/views/OpayCodeInputField;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
