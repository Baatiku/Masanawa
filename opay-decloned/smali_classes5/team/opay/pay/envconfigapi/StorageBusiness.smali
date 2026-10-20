.class public final enum Lteam/opay/pay/envconfigapi/StorageBusiness;
.super Ljava/lang/Enum;
.source "StorageBusiness.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/envconfigapi/StorageBusiness;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/envconfigapi/StorageBusiness;",
        "",
        "business",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getBusiness",
        "()Ljava/lang/String;",
        "SETTINGS",
        "OFOOD",
        "ORIDE",
        "OKASH",
        "OBUS",
        "OTRIKE",
        "OFRAMEWORK",
        "OQRCODE",
        "OSCANPAY",
        "OPOS",
        "OMessage",
        "OGROUPBUY",
        "OCHAT",
        "developeroptions_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OBUS:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OCHAT:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OFOOD:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OFRAMEWORK:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OGROUPBUY:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OKASH:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OMessage:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OPOS:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OQRCODE:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum ORIDE:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OSCANPAY:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum OTRIKE:Lteam/opay/pay/envconfigapi/StorageBusiness;

.field public static final enum SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;


# instance fields
.field private final business:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "settings"

    .line 5
    .line 6
    const-string v3, "SETTINGS"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/pay/envconfigapi/StorageBusiness;->SETTINGS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 12
    .line 13
    new-instance v2, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "ofood"

    .line 17
    .line 18
    const-string v5, "OFOOD"

    .line 19
    .line 20
    invoke-direct {v2, v5, v3, v4}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v2, Lteam/opay/pay/envconfigapi/StorageBusiness;->OFOOD:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 24
    .line 25
    new-instance v4, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const-string v6, "oride"

    .line 29
    .line 30
    const-string v7, "ORIDE"

    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v4, Lteam/opay/pay/envconfigapi/StorageBusiness;->ORIDE:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 36
    .line 37
    new-instance v6, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const-string v8, "okash"

    .line 41
    .line 42
    const-string v9, "OKASH"

    .line 43
    .line 44
    invoke-direct {v6, v9, v7, v8}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v6, Lteam/opay/pay/envconfigapi/StorageBusiness;->OKASH:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 48
    .line 49
    new-instance v8, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const-string v10, "obus"

    .line 53
    .line 54
    const-string v11, "OBUS"

    .line 55
    .line 56
    invoke-direct {v8, v11, v9, v10}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v8, Lteam/opay/pay/envconfigapi/StorageBusiness;->OBUS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 60
    .line 61
    new-instance v10, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 62
    .line 63
    const/4 v11, 0x5

    .line 64
    const-string v12, "otrike"

    .line 65
    .line 66
    const-string v13, "OTRIKE"

    .line 67
    .line 68
    invoke-direct {v10, v13, v11, v12}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lteam/opay/pay/envconfigapi/StorageBusiness;->OTRIKE:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 72
    .line 73
    new-instance v12, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    const-string v14, "oframework"

    .line 77
    .line 78
    const-string v15, "OFRAMEWORK"

    .line 79
    .line 80
    invoke-direct {v12, v15, v13, v14}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v12, Lteam/opay/pay/envconfigapi/StorageBusiness;->OFRAMEWORK:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 84
    .line 85
    new-instance v14, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 86
    .line 87
    const/4 v15, 0x7

    .line 88
    const-string v13, "oqrcode"

    .line 89
    .line 90
    const-string v11, "OQRCODE"

    .line 91
    .line 92
    invoke-direct {v14, v11, v15, v13}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v14, Lteam/opay/pay/envconfigapi/StorageBusiness;->OQRCODE:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 96
    .line 97
    new-instance v11, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 98
    .line 99
    const/16 v13, 0x8

    .line 100
    .line 101
    const-string v15, "oscanpay"

    .line 102
    .line 103
    const-string v9, "OSCANPAY"

    .line 104
    .line 105
    invoke-direct {v11, v9, v13, v15}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v11, Lteam/opay/pay/envconfigapi/StorageBusiness;->OSCANPAY:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 109
    .line 110
    new-instance v9, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 111
    .line 112
    const/16 v15, 0x9

    .line 113
    .line 114
    const-string v13, "opos"

    .line 115
    .line 116
    const-string v7, "OPOS"

    .line 117
    .line 118
    invoke-direct {v9, v7, v15, v13}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v9, Lteam/opay/pay/envconfigapi/StorageBusiness;->OPOS:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 122
    .line 123
    new-instance v7, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 124
    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    const-string v15, "omessage"

    .line 128
    .line 129
    const-string v5, "OMessage"

    .line 130
    .line 131
    invoke-direct {v7, v5, v13, v15}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v7, Lteam/opay/pay/envconfigapi/StorageBusiness;->OMessage:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 135
    .line 136
    new-instance v5, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 137
    .line 138
    const/16 v15, 0xb

    .line 139
    .line 140
    const-string v13, "ogroupBuy"

    .line 141
    .line 142
    const-string v3, "OGROUPBUY"

    .line 143
    .line 144
    invoke-direct {v5, v3, v15, v13}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v5, Lteam/opay/pay/envconfigapi/StorageBusiness;->OGROUPBUY:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 148
    .line 149
    new-instance v3, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 150
    .line 151
    const/16 v13, 0xc

    .line 152
    .line 153
    const-string v15, "ochat"

    .line 154
    .line 155
    const-string v1, "OCHAT"

    .line 156
    .line 157
    invoke-direct {v3, v1, v13, v15}, Lteam/opay/pay/envconfigapi/StorageBusiness;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v3, Lteam/opay/pay/envconfigapi/StorageBusiness;->OCHAT:Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 161
    .line 162
    const/16 v1, 0xd

    .line 163
    .line 164
    new-array v1, v1, [Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 165
    .line 166
    const/4 v15, 0x0

    .line 167
    aput-object v0, v1, v15

    .line 168
    .line 169
    const/4 v0, 0x1

    .line 170
    aput-object v2, v1, v0

    .line 171
    .line 172
    const/4 v0, 0x2

    .line 173
    aput-object v4, v1, v0

    .line 174
    .line 175
    const/4 v0, 0x3

    .line 176
    aput-object v6, v1, v0

    .line 177
    .line 178
    const/4 v0, 0x4

    .line 179
    aput-object v8, v1, v0

    .line 180
    .line 181
    const/4 v0, 0x5

    .line 182
    aput-object v10, v1, v0

    .line 183
    .line 184
    const/4 v0, 0x6

    .line 185
    aput-object v12, v1, v0

    .line 186
    .line 187
    const/4 v0, 0x7

    .line 188
    aput-object v14, v1, v0

    .line 189
    .line 190
    const/16 v0, 0x8

    .line 191
    .line 192
    aput-object v11, v1, v0

    .line 193
    .line 194
    const/16 v0, 0x9

    .line 195
    .line 196
    aput-object v9, v1, v0

    .line 197
    .line 198
    const/16 v0, 0xa

    .line 199
    .line 200
    aput-object v7, v1, v0

    .line 201
    .line 202
    const/16 v0, 0xb

    .line 203
    .line 204
    aput-object v5, v1, v0

    .line 205
    .line 206
    aput-object v3, v1, v13

    .line 207
    .line 208
    sput-object v1, Lteam/opay/pay/envconfigapi/StorageBusiness;->$VALUES:[Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 209
    .line 210
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
    iput-object p3, p0, Lteam/opay/pay/envconfigapi/StorageBusiness;->business:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/envconfigapi/StorageBusiness;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/envconfigapi/StorageBusiness;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/StorageBusiness;->$VALUES:[Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lteam/opay/pay/envconfigapi/StorageBusiness;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/envconfigapi/StorageBusiness;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getBusiness()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/envconfigapi/StorageBusiness;->business:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
