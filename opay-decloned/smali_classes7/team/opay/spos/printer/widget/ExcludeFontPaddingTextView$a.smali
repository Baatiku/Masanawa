.class public final Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;
.super Ljava/lang/Object;
.source "ExcludeFontPaddingTextView.kt"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;->c(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J?\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "team/opay/spos/printer/widget/ExcludeFontPaddingTextView$a",
        "Landroid/text/style/LineHeightSpan;",
        "",
        "text",
        "",
        "start",
        "end",
        "spanstartv",
        "lineHeight",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "fm",
        "",
        "chooseHeight",
        "(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V",
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
.field public final synthetic a:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

.field public final synthetic b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->a:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "text"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "fm"

    .line 7
    .line 8
    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 12
    .line 13
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 14
    .line 15
    sub-int/2addr p1, p2

    .line 16
    iget-object p2, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->a:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    float-to-int p2, p2

    .line 23
    iget-object p3, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    sub-int/2addr p4, p3

    .line 30
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 35
    .line 36
    iget-object p4, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    sub-int/2addr p3, p4

    .line 41
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 46
    .line 47
    iget-object p5, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    sub-int/2addr p4, p5

    .line 52
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p5

    .line 56
    sub-int/2addr p1, p2

    .line 57
    div-int/lit8 p1, p1, 0x2

    .line 58
    .line 59
    if-ge p1, p5, :cond_0

    .line 60
    .line 61
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 62
    .line 63
    add-int/2addr p2, p1

    .line 64
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 65
    .line 66
    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 67
    .line 68
    sub-int/2addr p2, p1

    .line 69
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    if-ge p3, p4, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 75
    .line 76
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 79
    .line 80
    add-int/2addr p2, p1

    .line 81
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView$a;->b:Landroid/graphics/Rect;

    .line 85
    .line 86
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 87
    .line 88
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 89
    .line 90
    sub-int/2addr p1, p2

    .line 91
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 92
    .line 93
    :goto_0
    return-void
.end method
