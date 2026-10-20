.class public final Lteam/opay/spos/printer/render/PrintText;
.super Ljava/lang/Object;
.source "PrintText.kt"

# interfaces
.implements Lma7;


# annotations
.annotation build Lcom/google/auto/service/AutoService;
    value = {
        Lma7;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/render/PrintText$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0008R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintText;",
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
        "printText",
        "Ljava/lang/String;",
        "getPrintText",
        "()Ljava/lang/String;",
        "setPrintText",
        "",
        "size",
        "F",
        "getSize",
        "()F",
        "setSize",
        "(F)V",
        "Lteam/opay/spos/printer/internal/OAlign;",
        "align",
        "Lteam/opay/spos/printer/internal/OAlign;",
        "getAlign",
        "()Lteam/opay/spos/printer/internal/OAlign;",
        "setAlign",
        "(Lteam/opay/spos/printer/internal/OAlign;)V",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "textTypeface",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "getTextTypeface",
        "()Lteam/opay/spos/printer/internal/OTextTypeface;",
        "setTextTypeface",
        "(Lteam/opay/spos/printer/internal/OTextTypeface;)V",
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
.field private align:Lteam/opay/spos/printer/internal/OAlign;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private printText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:F

.field private textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;
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
    sget-object v0, Lteam/opay/spos/printer/internal/OFontSize;->MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/OFontSize;->getSize()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lteam/opay/spos/printer/render/PrintText;->size:F

    .line 11
    .line 12
    sget-object v0, Lteam/opay/spos/printer/internal/OAlign;->LEFT:Lteam/opay/spos/printer/internal/OAlign;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->align:Lteam/opay/spos/printer/internal/OAlign;

    .line 15
    .line 16
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public becomeView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
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
    invoke-static {p1}, Lbzb;->inflate(Landroid/view/LayoutInflater;)Lbzb;

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
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->align:Lteam/opay/spos/printer/internal/OAlign;

    .line 20
    .line 21
    sget-object v1, Lteam/opay/spos/printer/render/PrintText$a;->a:[I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    aget v0, v1, v0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    iget-object v0, p1, Lbzb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p1, Lbzb;->d:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p1, Lbzb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p1, Lbzb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 48
    .line 49
    :goto_0
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintText;->printText:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iget v2, p0, Lteam/opay/spos/printer/render/PrintText;->size:F

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintText;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 61
    .line 62
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lbzb;->a()Landroid/widget/FrameLayout;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v0, "binding.root"

    .line 75
    .line 76
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method public final getAlign()Lteam/opay/spos/printer/internal/OAlign;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->align:Lteam/opay/spos/printer/internal/OAlign;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrintText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->printText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->TEXT:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/render/PrintText;->size:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTextTypeface()Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    return-object v0
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
    iput v0, p0, Lteam/opay/spos/printer/render/PrintText;->size:F

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aget-object v0, p1, v0

    .line 42
    .line 43
    invoke-static {v0}, Laa6;->a(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OAlign;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->align:Lteam/opay/spos/printer/internal/OAlign;

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    aget-object v0, p1, v0

    .line 51
    .line 52
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintText;->printText:Ljava/lang/String;

    .line 53
    .line 54
    array-length v0, p1

    .line 55
    const/4 v1, 0x5

    .line 56
    if-lt v0, v1, :cond_0

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    aget-object p1, p1, v0

    .line 60
    .line 61
    invoke-static {p1}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 67
    .line 68
    :goto_0
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintText;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 69
    .line 70
    return-void
.end method

.method public final setAlign(Lteam/opay/spos/printer/internal/OAlign;)V
    .locals 1
    .param p1    # Lteam/opay/spos/printer/internal/OAlign;
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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintText;->align:Lteam/opay/spos/printer/internal/OAlign;

    .line 7
    .line 8
    return-void
.end method

.method public final setPrintText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintText;->printText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/render/PrintText;->size:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTextTypeface(Lteam/opay/spos/printer/internal/OTextTypeface;)V
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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintText;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 7
    .line 8
    return-void
.end method
