.class public final Lteam/opay/spos/printer/render/PrintNoticeTitle4;
.super Ljava/lang/Object;
.source "PrintNoticeTitle4.kt"

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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintNoticeTitle4;",
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
        "Landroid/text/SpannableStringBuilder;",
        "printSpannableStr",
        "Landroid/text/SpannableStringBuilder;",
        "printSpannableStr2",
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
.field private final printSpannableStr:Landroid/text/SpannableStringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final printSpannableStr2:Landroid/text/SpannableStringBuilder;
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
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr:Landroid/text/SpannableStringBuilder;

    .line 10
    .line 11
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr2:Landroid/text/SpannableStringBuilder;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public becomeView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
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
    invoke-static {p1}, Lyyb;->inflate(Landroid/view/LayoutInflater;)Lyyb;

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
    iget-object v0, p1, Lyyb;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr:Landroid/text/SpannableStringBuilder;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lyyb;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr2:Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lyyb;->a()Landroid/widget/LinearLayout;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "binding.root"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE4:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public parsePrintData(Ljava/lang/String;)V
    .locals 8
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
    const-string v1, "\\|"

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
    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->Z(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v3, Lkotlin/text/Regex;

    .line 40
    .line 41
    const-string v4, "\\^"

    .line 42
    .line 43
    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    new-array v3, v1, [Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v2, [Ljava/lang/String;

    .line 62
    .line 63
    aget-object v3, v2, v0

    .line 64
    .line 65
    invoke-static {v3}, Laa6;->b(Ljava/lang/String;)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-int v3, v3

    .line 70
    array-length v4, v2

    .line 71
    const/4 v5, 0x4

    .line 72
    if-lt v4, v5, :cond_1

    .line 73
    .line 74
    const/4 v4, 0x3

    .line 75
    aget-object v4, v2, v4

    .line 76
    .line 77
    const-string v5, "B"

    .line 78
    .line 79
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 86
    .line 87
    invoke-direct {v4, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 92
    .line 93
    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 94
    .line 95
    .line 96
    :goto_1
    new-instance v5, Landroid/text/SpannableString;

    .line 97
    .line 98
    const/4 v6, 0x2

    .line 99
    aget-object v6, v2, v6

    .line 100
    .line 101
    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    .line 105
    .line 106
    invoke-direct {v6, v3, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const/16 v7, 0x22

    .line 114
    .line 115
    invoke-virtual {v5, v6, v1, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    const/16 v6, 0x21

    .line 123
    .line 124
    invoke-virtual {v5, v4, v1, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    .line 126
    .line 127
    aget-object v2, v2, v1

    .line 128
    .line 129
    const-string v3, "spanText1"

    .line 130
    .line 131
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_2

    .line 136
    .line 137
    iget-object v2, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr:Landroid/text/SpannableStringBuilder;

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const-string v3, "spanText2"

    .line 144
    .line 145
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_0

    .line 150
    .line 151
    iget-object v2, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle4;->printSpannableStr2:Landroid/text/SpannableStringBuilder;

    .line 152
    .line 153
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_3
    return-void
.end method
