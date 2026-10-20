.class public final Lteam/opay/pay/android/views/AmountInputText;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AmountInputText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ!\u0010\u0017\u001a\u00020\n2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n0\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u0015\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u0006\u00a2\u0006\u0004\u0008$\u0010\u0012J\u0015\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001d\u00a2\u0006\u0004\u0008&\u0010 J\u0015\u0010(\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u0006\u00a2\u0006\u0004\u0008(\u0010\u0012R*\u00100\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R*\u00104\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010+\u001a\u0004\u00082\u0010-\"\u0004\u00083\u0010/R$\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R*\u0010;\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00158\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010+\u001a\u0004\u00089\u0010-\"\u0004\u0008:\u0010/R\u001b\u0010A\u001a\u00020<8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u001b\u0010F\u001a\u00020B8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010>\u001a\u0004\u0008D\u0010ER\u001b\u0010K\u001a\u00020G8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010>\u001a\u0004\u0008I\u0010JR\u001b\u0010P\u001a\u00020L8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008M\u0010>\u001a\u0004\u0008N\u0010OR*\u0010U\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u00198\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010\u001cR0\u0010Z\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\n\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u00106\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010\u0018R\u0016\u0010[\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010+R\u0016\u0010]\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010+R\u0016\u0010_\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010+R\u0016\u0010a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010+R\"\u0010g\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010\u0012R\"\u0010k\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010c\u001a\u0004\u0008i\u0010e\"\u0004\u0008j\u0010\u0012R\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010mR(\u0010t\u001a\u0004\u0018\u00010o2\u0008\u0010)\u001a\u0004\u0018\u00010o8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010s\u00a8\u0006u"
    }
    d2 = {
        "Lteam/opay/pay/android/views/AmountInputText;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "k",
        "()V",
        "i",
        "q",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "type",
        "setCustomInputType",
        "(I)V",
        "onFinishInflate",
        "Lkotlin/Function1;",
        "",
        "callback",
        "setOnFocusCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "currency",
        "setCurrency",
        "(Ljava/lang/String;)V",
        "",
        "size",
        "setCurrencyTextSize",
        "(F)V",
        "color",
        "setCurrentTextColor",
        "drawableId",
        "setContainerBg",
        "max",
        "setMaxInputAmount",
        "height",
        "setEditHeight",
        "value",
        "a",
        "Z",
        "getLocked",
        "()Z",
        "setLocked",
        "(Z)V",
        "locked",
        "b",
        "getEnable",
        "setEnable",
        "enable",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "onFocusChangeCallback",
        "d",
        "getError",
        "setError",
        "error",
        "Lteam/opay/pay/android/views/AmountEditText;",
        "e",
        "Lid8;",
        "getInputText",
        "()Lteam/opay/pay/android/views/AmountEditText;",
        "inputText",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "f",
        "getInfoText",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "infoText",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "g",
        "getClearButton",
        "()Landroidx/appcompat/widget/AppCompatImageView;",
        "clearButton",
        "Landroid/view/View;",
        "h",
        "getContainerView",
        "()Landroid/view/View;",
        "containerView",
        "Ljava/lang/String;",
        "getHint",
        "()Ljava/lang/String;",
        "setHint",
        "hint",
        "j",
        "getInputFocusCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setInputFocusCallback",
        "inputFocusCallback",
        "clearShow",
        "l",
        "inputCurrency",
        "m",
        "inputDecimal",
        "n",
        "inputMoney",
        "o",
        "I",
        "getNormalBackgroundRes",
        "()I",
        "setNormalBackgroundRes",
        "normalBackgroundRes",
        "p",
        "getErrorBackgroundRes",
        "setErrorBackgroundRes",
        "errorBackgroundRes",
        "Lgs;",
        "Lgs;",
        "binding",
        "",
        "getDetail",
        "()Ljava/lang/CharSequence;",
        "setDetail",
        "(Ljava/lang/CharSequence;)V",
        "detail",
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
.field public a:Z

.field public b:Z

.field public c:Lkotlin/jvm/functions/Function1;
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

.field public d:Z

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lkotlin/jvm/functions/Function1;
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

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public final q:Lgs;
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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/views/AmountInputText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lteam/opay/pay/android/views/AmountInputText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lteam/opay/pay/android/views/AmountInputText;->b:Z

    .line 6
    new-instance v0, Lcs;

    invoke-direct {v0, p0}, Lcs;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->e:Lid8;

    .line 7
    new-instance v0, Lds;

    invoke-direct {v0, p0}, Lds;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->f:Lid8;

    .line 8
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->g:Lid8;

    .line 9
    new-instance v0, Lfs;

    invoke-direct {v0, p0}, Lfs;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->h:Lid8;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->i:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lteam/opay/pay/android/views/AmountInputText;->k:Z

    .line 12
    iput-boolean p3, p0, Lteam/opay/pay/android/views/AmountInputText;->l:Z

    .line 13
    iput-boolean p3, p0, Lteam/opay/pay/android/views/AmountInputText;->m:Z

    .line 14
    iput-boolean p3, p0, Lteam/opay/pay/android/views/AmountInputText;->n:Z

    .line 15
    sget p3, Lteam/opay/pay/R$drawable;->nor_focus_f8f8fb_8:I

    iput p3, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 16
    sget p3, Lteam/opay/pay/R$drawable;->error_f8f8fb_8:I

    iput p3, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3, p0}, Lgs;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lgs;

    move-result-object p3

    const-string v0, "inflate(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputText;->q(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    :cond_0
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

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
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/android/views/AmountInputText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/android/views/AmountInputText;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputText;->n(Lteam/opay/pay/android/views/AmountInputText;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputText;->l(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lteam/opay/pay/android/views/AmountInputText;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/android/views/AmountInputText;->p(Lteam/opay/pay/android/views/AmountInputText;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lteam/opay/pay/android/views/AmountInputText;)Lteam/opay/pay/android/views/AmountEditText;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputText;->m(Lteam/opay/pay/android/views/AmountInputText;)Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputText;->h(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/android/views/AmountInputText;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputText;->j(Lteam/opay/pay/android/views/AmountInputText;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/android/views/AmountInputText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/AmountInputText;->o(Lteam/opay/pay/android/views/AmountInputText;Landroid/text/Editable;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object p0, p0, Lgs;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    .line 5
    return-object p0
.end method

.method public static final j(Lteam/opay/pay/android/views/AmountInputText;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object p0, p0, Lgs;->c:Landroid/view/View;

    .line 4
    .line 5
    return-object p0
.end method

.method public static final l(Lteam/opay/pay/android/views/AmountInputText;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object p0, p0, Lgs;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/android/views/AmountInputText;)Lteam/opay/pay/android/views/AmountEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object p0, p0, Lgs;->e:Lteam/opay/pay/android/views/AmountEditText;

    .line 4
    .line 5
    return-object p0
.end method

.method public static final n(Lteam/opay/pay/android/views/AmountInputText;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->i()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lkmf;->L(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final o(Lteam/opay/pay/android/views/AmountInputText;Landroid/text/Editable;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-lez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method public static final p(Lteam/opay/pay/android/views/AmountInputText;Landroid/view/View;Z)V
    .locals 8

    .line 1
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputText;->c:Lkotlin/jvm/functions/Function1;

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
    if-eqz p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->k:Z

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v0, 0x1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 48
    :goto_2
    invoke-static {p1, v0}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v6, 0x4

    .line 72
    const/4 v7, 0x0

    .line 73
    const-string v3, ".00"

    .line 74
    .line 75
    const-string v4, ""

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->k()V

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 109
    .line 110
    .line 111
    :cond_7
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputText;->j:Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    if-eqz p0, :cond_8

    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_8
    return-void
.end method

.method private final setCustomInputType(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v1, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq p1, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x5

    .line 18
    if-eq p1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x2002

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v1, 0x71

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 v1, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 v1, 0x2

    .line 30
    goto :goto_0

    .line 31
    :cond_4
    const/16 v1, 0x21

    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getClearButton()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->g:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getContainerView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getDetail()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object v0, v0, Lgs;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorBackgroundRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHint()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInfoText()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getInputFocusCallback()Lkotlin/jvm/functions/Function1;
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
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInputText()Lteam/opay/pay/android/views/AmountEditText;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/android/views/AmountEditText;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNormalBackgroundRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lteam/opay/pay/android/views/AmountInputText;->m:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lbd9;->a:Lbd9;

    .line 14
    .line 15
    invoke-virtual {v1}, Lbd9;->h()Ljava/text/DecimalFormat;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 43
    :cond_1
    sget-object v1, Lbd9;->a:Lbd9;

    .line 44
    .line 45
    invoke-virtual {v1}, Lbd9;->g()Ljava/text/DecimalFormat;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lteam/opay/pay/android/views/AmountEditText;->getFormatText()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    nop

    .line 75
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputText;->k:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lzr;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lzr;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lhh2;->a:Lhh2;

    .line 27
    .line 28
    sget v2, Lteam/opay/pay/R$color;->black_65:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lhh2;->a(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Las;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Las;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lpf5;->a(Landroid/widget/EditText;Lkotlin/jvm/functions/Function1;)Landroid/text/TextWatcher;

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v2, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 62
    .line 63
    invoke-static {v1, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lbs;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lbs;-><init>(Lteam/opay/pay/android/views/AmountInputText;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lteam/opay/pay/android/views/AmountInputText;->n:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/AmountEditText;->setInputAmount(Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final q(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lteam/opay/pay/R$styleable;->DetailInputText:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_text_hint:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, ""

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/android/views/AmountInputText;->setHint(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_wrap_content:I

    .line 23
    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/4 v2, -0x2

    .line 39
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    :cond_1
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_currency:I

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput-boolean p2, p0, Lteam/opay/pay/android/views/AmountInputText;->l:Z

    .line 48
    .line 49
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_decimal:I

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iput-boolean p2, p0, Lteam/opay/pay/android/views/AmountInputText;->m:Z

    .line 56
    .line 57
    iget-boolean p2, p0, Lteam/opay/pay/android/views/AmountInputText;->l:Z

    .line 58
    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 62
    .line 63
    iget-object p2, p2, Lgs;->f:Landroid/widget/TextView;

    .line 64
    .line 65
    const-string v2, "labelCurrencyName"

    .line 66
    .line 67
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_clear:I

    .line 74
    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    iput-boolean p2, p0, Lteam/opay/pay/android/views/AmountInputText;->k:Z

    .line 80
    .line 81
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_money:I

    .line 82
    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iput-boolean p2, p0, Lteam/opay/pay/android/views/AmountInputText;->n:Z

    .line 88
    .line 89
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_width:I

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    cmpg-float v3, p2, v2

    .line 97
    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    float-to-int p2, p2

    .line 110
    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    .line 112
    :goto_0
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_background:I

    .line 113
    .line 114
    iget v3, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 115
    .line 116
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    iput p2, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 121
    .line 122
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_error_input_background:I

    .line 123
    .line 124
    iget v3, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 125
    .line 126
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    iput p2, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    sget v3, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_text_appearance:I

    .line 137
    .line 138
    sget v4, Lteam/opay/pay/R$style;->OSdkEditText:I

    .line 139
    .line 140
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-static {p2, v3}, Lnie;->p(Landroid/widget/TextView;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    sget v3, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_elevation:I

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    sget v5, Lteam/opay/pay/R$dimen;->card_elevation:I

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-static {p2, v3}, Landroidx/core/view/a;->z0(Landroid/view/View;F)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    sget v3, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_padding_start:I

    .line 175
    .line 176
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    float-to-int v3, v3

    .line 181
    sget v4, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_padding_top:I

    .line 182
    .line 183
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    float-to-int v4, v4

    .line 188
    sget v5, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_padding_end:I

    .line 189
    .line 190
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    float-to-int v5, v5

    .line 195
    sget v6, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_padding_bottom:I

    .line 196
    .line 197
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    float-to-int v6, v6

    .line 202
    invoke-static {p2, v3, v4, v5, v6}, Landroidx/core/view/a;->H0(Landroid/view/View;IIII)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    sget v3, Lteam/opay/pay/R$styleable;->DetailInputText_details_info_style:I

    .line 210
    .line 211
    sget v4, Lteam/opay/pay/R$style;->Body_Error:I

    .line 212
    .line 213
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    invoke-static {p2, v3}, Lnie;->p(Landroid/widget/TextView;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInfoText()Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    instance-of v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 229
    .line 230
    const/4 v4, 0x0

    .line 231
    if-eqz v3, :cond_4

    .line 232
    .line 233
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    move-object p2, v4

    .line 237
    :goto_1
    if-eqz p2, :cond_5

    .line 238
    .line 239
    sget v3, Lteam/opay/pay/R$styleable;->DetailInputText_details_info_margin_start:I

    .line 240
    .line 241
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    float-to-int v3, v3

    .line 246
    sget v5, Lteam/opay/pay/R$styleable;->DetailInputText_details_info_margin_top:I

    .line 247
    .line 248
    const/16 v6, 0x8

    .line 249
    .line 250
    invoke-static {v6}, Lkmf;->g(I)I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    int-to-float v6, v6

    .line 255
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    float-to-int v5, v5

    .line 260
    sget v6, Lteam/opay/pay/R$styleable;->DetailInputText_details_info_margin_bottom:I

    .line 261
    .line 262
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    float-to-int v6, v6

    .line 267
    invoke-virtual {p2, v3, v5, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 268
    .line 269
    .line 270
    :cond_5
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_info_gone_margin_bottom:I

    .line 271
    .line 272
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    cmpg-float v3, p2, v2

    .line 277
    .line 278
    if-nez v3, :cond_6

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_6
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 282
    .line 283
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 287
    .line 288
    .line 289
    sget v5, Lteam/opay/pay/R$id;->input_field:I

    .line 290
    .line 291
    const/4 v6, 0x4

    .line 292
    float-to-int p2, p2

    .line 293
    invoke-virtual {v3, v5, v6, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->a0(III)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 297
    .line 298
    .line 299
    :goto_2
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_type:I

    .line 300
    .line 301
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    invoke-direct {p0, p2}, Lteam/opay/pay/android/views/AmountInputText;->setCustomInputType(I)V

    .line 306
    .line 307
    .line 308
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_max_length:I

    .line 309
    .line 310
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-eqz p2, :cond_7

    .line 315
    .line 316
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    .line 321
    .line 322
    invoke-direct {v5, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 323
    .line 324
    .line 325
    new-array p2, v0, [Landroid/text/InputFilter$LengthFilter;

    .line 326
    .line 327
    aput-object v5, p2, v1

    .line 328
    .line 329
    check-cast p2, [Landroid/text/InputFilter;

    .line 330
    .line 331
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 332
    .line 333
    .line 334
    :cond_7
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_margin_end:I

    .line 335
    .line 336
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    cmpg-float v3, v3, v2

    .line 349
    .line 350
    if-nez v3, :cond_8

    .line 351
    .line 352
    const/4 v3, 0x1

    .line 353
    goto :goto_3

    .line 354
    :cond_8
    const/4 v3, 0x0

    .line 355
    :goto_3
    if-nez v3, :cond_9

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_9
    move-object p2, v4

    .line 359
    :goto_4
    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 360
    .line 361
    if-eqz p2, :cond_a

    .line 362
    .line 363
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    iget-object v5, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 368
    .line 369
    iget-object v5, v5, Lgs;->c:Landroid/view/View;

    .line 370
    .line 371
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    move-object v7, v6

    .line 379
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 380
    .line 381
    float-to-int p2, p2

    .line 382
    invoke-virtual {v7, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    .line 387
    .line 388
    :cond_a
    sget p2, Lteam/opay/pay/R$styleable;->DetailInputText_details_input_clear_margin_end:I

    .line 389
    .line 390
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 391
    .line 392
    .line 393
    move-result p2

    .line 394
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    cmpg-float v2, v5, v2

    .line 403
    .line 404
    if-nez v2, :cond_b

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_b
    const/4 v0, 0x0

    .line 408
    :goto_5
    if-nez v0, :cond_c

    .line 409
    .line 410
    move-object v4, p2

    .line 411
    :cond_c
    if-eqz v4, :cond_d

    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 414
    .line 415
    .line 416
    move-result p2

    .line 417
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getClearButton()Landroidx/appcompat/widget/AppCompatImageView;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    move-object v2, v1

    .line 433
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 434
    .line 435
    float-to-int p2, p2

    .line 436
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    .line 441
    .line 442
    :cond_d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 443
    .line 444
    .line 445
    return-void
.end method

.method public final setContainerBg(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currency"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 7
    .line 8
    iget-object v0, v0, Lgs;->f:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setCurrencyTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object v0, v0, Lgs;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setCurrentTextColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object v0, v0, Lgs;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, p1}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setDetail(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 2
    .line 3
    iget-object v0, v0, Lgs;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    const-string v1, "infoField"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    xor-int/2addr v2, v3

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    invoke-static {v0, v1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputText;->q:Lgs;

    .line 26
    .line 27
    iget-object v0, v0, Lgs;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final setEditHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setEnable(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lkotlin/Pair;

    .line 8
    .line 9
    iget v2, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget v4, Lteam/opay/pay/R$dimen;->card_elevation:I

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lkotlin/Pair;

    .line 34
    .line 35
    iget v2, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Number;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputText;->setLocked(Z)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final setError(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getContainerView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 34
    .line 35
    invoke-static {v1, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v2, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 45
    .line 46
    invoke-static {v1, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    iput-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputText;->d:Z

    .line 54
    .line 55
    return-void
.end method

.method public final setErrorBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/views/AmountInputText;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public final setHint(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputText;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setInputFocusCallback(Lkotlin/jvm/functions/Function1;)V
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
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputText;->j:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Lteam/opay/pay/android/views/AmountInputText;->a:Z

    .line 9
    .line 10
    return-void
.end method

.method public final setMaxInputAmount(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputText;->getInputText()Lteam/opay/pay/android/views/AmountEditText;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/android/views/AmountEditText;->setMaxInputAmount(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setNormalBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/android/views/AmountInputText;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOnFocusCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputText;->c:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method
