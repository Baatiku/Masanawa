.class public final enum Lteam/opay/pay/cashier/OrderStatus;
.super Ljava/lang/Enum;
.source "Order.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/cashier/OrderStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0019\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lteam/opay/pay/cashier/OrderStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NOT_SUPPORTED",
        "SUCCEEDED",
        "FAILED",
        "INPUT_OTP",
        "INPUT_PIN",
        "INPUT_PHONE",
        "EXT3D_SECURE",
        "USER_ACTION_REQUIRED",
        "POLL_STATUS",
        "CARD_PENDING",
        "TOPUP_PENDING_FAILED",
        "PENDING",
        "KYC_UPGRADE",
        "KYC_RECEIVER_EXCEEDED",
        "SUBMITTED",
        "WITHHOLD",
        "STATUS_RETRY_LIMIT",
        "REAL_NAME_INVALID",
        "CARD_NOT_ENOUGH_BALANCE",
        "PASS_WORD_ERROR",
        "FINGER_ERROR",
        "NO_PASSWORD",
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


# static fields
.field private static final synthetic $ENTRIES:Lwo5;

.field private static final synthetic $VALUES:[Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum CARD_NOT_ENOUGH_BALANCE:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum CARD_PENDING:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum EXT3D_SECURE:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum FAILED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum FINGER_ERROR:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum INPUT_OTP:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum INPUT_PHONE:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum INPUT_PIN:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum KYC_RECEIVER_EXCEEDED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum KYC_UPGRADE:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum NOT_SUPPORTED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum NO_PASSWORD:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum PASS_WORD_ERROR:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum PENDING:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum POLL_STATUS:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum REAL_NAME_INVALID:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum STATUS_RETRY_LIMIT:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum SUBMITTED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum SUCCEEDED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum TOPUP_PENDING_FAILED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum USER_ACTION_REQUIRED:Lteam/opay/pay/cashier/OrderStatus;

.field public static final enum WITHHOLD:Lteam/opay/pay/cashier/OrderStatus;


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/cashier/OrderStatus;
    .locals 3

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/pay/cashier/OrderStatus;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->NOT_SUPPORTED:Lteam/opay/pay/cashier/OrderStatus;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->SUCCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->INPUT_OTP:Lteam/opay/pay/cashier/OrderStatus;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->INPUT_PIN:Lteam/opay/pay/cashier/OrderStatus;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->INPUT_PHONE:Lteam/opay/pay/cashier/OrderStatus;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->EXT3D_SECURE:Lteam/opay/pay/cashier/OrderStatus;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->USER_ACTION_REQUIRED:Lteam/opay/pay/cashier/OrderStatus;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->POLL_STATUS:Lteam/opay/pay/cashier/OrderStatus;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->CARD_PENDING:Lteam/opay/pay/cashier/OrderStatus;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->TOPUP_PENDING_FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->PENDING:Lteam/opay/pay/cashier/OrderStatus;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->KYC_UPGRADE:Lteam/opay/pay/cashier/OrderStatus;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->KYC_RECEIVER_EXCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->SUBMITTED:Lteam/opay/pay/cashier/OrderStatus;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->WITHHOLD:Lteam/opay/pay/cashier/OrderStatus;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->STATUS_RETRY_LIMIT:Lteam/opay/pay/cashier/OrderStatus;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->REAL_NAME_INVALID:Lteam/opay/pay/cashier/OrderStatus;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->CARD_NOT_ENOUGH_BALANCE:Lteam/opay/pay/cashier/OrderStatus;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->PASS_WORD_ERROR:Lteam/opay/pay/cashier/OrderStatus;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->FINGER_ERROR:Lteam/opay/pay/cashier/OrderStatus;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lteam/opay/pay/cashier/OrderStatus;->NO_PASSWORD:Lteam/opay/pay/cashier/OrderStatus;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 2
    .line 3
    const-string v1, "NOT_SUPPORTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->NOT_SUPPORTED:Lteam/opay/pay/cashier/OrderStatus;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 12
    .line 13
    const-string v1, "SUCCEEDED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->SUCCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 22
    .line 23
    const-string v1, "FAILED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 32
    .line 33
    const-string v1, "INPUT_OTP"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->INPUT_OTP:Lteam/opay/pay/cashier/OrderStatus;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 42
    .line 43
    const-string v1, "INPUT_PIN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->INPUT_PIN:Lteam/opay/pay/cashier/OrderStatus;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 52
    .line 53
    const-string v1, "INPUT_PHONE"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->INPUT_PHONE:Lteam/opay/pay/cashier/OrderStatus;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 62
    .line 63
    const-string v1, "EXT3D_SECURE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->EXT3D_SECURE:Lteam/opay/pay/cashier/OrderStatus;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 72
    .line 73
    const-string v1, "USER_ACTION_REQUIRED"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->USER_ACTION_REQUIRED:Lteam/opay/pay/cashier/OrderStatus;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 82
    .line 83
    const-string v1, "POLL_STATUS"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->POLL_STATUS:Lteam/opay/pay/cashier/OrderStatus;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 93
    .line 94
    const-string v1, "CARD_PENDING"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->CARD_PENDING:Lteam/opay/pay/cashier/OrderStatus;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 104
    .line 105
    const-string v1, "TOPUP_PENDING_FAILED"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->TOPUP_PENDING_FAILED:Lteam/opay/pay/cashier/OrderStatus;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 115
    .line 116
    const-string v1, "PENDING"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->PENDING:Lteam/opay/pay/cashier/OrderStatus;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 126
    .line 127
    const-string v1, "KYC_UPGRADE"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->KYC_UPGRADE:Lteam/opay/pay/cashier/OrderStatus;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 137
    .line 138
    const-string v1, "KYC_RECEIVER_EXCEEDED"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->KYC_RECEIVER_EXCEEDED:Lteam/opay/pay/cashier/OrderStatus;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 148
    .line 149
    const-string v1, "SUBMITTED"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->SUBMITTED:Lteam/opay/pay/cashier/OrderStatus;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 159
    .line 160
    const-string v1, "WITHHOLD"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->WITHHOLD:Lteam/opay/pay/cashier/OrderStatus;

    .line 168
    .line 169
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 170
    .line 171
    const-string v1, "STATUS_RETRY_LIMIT"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->STATUS_RETRY_LIMIT:Lteam/opay/pay/cashier/OrderStatus;

    .line 179
    .line 180
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 181
    .line 182
    const-string v1, "REAL_NAME_INVALID"

    .line 183
    .line 184
    const/16 v2, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->REAL_NAME_INVALID:Lteam/opay/pay/cashier/OrderStatus;

    .line 190
    .line 191
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 192
    .line 193
    const-string v1, "CARD_NOT_ENOUGH_BALANCE"

    .line 194
    .line 195
    const/16 v2, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->CARD_NOT_ENOUGH_BALANCE:Lteam/opay/pay/cashier/OrderStatus;

    .line 201
    .line 202
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 203
    .line 204
    const-string v1, "PASS_WORD_ERROR"

    .line 205
    .line 206
    const/16 v2, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->PASS_WORD_ERROR:Lteam/opay/pay/cashier/OrderStatus;

    .line 212
    .line 213
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 214
    .line 215
    const-string v1, "FINGER_ERROR"

    .line 216
    .line 217
    const/16 v2, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->FINGER_ERROR:Lteam/opay/pay/cashier/OrderStatus;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 225
    .line 226
    const-string v1, "NO_PASSWORD"

    .line 227
    .line 228
    const/16 v2, 0x15

    .line 229
    .line 230
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/cashier/OrderStatus;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->NO_PASSWORD:Lteam/opay/pay/cashier/OrderStatus;

    .line 234
    .line 235
    invoke-static {}, Lteam/opay/pay/cashier/OrderStatus;->$values()[Lteam/opay/pay/cashier/OrderStatus;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->$VALUES:[Lteam/opay/pay/cashier/OrderStatus;

    .line 240
    .line 241
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sput-object v0, Lteam/opay/pay/cashier/OrderStatus;->$ENTRIES:Lwo5;

    .line 246
    .line 247
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/cashier/OrderStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/OrderStatus;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/cashier/OrderStatus;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/cashier/OrderStatus;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/cashier/OrderStatus;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/cashier/OrderStatus;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/OrderStatus;->$VALUES:[Lteam/opay/pay/cashier/OrderStatus;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/cashier/OrderStatus;

    .line 8
    .line 9
    return-object v0
.end method
