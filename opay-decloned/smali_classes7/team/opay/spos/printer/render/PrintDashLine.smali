.class public final Lteam/opay/spos/printer/render/PrintDashLine;
.super Ljava/lang/Object;
.source "PrintDashLine.kt"

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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0008R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintDashLine;",
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
        "lineText",
        "Ljava/lang/String;",
        "getLineText",
        "()Ljava/lang/String;",
        "setLineText",
        "",
        "size",
        "F",
        "getSize",
        "()F",
        "setSize",
        "(F)V",
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
.field private lineText:Ljava/lang/String;
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
    iput v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->size:F

    .line 11
    .line 12
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 15
    .line 16
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
    invoke-static {p1}, Lqyb;->inflate(Landroid/view/LayoutInflater;)Lqyb;

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
    iget-object v0, p1, Lqyb;->b:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->lineText:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "becomeView$lambda$0"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->lineText:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 47
    :goto_1
    xor-int/2addr v1, v2

    .line 48
    invoke-static {v0, v1}, Lg0g;->j(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->size:F

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 57
    .line 58
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lqyb;->a()Landroid/widget/FrameLayout;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "binding.root"

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method

.method public final getLineText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->lineText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->DASH_LINE:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()F
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->size:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTextTypeface()Lteam/opay/spos/printer/internal/OTextTypeface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public parsePrintData(Ljava/lang/String;)V
    .locals 3
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
    array-length v0, p1

    .line 32
    const/4 v1, 0x1

    .line 33
    if-le v0, v1, :cond_0

    .line 34
    .line 35
    aget-object v0, p1, v1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->lineText:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    array-length v0, p1

    .line 51
    const/4 v1, 0x3

    .line 52
    if-lt v0, v1, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    aget-object v0, p1, v0

    .line 56
    .line 57
    invoke-static {v0}, Laa6;->b(Ljava/lang/String;)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object v0, Lteam/opay/spos/printer/internal/OFontSize;->MIDDLE:Lteam/opay/spos/printer/internal/OFontSize;

    .line 63
    .line 64
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/OFontSize;->getSize()F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_1
    iput v0, p0, Lteam/opay/spos/printer/render/PrintDashLine;->size:F

    .line 69
    .line 70
    array-length v0, p1

    .line 71
    const/4 v2, 0x4

    .line 72
    if-lt v0, v2, :cond_3

    .line 73
    .line 74
    aget-object p1, p1, v1

    .line 75
    .line 76
    invoke-static {p1}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    sget-object p1, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 82
    .line 83
    :goto_2
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 84
    .line 85
    :cond_4
    :goto_3
    return-void
.end method

.method public final setLineText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->lineText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->size:F

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
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintDashLine;->textTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 7
    .line 8
    return-void
.end method
