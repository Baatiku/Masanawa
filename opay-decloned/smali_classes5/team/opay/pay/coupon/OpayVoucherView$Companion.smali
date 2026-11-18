.class public final Lteam/opay/pay/coupon/OpayVoucherView$Companion;
.super Ljava/lang/Object;
.source "OpayVoucherView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/coupon/OpayVoucherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lteam/opay/pay/coupon/OpayVoucherView$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "amount",
        "",
        "size",
        "",
        "digitBlod",
        "",
        "a",
        "(Ljava/lang/String;IZ)Ljava/lang/CharSequence;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/coupon/OpayVoucherView$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/coupon/OpayVoucherView$Companion;Ljava/lang/String;IZILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/coupon/OpayVoucherView$Companion;->a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "amount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/text/Regex;

    .line 7
    .line 8
    const-string v1, "^[0-9]+(.[0-9]{2})?$"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v1, Lbd9;->a:Lbd9;

    .line 20
    .line 21
    sget-object v3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 22
    .line 23
    const/4 v5, 0x4

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v2, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lbd9;->o(Lbd9;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_0
    new-instance v6, Landroid/text/SpannableString;

    .line 32
    .line 33
    invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    const/4 v0, 0x0

    .line 38
    const-string v1, "\u20a6"

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static {v6, v1, v7, p1, v0}, Lkotlin/text/StringsKt;->a1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string v8, "font/roboto_400.xml"

    .line 46
    .line 47
    const/16 v9, 0x11

    .line 48
    .line 49
    const/4 v10, 0x1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    .line 53
    .line 54
    invoke-direct {p1, p2, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, p1, v7, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    .line 59
    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 63
    .line 64
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-direct {p1, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, p1, v7, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 v4, 0x6

    .line 80
    const/4 v5, 0x0

    .line 81
    const-string v1, "%"

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    move-object v0, v6

    .line 86
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/4 v0, -0x1

    .line 91
    if-eq p1, v0, :cond_2

    .line 92
    .line 93
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 94
    .line 95
    invoke-direct {v0, p2, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-virtual {v6, v0, p1, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 103
    .line 104
    .line 105
    :cond_2
    if-eqz p3, :cond_3

    .line 106
    .line 107
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 108
    .line 109
    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-direct {p1, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, p1, v7, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :goto_0
    const/4 v4, 0x6

    .line 124
    const/4 v5, 0x0

    .line 125
    const-string v1, "."

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    move-object v0, v6

    .line 130
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-lez p1, :cond_4

    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    sub-int/2addr p3, v10

    .line 141
    if-eq p1, p3, :cond_4

    .line 142
    .line 143
    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    .line 144
    .line 145
    invoke-direct {p3, p2, v10}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {v6, p3, p1, p2, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 153
    .line 154
    .line 155
    :cond_4
    return-object v6
.end method
