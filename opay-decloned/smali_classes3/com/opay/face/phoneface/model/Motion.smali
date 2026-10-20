.class public final enum Lcom/opay/face/phoneface/model/Motion;
.super Ljava/lang/Enum;
.source "Motion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/opay/face/phoneface/model/Motion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/opay/face/phoneface/model/Motion;

.field public static final enum BLINK:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum BLINK_LEFT:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum BLINK_RIGHT:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum FLASH:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum FRONT:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum FRONT_FAR:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum FRONT_NEAR:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum NOD:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum NOD_DOWN:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum NOD_UP:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum SHAKE_HEAD:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum SHAKE_HEAD_LEFT:Lcom/opay/face/phoneface/model/Motion;

.field public static final enum SHAKE_HEAD_RIGHT:Lcom/opay/face/phoneface/model/Motion;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    const-string v1, "FRONT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/opay/face/phoneface/model/Motion;->FRONT:Lcom/opay/face/phoneface/model/Motion;

    .line 10
    .line 11
    new-instance v1, Lcom/opay/face/phoneface/model/Motion;

    .line 12
    .line 13
    const-string v3, "FRONT_FAR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/16 v5, 0xb

    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v5}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/opay/face/phoneface/model/Motion;->FRONT_FAR:Lcom/opay/face/phoneface/model/Motion;

    .line 22
    .line 23
    new-instance v3, Lcom/opay/face/phoneface/model/Motion;

    .line 24
    .line 25
    const-string v6, "FRONT_NEAR"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    const/16 v8, 0xc

    .line 29
    .line 30
    invoke-direct {v3, v6, v7, v8}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lcom/opay/face/phoneface/model/Motion;->FRONT_NEAR:Lcom/opay/face/phoneface/model/Motion;

    .line 34
    .line 35
    new-instance v6, Lcom/opay/face/phoneface/model/Motion;

    .line 36
    .line 37
    const-string v9, "BLINK"

    .line 38
    .line 39
    const/4 v10, 0x3

    .line 40
    invoke-direct {v6, v9, v10, v4}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v6, Lcom/opay/face/phoneface/model/Motion;->BLINK:Lcom/opay/face/phoneface/model/Motion;

    .line 44
    .line 45
    new-instance v9, Lcom/opay/face/phoneface/model/Motion;

    .line 46
    .line 47
    const/16 v11, 0x65

    .line 48
    .line 49
    const-string v12, "BLINK_LEFT"

    .line 50
    .line 51
    const/4 v13, 0x4

    .line 52
    invoke-direct {v9, v12, v13, v11}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 53
    .line 54
    .line 55
    sput-object v9, Lcom/opay/face/phoneface/model/Motion;->BLINK_LEFT:Lcom/opay/face/phoneface/model/Motion;

    .line 56
    .line 57
    new-instance v11, Lcom/opay/face/phoneface/model/Motion;

    .line 58
    .line 59
    const/16 v12, 0x66

    .line 60
    .line 61
    const-string v14, "BLINK_RIGHT"

    .line 62
    .line 63
    const/4 v15, 0x5

    .line 64
    invoke-direct {v11, v14, v15, v12}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 65
    .line 66
    .line 67
    sput-object v11, Lcom/opay/face/phoneface/model/Motion;->BLINK_RIGHT:Lcom/opay/face/phoneface/model/Motion;

    .line 68
    .line 69
    new-instance v12, Lcom/opay/face/phoneface/model/Motion;

    .line 70
    .line 71
    const-string v14, "OPEN_MOUTH"

    .line 72
    .line 73
    const/4 v4, 0x6

    .line 74
    invoke-direct {v12, v14, v4, v7}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v12, Lcom/opay/face/phoneface/model/Motion;->OPEN_MOUTH:Lcom/opay/face/phoneface/model/Motion;

    .line 78
    .line 79
    new-instance v14, Lcom/opay/face/phoneface/model/Motion;

    .line 80
    .line 81
    const-string v7, "SHAKE_HEAD"

    .line 82
    .line 83
    const/4 v2, 0x7

    .line 84
    invoke-direct {v14, v7, v2, v10}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v14, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD:Lcom/opay/face/phoneface/model/Motion;

    .line 88
    .line 89
    new-instance v7, Lcom/opay/face/phoneface/model/Motion;

    .line 90
    .line 91
    const-string v10, "NOD"

    .line 92
    .line 93
    const/16 v8, 0x8

    .line 94
    .line 95
    invoke-direct {v7, v10, v8, v13}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    sput-object v7, Lcom/opay/face/phoneface/model/Motion;->NOD:Lcom/opay/face/phoneface/model/Motion;

    .line 99
    .line 100
    new-instance v10, Lcom/opay/face/phoneface/model/Motion;

    .line 101
    .line 102
    const-string v13, "SHAKE_HEAD_LEFT"

    .line 103
    .line 104
    const/16 v8, 0x9

    .line 105
    .line 106
    invoke-direct {v10, v13, v8, v15}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    sput-object v10, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD_LEFT:Lcom/opay/face/phoneface/model/Motion;

    .line 110
    .line 111
    new-instance v13, Lcom/opay/face/phoneface/model/Motion;

    .line 112
    .line 113
    const-string v15, "SHAKE_HEAD_RIGHT"

    .line 114
    .line 115
    const/16 v8, 0xa

    .line 116
    .line 117
    invoke-direct {v13, v15, v8, v4}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 118
    .line 119
    .line 120
    sput-object v13, Lcom/opay/face/phoneface/model/Motion;->SHAKE_HEAD_RIGHT:Lcom/opay/face/phoneface/model/Motion;

    .line 121
    .line 122
    new-instance v15, Lcom/opay/face/phoneface/model/Motion;

    .line 123
    .line 124
    const-string v8, "NOD_UP"

    .line 125
    .line 126
    invoke-direct {v15, v8, v5, v2}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    sput-object v15, Lcom/opay/face/phoneface/model/Motion;->NOD_UP:Lcom/opay/face/phoneface/model/Motion;

    .line 130
    .line 131
    new-instance v8, Lcom/opay/face/phoneface/model/Motion;

    .line 132
    .line 133
    const-string v5, "NOD_DOWN"

    .line 134
    .line 135
    const/16 v2, 0xc

    .line 136
    .line 137
    const/16 v4, 0x8

    .line 138
    .line 139
    invoke-direct {v8, v5, v2, v4}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 140
    .line 141
    .line 142
    sput-object v8, Lcom/opay/face/phoneface/model/Motion;->NOD_DOWN:Lcom/opay/face/phoneface/model/Motion;

    .line 143
    .line 144
    new-instance v2, Lcom/opay/face/phoneface/model/Motion;

    .line 145
    .line 146
    const-string v4, "FLASH"

    .line 147
    .line 148
    const/16 v5, 0xd

    .line 149
    .line 150
    move-object/from16 v16, v8

    .line 151
    .line 152
    const/16 v8, 0x9

    .line 153
    .line 154
    invoke-direct {v2, v4, v5, v8}, Lcom/opay/face/phoneface/model/Motion;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    sput-object v2, Lcom/opay/face/phoneface/model/Motion;->FLASH:Lcom/opay/face/phoneface/model/Motion;

    .line 158
    .line 159
    const/16 v4, 0xe

    .line 160
    .line 161
    new-array v4, v4, [Lcom/opay/face/phoneface/model/Motion;

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    aput-object v0, v4, v8

    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    aput-object v1, v4, v0

    .line 168
    .line 169
    const/4 v0, 0x2

    .line 170
    aput-object v3, v4, v0

    .line 171
    .line 172
    const/4 v0, 0x3

    .line 173
    aput-object v6, v4, v0

    .line 174
    .line 175
    const/4 v0, 0x4

    .line 176
    aput-object v9, v4, v0

    .line 177
    .line 178
    const/4 v0, 0x5

    .line 179
    aput-object v11, v4, v0

    .line 180
    .line 181
    const/4 v0, 0x6

    .line 182
    aput-object v12, v4, v0

    .line 183
    .line 184
    const/4 v0, 0x7

    .line 185
    aput-object v14, v4, v0

    .line 186
    .line 187
    const/16 v0, 0x8

    .line 188
    .line 189
    aput-object v7, v4, v0

    .line 190
    .line 191
    const/16 v0, 0x9

    .line 192
    .line 193
    aput-object v10, v4, v0

    .line 194
    .line 195
    const/16 v0, 0xa

    .line 196
    .line 197
    aput-object v13, v4, v0

    .line 198
    .line 199
    const/16 v0, 0xb

    .line 200
    .line 201
    aput-object v15, v4, v0

    .line 202
    .line 203
    const/16 v0, 0xc

    .line 204
    .line 205
    aput-object v16, v4, v0

    .line 206
    .line 207
    aput-object v2, v4, v5

    .line 208
    .line 209
    sput-object v4, Lcom/opay/face/phoneface/model/Motion;->$VALUES:[Lcom/opay/face/phoneface/model/Motion;

    .line 210
    .line 211
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/opay/face/phoneface/model/Motion;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/opay/face/phoneface/model/Motion;
    .locals 1

    .line 1
    const-class v0, Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/opay/face/phoneface/model/Motion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/opay/face/phoneface/model/Motion;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/model/Motion;->$VALUES:[Lcom/opay/face/phoneface/model/Motion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/opay/face/phoneface/model/Motion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/opay/face/phoneface/model/Motion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/model/Motion;->value:I

    .line 2
    .line 3
    return v0
.end method
