.class public final enum Lteam/opay/core/common/amount/Country;
.super Ljava/lang/Enum;
.source "Country.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/amount/Country$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/common/amount/Country;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0018\u0008\u0086\u0081\u0002\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB)\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/core/common/amount/Country;",
        "",
        "phoneCode",
        "",
        "countryCode",
        "currency",
        "symbol",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getPhoneCode",
        "()Ljava/lang/String;",
        "getCountryCode",
        "getCurrency",
        "getSymbol",
        "KENYA",
        "GHANA",
        "NIGERIA",
        "EGYPT",
        "PAKISTAN",
        "UK",
        "UAE",
        "USA",
        "INDIA",
        "CHINA",
        "EUC",
        "OTHER",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lwo5;

.field private static final synthetic $VALUES:[Lteam/opay/core/common/amount/Country;

.field public static final enum CHINA:Lteam/opay/core/common/amount/Country;

.field public static final Companion:Lteam/opay/core/common/amount/Country$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EGYPT:Lteam/opay/core/common/amount/Country;

.field public static final enum EUC:Lteam/opay/core/common/amount/Country;

.field public static final enum GHANA:Lteam/opay/core/common/amount/Country;

.field public static final enum INDIA:Lteam/opay/core/common/amount/Country;

.field public static final enum KENYA:Lteam/opay/core/common/amount/Country;

.field public static final enum NIGERIA:Lteam/opay/core/common/amount/Country;

.field public static final enum OTHER:Lteam/opay/core/common/amount/Country;

.field public static final enum PAKISTAN:Lteam/opay/core/common/amount/Country;

.field public static final enum UAE:Lteam/opay/core/common/amount/Country;

.field public static final enum UK:Lteam/opay/core/common/amount/Country;

.field public static final enum USA:Lteam/opay/core/common/amount/Country;


# instance fields
.field private final countryCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final currency:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final phoneCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final symbol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/common/amount/Country;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/common/amount/Country;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/common/amount/Country;->KENYA:Lteam/opay/core/common/amount/Country;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/common/amount/Country;->GHANA:Lteam/opay/core/common/amount/Country;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/common/amount/Country;->NIGERIA:Lteam/opay/core/common/amount/Country;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/common/amount/Country;->EGYPT:Lteam/opay/core/common/amount/Country;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/common/amount/Country;->PAKISTAN:Lteam/opay/core/common/amount/Country;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/common/amount/Country;->UK:Lteam/opay/core/common/amount/Country;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/common/amount/Country;->UAE:Lteam/opay/core/common/amount/Country;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/common/amount/Country;->USA:Lteam/opay/core/common/amount/Country;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/common/amount/Country;->INDIA:Lteam/opay/core/common/amount/Country;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/common/amount/Country;->CHINA:Lteam/opay/core/common/amount/Country;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/core/common/amount/Country;->EUC:Lteam/opay/core/common/amount/Country;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/core/common/amount/Country;->OTHER:Lteam/opay/core/common/amount/Country;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lteam/opay/core/common/amount/Country;

    .line 2
    .line 3
    const-string v5, "KES"

    .line 4
    .line 5
    const-string v6, "KSh"

    .line 6
    .line 7
    const-string v1, "KENYA"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "+254"

    .line 11
    .line 12
    const-string v4, "KE"

    .line 13
    .line 14
    move-object v0, v7

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v7, Lteam/opay/core/common/amount/Country;->KENYA:Lteam/opay/core/common/amount/Country;

    .line 19
    .line 20
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 21
    .line 22
    const-string v13, "GHS"

    .line 23
    .line 24
    const-string v14, "\u20b5"

    .line 25
    .line 26
    const-string v9, "GHANA"

    .line 27
    .line 28
    const/4 v10, 0x1

    .line 29
    const-string v11, "+233"

    .line 30
    .line 31
    const-string v12, "GH"

    .line 32
    .line 33
    move-object v8, v0

    .line 34
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lteam/opay/core/common/amount/Country;->GHANA:Lteam/opay/core/common/amount/Country;

    .line 38
    .line 39
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 40
    .line 41
    const-string v6, "NGN"

    .line 42
    .line 43
    const-string v7, "\u20a6"

    .line 44
    .line 45
    const-string v2, "NIGERIA"

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const-string v4, "+234"

    .line 49
    .line 50
    const-string v5, "NG"

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lteam/opay/core/common/amount/Country;->NIGERIA:Lteam/opay/core/common/amount/Country;

    .line 57
    .line 58
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 59
    .line 60
    const-string v13, "EGP"

    .line 61
    .line 62
    const-string v14, "\u00a3"

    .line 63
    .line 64
    const-string v9, "EGYPT"

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    const-string v11, "+20"

    .line 68
    .line 69
    const-string v12, "EGY"

    .line 70
    .line 71
    move-object v8, v0

    .line 72
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v0, Lteam/opay/core/common/amount/Country;->EGYPT:Lteam/opay/core/common/amount/Country;

    .line 76
    .line 77
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 78
    .line 79
    const-string v6, "PKR"

    .line 80
    .line 81
    const-string v7, "\u20a8"

    .line 82
    .line 83
    const-string v2, "PAKISTAN"

    .line 84
    .line 85
    const/4 v3, 0x4

    .line 86
    const-string v4, "+92"

    .line 87
    .line 88
    const-string v5, "PK"

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lteam/opay/core/common/amount/Country;->PAKISTAN:Lteam/opay/core/common/amount/Country;

    .line 95
    .line 96
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 97
    .line 98
    const-string v13, "GBP"

    .line 99
    .line 100
    const-string v14, "\u00a3"

    .line 101
    .line 102
    const-string v9, "UK"

    .line 103
    .line 104
    const/4 v10, 0x5

    .line 105
    const-string v11, "+44"

    .line 106
    .line 107
    const-string v12, "GB"

    .line 108
    .line 109
    move-object v8, v0

    .line 110
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lteam/opay/core/common/amount/Country;->UK:Lteam/opay/core/common/amount/Country;

    .line 114
    .line 115
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 116
    .line 117
    const-string v6, "AED"

    .line 118
    .line 119
    const-string v7, "\u062f.\u0625"

    .line 120
    .line 121
    const-string v2, "UAE"

    .line 122
    .line 123
    const/4 v3, 0x6

    .line 124
    const-string v4, "+971"

    .line 125
    .line 126
    const-string v5, "AE"

    .line 127
    .line 128
    move-object v1, v0

    .line 129
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lteam/opay/core/common/amount/Country;->UAE:Lteam/opay/core/common/amount/Country;

    .line 133
    .line 134
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 135
    .line 136
    const-string v13, "USD"

    .line 137
    .line 138
    const-string v14, "$"

    .line 139
    .line 140
    const-string v9, "USA"

    .line 141
    .line 142
    const/4 v10, 0x7

    .line 143
    const-string v11, "+1"

    .line 144
    .line 145
    const-string v12, "US"

    .line 146
    .line 147
    move-object v8, v0

    .line 148
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Lteam/opay/core/common/amount/Country;->USA:Lteam/opay/core/common/amount/Country;

    .line 152
    .line 153
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 154
    .line 155
    const-string v6, "INR"

    .line 156
    .line 157
    const-string v7, "\u20b9"

    .line 158
    .line 159
    const-string v2, "INDIA"

    .line 160
    .line 161
    const/16 v3, 0x8

    .line 162
    .line 163
    const-string v4, "+91"

    .line 164
    .line 165
    const-string v5, "IN"

    .line 166
    .line 167
    move-object v1, v0

    .line 168
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lteam/opay/core/common/amount/Country;->INDIA:Lteam/opay/core/common/amount/Country;

    .line 172
    .line 173
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 174
    .line 175
    const-string v13, "CNY"

    .line 176
    .line 177
    const-string v14, "\u00a5"

    .line 178
    .line 179
    const-string v9, "CHINA"

    .line 180
    .line 181
    const/16 v10, 0x9

    .line 182
    .line 183
    const-string v11, "+86"

    .line 184
    .line 185
    const-string v12, "CN"

    .line 186
    .line 187
    move-object v8, v0

    .line 188
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lteam/opay/core/common/amount/Country;->CHINA:Lteam/opay/core/common/amount/Country;

    .line 192
    .line 193
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 194
    .line 195
    const-string v6, "EUR"

    .line 196
    .line 197
    const-string v7, "\u20ac"

    .line 198
    .line 199
    const-string v2, "EUC"

    .line 200
    .line 201
    const/16 v3, 0xa

    .line 202
    .line 203
    const-string v4, ""

    .line 204
    .line 205
    const-string v5, "EU"

    .line 206
    .line 207
    move-object v1, v0

    .line 208
    invoke-direct/range {v1 .. v7}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lteam/opay/core/common/amount/Country;->EUC:Lteam/opay/core/common/amount/Country;

    .line 212
    .line 213
    new-instance v0, Lteam/opay/core/common/amount/Country;

    .line 214
    .line 215
    const-string v13, ""

    .line 216
    .line 217
    const-string v14, ""

    .line 218
    .line 219
    const-string v9, "OTHER"

    .line 220
    .line 221
    const/16 v10, 0xb

    .line 222
    .line 223
    const-string v11, ""

    .line 224
    .line 225
    const-string v12, ""

    .line 226
    .line 227
    move-object v8, v0

    .line 228
    invoke-direct/range {v8 .. v14}, Lteam/opay/core/common/amount/Country;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sput-object v0, Lteam/opay/core/common/amount/Country;->OTHER:Lteam/opay/core/common/amount/Country;

    .line 232
    .line 233
    invoke-static {}, Lteam/opay/core/common/amount/Country;->$values()[Lteam/opay/core/common/amount/Country;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    sput-object v0, Lteam/opay/core/common/amount/Country;->$VALUES:[Lteam/opay/core/common/amount/Country;

    .line 238
    .line 239
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    sput-object v0, Lteam/opay/core/common/amount/Country;->$ENTRIES:Lwo5;

    .line 244
    .line 245
    new-instance v0, Lteam/opay/core/common/amount/Country$Companion;

    .line 246
    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-direct {v0, v1}, Lteam/opay/core/common/amount/Country$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 249
    .line 250
    .line 251
    sput-object v0, Lteam/opay/core/common/amount/Country;->Companion:Lteam/opay/core/common/amount/Country$Companion;

    .line 252
    .line 253
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/core/common/amount/Country;->phoneCode:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lteam/opay/core/common/amount/Country;->countryCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lteam/opay/core/common/amount/Country;->currency:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lteam/opay/core/common/amount/Country;->symbol:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/core/common/amount/Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/common/amount/Country;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/common/amount/Country;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/common/amount/Country;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/common/amount/Country;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/common/amount/Country;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/common/amount/Country;->$VALUES:[Lteam/opay/core/common/amount/Country;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/common/amount/Country;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/amount/Country;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/amount/Country;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhoneCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/amount/Country;->phoneCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/common/amount/Country;->symbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
