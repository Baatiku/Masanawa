.class public final Lteam/opay/core/common/amount/Country$Companion;
.super Ljava/lang/Object;
.source "Country.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/common/amount/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/core/common/amount/Country$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "currency",
        "Lteam/opay/core/common/amount/Country;",
        "a",
        "(Ljava/lang/String;)Lteam/opay/core/common/amount/Country;",
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
    invoke-direct {p0}, Lteam/opay/core/common/amount/Country$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lteam/opay/core/common/amount/Country;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_0
    const-string v0, "USD"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    sget-object p1, Lteam/opay/core/common/amount/Country;->USA:Lteam/opay/core/common/amount/Country;

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_1
    const-string v0, "PKR"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    sget-object p1, Lteam/opay/core/common/amount/Country;->PAKISTAN:Lteam/opay/core/common/amount/Country;

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_2
    const-string v0, "NGN"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    sget-object p1, Lteam/opay/core/common/amount/Country;->NIGERIA:Lteam/opay/core/common/amount/Country;

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_3
    const-string v0, "KES"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object p1, Lteam/opay/core/common/amount/Country;->KENYA:Lteam/opay/core/common/amount/Country;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :sswitch_4
    const-string v0, "INR"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    sget-object p1, Lteam/opay/core/common/amount/Country;->INDIA:Lteam/opay/core/common/amount/Country;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :sswitch_5
    const-string v0, "GHS"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    sget-object p1, Lteam/opay/core/common/amount/Country;->GHANA:Lteam/opay/core/common/amount/Country;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :sswitch_6
    const-string v0, "GBP"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    sget-object p1, Lteam/opay/core/common/amount/Country;->UK:Lteam/opay/core/common/amount/Country;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :sswitch_7
    const-string v0, "EUR"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    sget-object p1, Lteam/opay/core/common/amount/Country;->EUC:Lteam/opay/core/common/amount/Country;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :sswitch_8
    const-string v0, "EGP"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_8

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    sget-object p1, Lteam/opay/core/common/amount/Country;->EGYPT:Lteam/opay/core/common/amount/Country;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :sswitch_9
    const-string v0, "CNY"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_9

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_9
    sget-object p1, Lteam/opay/core/common/amount/Country;->CHINA:Lteam/opay/core/common/amount/Country;

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :sswitch_a
    const-string v0, "AED"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_a

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    sget-object p1, Lteam/opay/core/common/amount/Country;->UAE:Lteam/opay/core/common/amount/Country;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_b
    :goto_0
    sget-object p1, Lteam/opay/core/common/amount/Country;->OTHER:Lteam/opay/core/common/amount/Country;

    .line 151
    .line 152
    :goto_1
    return-object p1

    .line 153
    :sswitch_data_0
    .sparse-switch
        0xfca0 -> :sswitch_a
        0x1054e -> :sswitch_9
        0x10bee -> :sswitch_8
        0x10da2 -> :sswitch_7
        0x112d5 -> :sswitch_6
        0x11392 -> :sswitch_5
        0x11bcd -> :sswitch_4
        0x12239 -> :sswitch_3
        0x12db5 -> :sswitch_2
        0x135b7 -> :sswitch_1
        0x14966 -> :sswitch_0
    .end sparse-switch
.end method
