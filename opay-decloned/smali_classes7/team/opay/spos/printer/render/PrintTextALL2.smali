.class public final Lteam/opay/spos/printer/render/PrintTextALL2;
.super Ljava/lang/Object;
.source "PrintTextALL2.kt"

# interfaces
.implements Lma7;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lma7;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u0008R$\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001b\"\u0004\u0008\u001f\u0010\u0008R$\u0010 \u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0019\u001a\u0004\u0008!\u0010\u001b\"\u0004\u0008\"\u0010\u0008R\"\u0010$\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010%\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)R\"\u0010-\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010%\u001a\u0004\u0008.\u0010\'\"\u0004\u0008/\u0010)\u00a8\u00060"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintTextALL2;",
        "Lma7;",
        "<init>",
        "()V",
        "",
        "line",
        "",
        "parsePrintData",
        "(Ljava/lang/String;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "becomeView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "Lteam/opay/spos/printer/internal/PrintType;",
        "getPrintType",
        "()Lteam/opay/spos/printer/internal/PrintType;",
        "",
        "size",
        "F",
        "getSize",
        "()F",
        "setSize",
        "(F)V",
        "leftText",
        "Ljava/lang/String;",
        "getLeftText",
        "()Ljava/lang/String;",
        "setLeftText",
        "centerText",
        "getCenterText",
        "setCenterText",
        "rightText",
        "getRightText",
        "setRightText",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "leftTextTypeface",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "getLeftTextTypeface",
        "()Lteam/opay/spos/printer/internal/OTextTypeface;",
        "setLeftTextTypeface",
        "(Lteam/opay/spos/printer/internal/OTextTypeface;)V",
        "centerTextTypeface",
        "getCenterTextTypeface",
        "setCenterTextTypeface",
        "rightTextTypeface",
        "getRightTextTypeface",
        "setRightTextTypeface",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private centerText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private leftText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rightText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/spos/printer/internal/OFontSize;->MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/OFontSize;->getSize()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 11
    .line 12
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public becomeView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lczb;->inflate(Landroid/view/LayoutInflater;)Lczb;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "inflate(LayoutInflater.from(context))"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lczb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftText:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 33
    .line 34
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lczb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 43
    .line 44
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerText:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 55
    .line 56
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Lczb;->d:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 64
    .line 65
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightText:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 76
    .line 77
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lczb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v0, "binding.root"

    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method

.method public final getCenterText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCenterTextTypeface()Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeftText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLeftTextTypeface()Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->TEXT_ALL:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRightText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRightTextTypeface()Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 2
    .line 3
    return v0
.end method

.method public parsePrintData(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "line"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    const-string v1, "\\^"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-array v0, v1, [Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, [Ljava/lang/String;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aget-object v0, p1, v0

    .line 33
    .line 34
    invoke-static {v0}, Laa6;->b(Ljava/lang/String;)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aget-object v0, p1, v0

    .line 42
    .line 43
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftText:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    aget-object v0, p1, v0

    .line 47
    .line 48
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerText:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    aget-object v0, p1, v0

    .line 52
    .line 53
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightText:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    aget-object v0, p1, v0

    .line 57
    .line 58
    invoke-static {v0}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 63
    .line 64
    const/4 v0, 0x6

    .line 65
    aget-object v0, p1, v0

    .line 66
    .line 67
    invoke-static {v0}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    aget-object p1, p1, v0

    .line 75
    .line 76
    invoke-static {p1}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 81
    .line 82
    return-void
.end method

.method public final setCenterText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCenterTextTypeface(Lteam/opay/spos/printer/internal/OTextTypeface;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/OTextTypeface;
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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->centerTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 7
    .line 8
    return-void
.end method

.method public final setLeftText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLeftTextTypeface(Lteam/opay/spos/printer/internal/OTextTypeface;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/OTextTypeface;
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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 7
    .line 8
    return-void
.end method

.method public final setRightText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRightTextTypeface(Lteam/opay/spos/printer/internal/OTextTypeface;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/OTextTypeface;
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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 7
    .line 8
    return-void
.end method

.method public final setSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/render/PrintTextALL2;->size:F

    .line 2
    .line 3
    return-void
.end method
