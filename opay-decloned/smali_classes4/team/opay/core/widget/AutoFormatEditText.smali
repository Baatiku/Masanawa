.class public final Lteam/opay/core/widget/AutoFormatEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "AutoFormatEditText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\r\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/core/widget/AutoFormatEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lteam/opay/core/widget/internal/TextFormat;",
        "a",
        "Lid8;",
        "getTextFormat",
        "()Lteam/opay/core/widget/internal/TextFormat;",
        "textFormat",
        "",
        "value",
        "getInputText",
        "()Ljava/lang/String;",
        "setInputText",
        "(Ljava/lang/String;)V",
        "inputText",
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
.field public final a:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lteam/opay/core/widget/AutoFormatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance v0, Lp80;

    invoke-direct {v0, p0}, Lp80;-><init>(Lteam/opay/core/widget/AutoFormatEditText;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v0

    iput-object v0, p0, Lteam/opay/core/widget/AutoFormatEditText;->a:Lid8;

    .line 5
    sget-object v0, Lteam/opay/core/common/R$styleable;->AutoFormatEditText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    move-result-object p2

    sget v0, Lteam/opay/core/common/R$styleable;->AutoFormatEditText_afe_format_type:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lteam/opay/core/widget/internal/TextFormat;->r(I)V

    .line 7
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    move-result-object p2

    sget v0, Lteam/opay/core/common/R$styleable;->AutoFormatEditText_afe_format_mark:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p2, v0}, Lteam/opay/core/widget/internal/TextFormat;->o(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    move-result-object p2

    sget v0, Lteam/opay/core/common/R$styleable;->AutoFormatEditText_afe_format_place:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lteam/opay/core/widget/internal/TextFormat;->p(I)V

    .line 9
    new-instance p2, Lteam/opay/core/widget/AutoFormatEditText$_init_$lambda$3$$inlined$doOnTextChanged$1;

    invoke-direct {p2, p0}, Lteam/opay/core/widget/AutoFormatEditText$_init_$lambda$3$$inlined$doOnTextChanged$1;-><init>(Lteam/opay/core/widget/AutoFormatEditText;)V

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    sget p2, Lteam/opay/core/common/R$styleable;->AutoFormatEditText_android_maxLength:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 12
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v0, v1, v3}, Lteam/opay/core/widget/internal/TextFormat;->t(Lteam/opay/core/widget/internal/TextFormat;IZILjava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lteam/opay/core/widget/AutoFormatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lteam/opay/core/widget/AutoFormatEditText;)Lteam/opay/core/widget/internal/TextFormat;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/core/widget/AutoFormatEditText;->c(Lteam/opay/core/widget/AutoFormatEditText;)Lteam/opay/core/widget/internal/TextFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/core/widget/AutoFormatEditText;)Lteam/opay/core/widget/internal/TextFormat;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lteam/opay/core/widget/AutoFormatEditText;)Lteam/opay/core/widget/internal/TextFormat;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/widget/internal/TextFormat;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lteam/opay/core/widget/internal/TextFormat;-><init>(Landroidx/appcompat/widget/AppCompatEditText;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private final getTextFormat()Lteam/opay/core/widget/internal/TextFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/core/widget/AutoFormatEditText;->a:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/widget/internal/TextFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getInputText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/core/widget/AutoFormatEditText;->getTextFormat()Lteam/opay/core/widget/internal/TextFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/widget/internal/TextFormat;->n()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final setInputText(Ljava/lang/String;)V
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
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
