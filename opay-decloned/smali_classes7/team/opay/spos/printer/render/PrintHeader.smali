.class public final Lteam/opay/spos/printer/render/PrintHeader;
.super Ljava/lang/Object;
.source "PrintHeader.kt"

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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0008R$\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0008R$\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0008R$\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u0008R$\u0010\u001f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0012\u001a\u0004\u0008 \u0010\u0014\"\u0004\u0008!\u0010\u0008R$\u0010\"\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0012\u001a\u0004\u0008#\u0010\u0014\"\u0004\u0008$\u0010\u0008\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/spos/printer/render/PrintHeader;",
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
        "tid",
        "Ljava/lang/String;",
        "getTid",
        "()Ljava/lang/String;",
        "setTid",
        "sn",
        "getSn",
        "setSn",
        "merchantName",
        "getMerchantName",
        "setMerchantName",
        "merchantAddress",
        "getMerchantAddress",
        "setMerchantAddress",
        "eodStartTime",
        "getEodStartTime",
        "setEodStartTime",
        "eodEndTime",
        "getEodEndTime",
        "setEodEndTime",
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
.field private eodEndTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eodStartTime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private merchantAddress:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private merchantName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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
    invoke-static {p1}, Lryb;->inflate(Landroid/view/LayoutInflater;)Lryb;

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
    iget-object v0, p1, Lryb;->i:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 20
    .line 21
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantName:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "null"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantName:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/PrinterStorge;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lryb;->g:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantAddress:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantAddress:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sget-object v1, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 57
    .line 58
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/PrinterStorge;->a()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lryb;->m:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 66
    .line 67
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->tid:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->tid:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    sget-object v1, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 79
    .line 80
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/PrinterStorge;->i()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lryb;->k:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->sn:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->sn:Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    sget-object v1, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 101
    .line 102
    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/PrinterStorge;->g()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodStartTime:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const-string v1, "binding.eodStartTime"

    .line 116
    .line 117
    const-string v3, "binding.eodStartTimeTitle"

    .line 118
    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    iget-object v0, p1, Lryb;->e:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 122
    .line 123
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p1, Lryb;->d:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lryb;->d:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 138
    .line 139
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodStartTime:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_4
    iget-object v0, p1, Lryb;->e:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 146
    .line 147
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p1, Lryb;->d:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :goto_4
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodEndTime:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const-string v1, "binding.eodEndTime"

    .line 168
    .line 169
    const-string v2, "binding.eodEndTimeTitle"

    .line 170
    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    iget-object v0, p1, Lryb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 174
    .line 175
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p1, Lryb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 182
    .line 183
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lg0g;->h(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p1, Lryb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 190
    .line 191
    iget-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodEndTime:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    iget-object v0, p1, Lryb;->c:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 198
    .line 199
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p1, Lryb;->b:Lteam/opay/spos/printer/widget/ExcludeFontPaddingTextView;

    .line 206
    .line 207
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    :goto_5
    invoke-virtual {p1}, Lryb;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "binding.root"

    .line 218
    .line 219
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-object p1
.end method

.method public final getEodEndTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodEndTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEodStartTime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodStartTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMerchantAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMerchantName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrintType()Lteam/opay/spos/printer/internal/PrintType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->HEADER:Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSn()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->sn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->tid:Ljava/lang/String;

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
    array-length v0, p1

    .line 32
    const-string v1, "null"

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    if-lt v0, v2, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aget-object v0, p1, v0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v0, v1

    .line 42
    :goto_0
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->tid:Ljava/lang/String;

    .line 43
    .line 44
    array-length v0, p1

    .line 45
    const/4 v3, 0x3

    .line 46
    if-lt v0, v3, :cond_1

    .line 47
    .line 48
    aget-object v0, p1, v2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-object v0, v1

    .line 52
    :goto_1
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->sn:Ljava/lang/String;

    .line 53
    .line 54
    array-length v0, p1

    .line 55
    const/4 v2, 0x4

    .line 56
    if-lt v0, v2, :cond_2

    .line 57
    .line 58
    aget-object v0, p1, v3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/PrinterStorge;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_2
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantName:Ljava/lang/String;

    .line 68
    .line 69
    array-length v0, p1

    .line 70
    const/4 v3, 0x5

    .line 71
    if-lt v0, v3, :cond_3

    .line 72
    .line 73
    aget-object v0, p1, v2

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    .line 77
    .line 78
    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/PrinterStorge;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_3
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantAddress:Ljava/lang/String;

    .line 83
    .line 84
    array-length v0, p1

    .line 85
    const/4 v2, 0x6

    .line 86
    if-lt v0, v2, :cond_4

    .line 87
    .line 88
    aget-object v0, p1, v3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    move-object v0, v1

    .line 92
    :goto_4
    iput-object v0, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodStartTime:Ljava/lang/String;

    .line 93
    .line 94
    array-length v0, p1

    .line 95
    const/4 v3, 0x7

    .line 96
    if-lt v0, v3, :cond_5

    .line 97
    .line 98
    aget-object v1, p1, v2

    .line 99
    .line 100
    :cond_5
    iput-object v1, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodEndTime:Ljava/lang/String;

    .line 101
    .line 102
    return-void
.end method

.method public final setEodEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodEndTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setEodStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->eodStartTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMerchantAddress(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMerchantName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->merchantName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSn(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->sn:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/render/PrintHeader;->tid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
