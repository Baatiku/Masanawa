.class public final Lteam/opay/spos/printer/render/PrintColumn;
.super Ljava/lang/Object;
.source "PrintColumn.kt"

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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintColumn;",
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
        "leftText",
        "Ljava/lang/String;",
        "rightText",
        "",
        "size",
        "F",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "leftTextTypeface",
        "Lteam/opay/spos/printer/internal/OTextTypeface;",
        "rightTextTypeface",
        "Lteam/opay/spos/printer/internal/OAlign;",
        "rightTextAlign",
        "Lteam/opay/spos/printer/internal/OAlign;",
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

.field private rightTextAlign:Lteam/opay/spos/printer/internal/OAlign;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iput v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->size:F

    .line 11
    .line 12
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 17
    .line 18
    sget-object v0, Lteam/opay/spos/printer/internal/OAlign;->RIGHT_RIGHT:Lteam/opay/spos/printer/internal/OAlign;

    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextAlign:Lteam/opay/spos/printer/internal/OAlign;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public becomeView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
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
    invoke-static {p1}, Llyb;->inflate(Landroid/view/LayoutInflater;)Llyb;

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
    iget-object v0, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftText:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->size:F

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

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
    iget-object v0, p1, Llyb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 43
    .line 44
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightText:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->size:F

    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

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
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextAlign:Lteam/opay/spos/printer/internal/OAlign;

    .line 64
    .line 65
    sget-object v1, Lteam/opay/spos/printer/internal/OAlign;->RIGHT_LEFT:Lteam/opay/spos/printer/internal/OAlign;

    .line 66
    .line 67
    const/4 v3, -0x2

    .line 68
    if-ne v0, v1, :cond_0

    .line 69
    .line 70
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p1, Llyb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 81
    .line 82
    const v1, 0x800003

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 89
    .line 90
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Llyb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v3, 0x6

    .line 107
    invoke-virtual {v0, v1, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/4 v4, 0x3

    .line 117
    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iget-object v5, p1, Llyb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 127
    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    const/4 v6, 0x7

    .line 133
    invoke-virtual {v0, v1, v6, v5, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p1, Llyb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1, v4, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Llyb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v0, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p1, Llyb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p1, Llyb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 164
    .line 165
    const v1, 0x800005

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    .line 170
    .line 171
    :goto_0
    invoke-virtual {p1}, Llyb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-string v0, "binding.root"

    .line 176
    .line 177
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-object p1
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->COLUMN:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public parsePrintData(Ljava/lang/String;)V
    .locals 4
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
    iput v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->size:F

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aget-object v0, p1, v0

    .line 42
    .line 43
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftText:Ljava/lang/String;

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    aget-object v0, p1, v0

    .line 47
    .line 48
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightText:Ljava/lang/String;

    .line 49
    .line 50
    array-length v0, p1

    .line 51
    const/4 v1, 0x4

    .line 52
    const/4 v2, 0x5

    .line 53
    if-eq v0, v2, :cond_2

    .line 54
    .line 55
    const/4 v3, 0x6

    .line 56
    if-eq v0, v3, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    if-eq v0, v1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    aget-object p1, p1, v3

    .line 63
    .line 64
    invoke-static {p1}, Laa6;->a(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OAlign;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextAlign:Lteam/opay/spos/printer/internal/OAlign;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    aget-object v0, p1, v1

    .line 72
    .line 73
    invoke-static {v0}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 78
    .line 79
    aget-object p1, p1, v2

    .line 80
    .line 81
    invoke-static {p1}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    sget-object v0, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 89
    .line 90
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintColumn;->leftTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 91
    .line 92
    aget-object p1, p1, v1

    .line 93
    .line 94
    invoke-static {p1}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintColumn;->rightTextTypeface:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 99
    .line 100
    :goto_0
    return-void
.end method
