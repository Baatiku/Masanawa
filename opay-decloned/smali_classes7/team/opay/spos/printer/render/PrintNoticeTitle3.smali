.class public final Lteam/opay/spos/printer/render/PrintNoticeTitle3;
.super Ljava/lang/Object;
.source "PrintNoticeTitle3.kt"

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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintNoticeTitle3;",
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
        "Lxyb;",
        "binding",
        "Lxyb;",
        "getBinding",
        "()Lxyb;",
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
.field private final binding:Lxyb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lxyb;->inflate(Landroid/view/LayoutInflater;)Lxyb;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "inflate(LayoutInflater.f\u2026rage.get().getContext()))"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle3;->binding:Lxyb;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public becomeView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
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
    iget-object p1, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle3;->binding:Lxyb;

    .line 7
    .line 8
    invoke-virtual {p1}, Lxyb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "binding.root"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final getBinding()Lxyb;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle3;->binding:Lxyb;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE3:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public parsePrintData(Ljava/lang/String;)V
    .locals 10
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
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x2

    .line 29
    if-lt v2, v4, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v3

    .line 33
    :goto_0
    if-eqz p1, :cond_5

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v2, 0x0

    .line 40
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    add-int/lit8 v6, v2, 0x1

    .line 51
    .line 52
    if-gez v2, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 55
    .line 56
    .line 57
    :cond_1
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    new-instance v7, Lkotlin/text/Regex;

    .line 60
    .line 61
    const-string v8, "\\^"

    .line 62
    .line 63
    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v5, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v7}, Laa6;->b(Ljava/lang/String;)F

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    const/4 v9, 0x4

    .line 85
    if-lt v8, v9, :cond_2

    .line 86
    .line 87
    const/4 v8, 0x3

    .line 88
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v8}, Laa6;->c(Ljava/lang/String;)Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    sget-object v8, Lteam/opay/spos/printer/internal/OTextTypeface;->NORMAL:Lteam/opay/spos/printer/internal/OTextTypeface;

    .line 100
    .line 101
    :goto_2
    if-eq v2, v0, :cond_4

    .line 102
    .line 103
    if-eq v2, v4, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    iget-object v2, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle3;->binding:Lxyb;

    .line 107
    .line 108
    iget-object v2, v2, Lxyb;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    iget-object v2, p0, Lteam/opay/spos/printer/render/PrintNoticeTitle3;->binding:Lxyb;

    .line 131
    .line 132
    iget-object v2, v2, Lxyb;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Ljava/lang/CharSequence;

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Lteam/opay/spos/printer/internal/OTextTypeface;->getTypeface()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 151
    .line 152
    .line 153
    :goto_3
    move v2, v6

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    return-void
.end method
