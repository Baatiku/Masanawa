.class public final enum Lteam/opay/business/share/ShareItem;
.super Ljava/lang/Enum;
.source "ShareItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/business/share/ShareItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B%\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lteam/opay/business/share/ShareItem;",
        "",
        "platform",
        "",
        "textId",
        "",
        "drawableId",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;II)V",
        "getPlatform",
        "()Ljava/lang/String;",
        "getTextId",
        "()I",
        "getDrawableId",
        "FACEBOOK",
        "MESSENGER",
        "SMS",
        "SMS_RECEIPT",
        "EMAIL",
        "TWITTER",
        "WHATSAPP",
        "COPY",
        "PRINT",
        "MORE",
        "DOWNLOAD",
        "SHARE",
        "CUSTOM_PDF",
        "IMAGE",
        "SHARE_IMAGE",
        "HTTP_IMAGE",
        "business-share_release"
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

.field private static final synthetic $VALUES:[Lteam/opay/business/share/ShareItem;

.field public static final enum COPY:Lteam/opay/business/share/ShareItem;

.field public static final enum CUSTOM_PDF:Lteam/opay/business/share/ShareItem;

.field public static final enum DOWNLOAD:Lteam/opay/business/share/ShareItem;

.field public static final enum EMAIL:Lteam/opay/business/share/ShareItem;

.field public static final enum FACEBOOK:Lteam/opay/business/share/ShareItem;

.field public static final enum HTTP_IMAGE:Lteam/opay/business/share/ShareItem;

.field public static final enum IMAGE:Lteam/opay/business/share/ShareItem;

.field public static final enum MESSENGER:Lteam/opay/business/share/ShareItem;

.field public static final enum MORE:Lteam/opay/business/share/ShareItem;

.field public static final enum PRINT:Lteam/opay/business/share/ShareItem;

.field public static final enum SHARE:Lteam/opay/business/share/ShareItem;

.field public static final enum SHARE_IMAGE:Lteam/opay/business/share/ShareItem;

.field public static final enum SMS:Lteam/opay/business/share/ShareItem;

.field public static final enum SMS_RECEIPT:Lteam/opay/business/share/ShareItem;

.field public static final enum TWITTER:Lteam/opay/business/share/ShareItem;

.field public static final enum WHATSAPP:Lteam/opay/business/share/ShareItem;


# instance fields
.field private final drawableId:I

.field private final platform:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textId:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/business/share/ShareItem;
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/business/share/ShareItem;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/business/share/ShareItem;->FACEBOOK:Lteam/opay/business/share/ShareItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/business/share/ShareItem;->MESSENGER:Lteam/opay/business/share/ShareItem;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/business/share/ShareItem;->SMS:Lteam/opay/business/share/ShareItem;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/business/share/ShareItem;->SMS_RECEIPT:Lteam/opay/business/share/ShareItem;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/business/share/ShareItem;->EMAIL:Lteam/opay/business/share/ShareItem;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/business/share/ShareItem;->TWITTER:Lteam/opay/business/share/ShareItem;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/business/share/ShareItem;->WHATSAPP:Lteam/opay/business/share/ShareItem;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/business/share/ShareItem;->COPY:Lteam/opay/business/share/ShareItem;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/business/share/ShareItem;->PRINT:Lteam/opay/business/share/ShareItem;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/business/share/ShareItem;->MORE:Lteam/opay/business/share/ShareItem;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/business/share/ShareItem;->DOWNLOAD:Lteam/opay/business/share/ShareItem;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/business/share/ShareItem;->SHARE:Lteam/opay/business/share/ShareItem;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/business/share/ShareItem;->CUSTOM_PDF:Lteam/opay/business/share/ShareItem;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/business/share/ShareItem;->IMAGE:Lteam/opay/business/share/ShareItem;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/business/share/ShareItem;->SHARE_IMAGE:Lteam/opay/business/share/ShareItem;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/business/share/ShareItem;->HTTP_IMAGE:Lteam/opay/business/share/ShareItem;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lteam/opay/business/share/ShareItem;

    .line 2
    .line 3
    sget v4, Lteam/opay/business/share/R$string;->share_facebook:I

    .line 4
    .line 5
    sget v5, Lteam/opay/business/share/R$drawable;->share_svg_facebook:I

    .line 6
    .line 7
    const-string v1, "FACEBOOK"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "facebook"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lteam/opay/business/share/ShareItem;->FACEBOOK:Lteam/opay/business/share/ShareItem;

    .line 17
    .line 18
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 19
    .line 20
    sget v11, Lteam/opay/business/share/R$string;->share_messenger:I

    .line 21
    .line 22
    sget v12, Lteam/opay/business/share/R$drawable;->share_svg_messenger:I

    .line 23
    .line 24
    const-string v8, "MESSENGER"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "messenger"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lteam/opay/business/share/ShareItem;->MESSENGER:Lteam/opay/business/share/ShareItem;

    .line 34
    .line 35
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 36
    .line 37
    sget v5, Lteam/opay/business/share/R$string;->share_sms:I

    .line 38
    .line 39
    sget v11, Lteam/opay/business/share/R$drawable;->share_svg_sms:I

    .line 40
    .line 41
    const-string v2, "SMS"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, "sms"

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    move v6, v11

    .line 48
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lteam/opay/business/share/ShareItem;->SMS:Lteam/opay/business/share/ShareItem;

    .line 52
    .line 53
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 54
    .line 55
    const-string v9, "receipt"

    .line 56
    .line 57
    sget v10, Lteam/opay/business/share/R$string;->share_sms_receipt:I

    .line 58
    .line 59
    const-string v7, "SMS_RECEIPT"

    .line 60
    .line 61
    const/4 v8, 0x3

    .line 62
    move-object v6, v0

    .line 63
    invoke-direct/range {v6 .. v11}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lteam/opay/business/share/ShareItem;->SMS_RECEIPT:Lteam/opay/business/share/ShareItem;

    .line 67
    .line 68
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 69
    .line 70
    sget v5, Lteam/opay/business/share/R$string;->share_email:I

    .line 71
    .line 72
    sget v6, Lteam/opay/business/share/R$drawable;->share_svg_email:I

    .line 73
    .line 74
    const-string v2, "EMAIL"

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    const-string v4, "email"

    .line 78
    .line 79
    move-object v1, v0

    .line 80
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/business/share/ShareItem;->EMAIL:Lteam/opay/business/share/ShareItem;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 86
    .line 87
    sget v11, Lteam/opay/business/share/R$string;->share_twitter:I

    .line 88
    .line 89
    sget v12, Lteam/opay/business/share/R$drawable;->share_svg_twitter:I

    .line 90
    .line 91
    const-string v8, "TWITTER"

    .line 92
    .line 93
    const/4 v9, 0x5

    .line 94
    const-string v10, "twitter"

    .line 95
    .line 96
    move-object v7, v0

    .line 97
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lteam/opay/business/share/ShareItem;->TWITTER:Lteam/opay/business/share/ShareItem;

    .line 101
    .line 102
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 103
    .line 104
    sget v5, Lteam/opay/business/share/R$string;->share_whatsapp:I

    .line 105
    .line 106
    sget v6, Lteam/opay/business/share/R$drawable;->share_svg_whatsapp:I

    .line 107
    .line 108
    const-string v2, "WHATSAPP"

    .line 109
    .line 110
    const/4 v3, 0x6

    .line 111
    const-string v4, "whatsapp"

    .line 112
    .line 113
    move-object v1, v0

    .line 114
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lteam/opay/business/share/ShareItem;->WHATSAPP:Lteam/opay/business/share/ShareItem;

    .line 118
    .line 119
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 120
    .line 121
    sget v11, Lteam/opay/business/share/R$string;->share_copy_link:I

    .line 122
    .line 123
    sget v12, Lteam/opay/business/share/R$drawable;->share_svg_link:I

    .line 124
    .line 125
    const-string v8, "COPY"

    .line 126
    .line 127
    const/4 v9, 0x7

    .line 128
    const-string v10, "copy"

    .line 129
    .line 130
    move-object v7, v0

    .line 131
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/business/share/ShareItem;->COPY:Lteam/opay/business/share/ShareItem;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 137
    .line 138
    sget v5, Lteam/opay/business/share/R$string;->share_print:I

    .line 139
    .line 140
    sget v6, Lteam/opay/business/share/R$drawable;->share_svg_bluetooth:I

    .line 141
    .line 142
    const-string v2, "PRINT"

    .line 143
    .line 144
    const/16 v3, 0x8

    .line 145
    .line 146
    const-string v4, "print"

    .line 147
    .line 148
    move-object v1, v0

    .line 149
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lteam/opay/business/share/ShareItem;->PRINT:Lteam/opay/business/share/ShareItem;

    .line 153
    .line 154
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 155
    .line 156
    sget v11, Lteam/opay/business/share/R$string;->share_more:I

    .line 157
    .line 158
    sget v12, Lteam/opay/business/share/R$drawable;->share_svg_more:I

    .line 159
    .line 160
    const-string v8, "MORE"

    .line 161
    .line 162
    const/16 v9, 0x9

    .line 163
    .line 164
    const-string v10, "more"

    .line 165
    .line 166
    move-object v7, v0

    .line 167
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lteam/opay/business/share/ShareItem;->MORE:Lteam/opay/business/share/ShareItem;

    .line 171
    .line 172
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 173
    .line 174
    sget v5, Lteam/opay/business/share/R$string;->share_download:I

    .line 175
    .line 176
    sget v6, Lteam/opay/business/share/R$drawable;->share_svg_download:I

    .line 177
    .line 178
    const-string v2, "DOWNLOAD"

    .line 179
    .line 180
    const/16 v3, 0xa

    .line 181
    .line 182
    const-string v4, "download"

    .line 183
    .line 184
    move-object v1, v0

    .line 185
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    sput-object v0, Lteam/opay/business/share/ShareItem;->DOWNLOAD:Lteam/opay/business/share/ShareItem;

    .line 189
    .line 190
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 191
    .line 192
    sget v5, Lteam/opay/business/share/R$string;->share_share_pdf:I

    .line 193
    .line 194
    sget v6, Lteam/opay/business/share/R$drawable;->share_svg_pdf:I

    .line 195
    .line 196
    const-string v8, "SHARE"

    .line 197
    .line 198
    const/16 v9, 0xb

    .line 199
    .line 200
    const-string v10, "share"

    .line 201
    .line 202
    move-object v7, v0

    .line 203
    move v11, v5

    .line 204
    move v12, v6

    .line 205
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 206
    .line 207
    .line 208
    sput-object v0, Lteam/opay/business/share/ShareItem;->SHARE:Lteam/opay/business/share/ShareItem;

    .line 209
    .line 210
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 211
    .line 212
    const/16 v3, 0xc

    .line 213
    .line 214
    const-string v4, "customPDF"

    .line 215
    .line 216
    const-string v2, "CUSTOM_PDF"

    .line 217
    .line 218
    move-object v1, v0

    .line 219
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/business/share/ShareItem;->CUSTOM_PDF:Lteam/opay/business/share/ShareItem;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 225
    .line 226
    sget v13, Lteam/opay/business/share/R$string;->share_image:I

    .line 227
    .line 228
    sget v14, Lteam/opay/business/share/R$drawable;->share_svg_image:I

    .line 229
    .line 230
    const-string v8, "IMAGE"

    .line 231
    .line 232
    const/16 v9, 0xd

    .line 233
    .line 234
    const-string v10, "image"

    .line 235
    .line 236
    move-object v7, v0

    .line 237
    move v11, v13

    .line 238
    move v12, v14

    .line 239
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 240
    .line 241
    .line 242
    sput-object v0, Lteam/opay/business/share/ShareItem;->IMAGE:Lteam/opay/business/share/ShareItem;

    .line 243
    .line 244
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 245
    .line 246
    const/16 v3, 0xe

    .line 247
    .line 248
    const-string v4, "shareImage"

    .line 249
    .line 250
    const-string v2, "SHARE_IMAGE"

    .line 251
    .line 252
    move-object v1, v0

    .line 253
    move v5, v13

    .line 254
    move v6, v14

    .line 255
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 256
    .line 257
    .line 258
    sput-object v0, Lteam/opay/business/share/ShareItem;->SHARE_IMAGE:Lteam/opay/business/share/ShareItem;

    .line 259
    .line 260
    new-instance v0, Lteam/opay/business/share/ShareItem;

    .line 261
    .line 262
    const/16 v3, 0xf

    .line 263
    .line 264
    const-string v4, "httpImage"

    .line 265
    .line 266
    const-string v2, "HTTP_IMAGE"

    .line 267
    .line 268
    move-object v1, v0

    .line 269
    invoke-direct/range {v1 .. v6}, Lteam/opay/business/share/ShareItem;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 270
    .line 271
    .line 272
    sput-object v0, Lteam/opay/business/share/ShareItem;->HTTP_IMAGE:Lteam/opay/business/share/ShareItem;

    .line 273
    .line 274
    invoke-static {}, Lteam/opay/business/share/ShareItem;->$values()[Lteam/opay/business/share/ShareItem;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    sput-object v0, Lteam/opay/business/share/ShareItem;->$VALUES:[Lteam/opay/business/share/ShareItem;

    .line 279
    .line 280
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sput-object v0, Lteam/opay/business/share/ShareItem;->$ENTRIES:Lwo5;

    .line 285
    .line 286
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lteam/opay/business/share/ShareItem;->platform:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lteam/opay/business/share/ShareItem;->textId:I

    .line 7
    .line 8
    iput p5, p0, Lteam/opay/business/share/ShareItem;->drawableId:I

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/business/share/ShareItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/business/share/ShareItem;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/business/share/ShareItem;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/business/share/ShareItem;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/business/share/ShareItem;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/business/share/ShareItem;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/share/ShareItem;->$VALUES:[Lteam/opay/business/share/ShareItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/business/share/ShareItem;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDrawableId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/share/ShareItem;->drawableId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ShareItem;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextId()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/share/ShareItem;->textId:I

    .line 2
    .line 3
    return v0
.end method
