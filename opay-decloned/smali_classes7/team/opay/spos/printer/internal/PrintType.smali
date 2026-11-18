.class public final enum Lteam/opay/spos/printer/internal/PrintType;
.super Ljava/lang/Enum;
.source "OCommon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/internal/PrintType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/spos/printer/internal/PrintType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0086\u0001\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/spos/printer/internal/PrintType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LOGO",
        "HEADER",
        "DASH_LINE",
        "EMPTY_LINE",
        "TEXT",
        "COLUMN",
        "IMAGE",
        "TEXT_LEFT_CENTER_RIGHT",
        "TEXT_ALL",
        "SEPARATE",
        "OKASH",
        "NOTICE_TITLE1",
        "NOTICE_TITLE2",
        "NOTICE_TITLE3",
        "NOTICE_TITLE4",
        "BOTTOM_ICON",
        "NOTE_ADVERT",
        "CHECKOUT_PRODUCT",
        "Companion",
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


# static fields
.field private static final synthetic $VALUES:[Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum BOTTOM_ICON:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum CHECKOUT_PRODUCT:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum COLUMN:Lteam/opay/spos/printer/internal/PrintType;

.field public static final Companion:Lteam/opay/spos/printer/internal/PrintType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DASH_LINE:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum EMPTY_LINE:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum HEADER:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum IMAGE:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum LOGO:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum NOTE_ADVERT:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum NOTICE_TITLE1:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum NOTICE_TITLE2:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum NOTICE_TITLE3:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum NOTICE_TITLE4:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum OKASH:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum SEPARATE:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum TEXT:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum TEXT_ALL:Lteam/opay/spos/printer/internal/PrintType;

.field public static final enum TEXT_LEFT_CENTER_RIGHT:Lteam/opay/spos/printer/internal/PrintType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/spos/printer/internal/PrintType;
    .locals 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/spos/printer/internal/PrintType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->LOGO:Lteam/opay/spos/printer/internal/PrintType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->HEADER:Lteam/opay/spos/printer/internal/PrintType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->DASH_LINE:Lteam/opay/spos/printer/internal/PrintType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->EMPTY_LINE:Lteam/opay/spos/printer/internal/PrintType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->TEXT:Lteam/opay/spos/printer/internal/PrintType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->COLUMN:Lteam/opay/spos/printer/internal/PrintType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->IMAGE:Lteam/opay/spos/printer/internal/PrintType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->TEXT_LEFT_CENTER_RIGHT:Lteam/opay/spos/printer/internal/PrintType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->TEXT_ALL:Lteam/opay/spos/printer/internal/PrintType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->SEPARATE:Lteam/opay/spos/printer/internal/PrintType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->OKASH:Lteam/opay/spos/printer/internal/PrintType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE1:Lteam/opay/spos/printer/internal/PrintType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE2:Lteam/opay/spos/printer/internal/PrintType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE3:Lteam/opay/spos/printer/internal/PrintType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE4:Lteam/opay/spos/printer/internal/PrintType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->BOTTOM_ICON:Lteam/opay/spos/printer/internal/PrintType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->NOTE_ADVERT:Lteam/opay/spos/printer/internal/PrintType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/spos/printer/internal/PrintType;->CHECKOUT_PRODUCT:Lteam/opay/spos/printer/internal/PrintType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "logo"

    .line 5
    .line 6
    const-string v3, "LOGO"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->LOGO:Lteam/opay/spos/printer/internal/PrintType;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "header"

    .line 17
    .line 18
    const-string v3, "HEADER"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->HEADER:Lteam/opay/spos/printer/internal/PrintType;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "line"

    .line 29
    .line 30
    const-string v3, "DASH_LINE"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->DASH_LINE:Lteam/opay/spos/printer/internal/PrintType;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "empty"

    .line 41
    .line 42
    const-string v3, "EMPTY_LINE"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->EMPTY_LINE:Lteam/opay/spos/printer/internal/PrintType;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "text"

    .line 53
    .line 54
    const-string v3, "TEXT"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->TEXT:Lteam/opay/spos/printer/internal/PrintType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "column"

    .line 65
    .line 66
    const-string v3, "COLUMN"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->COLUMN:Lteam/opay/spos/printer/internal/PrintType;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "image"

    .line 77
    .line 78
    const-string v3, "IMAGE"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->IMAGE:Lteam/opay/spos/printer/internal/PrintType;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "allAlign"

    .line 89
    .line 90
    const-string v3, "TEXT_LEFT_CENTER_RIGHT"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->TEXT_LEFT_CENTER_RIGHT:Lteam/opay/spos/printer/internal/PrintType;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "allText"

    .line 102
    .line 103
    const-string v3, "TEXT_ALL"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->TEXT_ALL:Lteam/opay/spos/printer/internal/PrintType;

    .line 109
    .line 110
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "separate"

    .line 115
    .line 116
    const-string v3, "SEPARATE"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->SEPARATE:Lteam/opay/spos/printer/internal/PrintType;

    .line 122
    .line 123
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "okash"

    .line 128
    .line 129
    const-string v3, "OKASH"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->OKASH:Lteam/opay/spos/printer/internal/PrintType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "<title1>"

    .line 141
    .line 142
    const-string v3, "NOTICE_TITLE1"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE1:Lteam/opay/spos/printer/internal/PrintType;

    .line 148
    .line 149
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "<title2>"

    .line 154
    .line 155
    const-string v3, "NOTICE_TITLE2"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE2:Lteam/opay/spos/printer/internal/PrintType;

    .line 161
    .line 162
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "<title3>"

    .line 167
    .line 168
    const-string v3, "NOTICE_TITLE3"

    .line 169
    .line 170
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE3:Lteam/opay/spos/printer/internal/PrintType;

    .line 174
    .line 175
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-string v2, "<title4>"

    .line 180
    .line 181
    const-string v3, "NOTICE_TITLE4"

    .line 182
    .line 183
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTICE_TITLE4:Lteam/opay/spos/printer/internal/PrintType;

    .line 187
    .line 188
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-string v2, "bottomIcon"

    .line 193
    .line 194
    const-string v3, "BOTTOM_ICON"

    .line 195
    .line 196
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->BOTTOM_ICON:Lteam/opay/spos/printer/internal/PrintType;

    .line 200
    .line 201
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-string v2, "noteAdvert"

    .line 206
    .line 207
    const-string v3, "NOTE_ADVERT"

    .line 208
    .line 209
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->NOTE_ADVERT:Lteam/opay/spos/printer/internal/PrintType;

    .line 213
    .line 214
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 215
    .line 216
    const/16 v1, 0x11

    .line 217
    .line 218
    const-string v2, "checkoutProduct"

    .line 219
    .line 220
    const-string v3, "CHECKOUT_PRODUCT"

    .line 221
    .line 222
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/spos/printer/internal/PrintType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->CHECKOUT_PRODUCT:Lteam/opay/spos/printer/internal/PrintType;

    .line 226
    .line 227
    invoke-static {}, Lteam/opay/spos/printer/internal/PrintType;->$values()[Lteam/opay/spos/printer/internal/PrintType;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->$VALUES:[Lteam/opay/spos/printer/internal/PrintType;

    .line 232
    .line 233
    new-instance v0, Lteam/opay/spos/printer/internal/PrintType$Companion;

    .line 234
    .line 235
    const/4 v1, 0x0

    .line 236
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/internal/PrintType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    .line 238
    .line 239
    sput-object v0, Lteam/opay/spos/printer/internal/PrintType;->Companion:Lteam/opay/spos/printer/internal/PrintType$Companion;

    .line 240
    .line 241
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/spos/printer/internal/PrintType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/spos/printer/internal/PrintType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/spos/printer/internal/PrintType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/spos/printer/internal/PrintType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/spos/printer/internal/PrintType;->$VALUES:[Lteam/opay/spos/printer/internal/PrintType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/spos/printer/internal/PrintType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/spos/printer/internal/PrintType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
