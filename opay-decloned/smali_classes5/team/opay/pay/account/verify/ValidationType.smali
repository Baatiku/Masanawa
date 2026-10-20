.class public final enum Lteam/opay/pay/account/verify/ValidationType;
.super Ljava/lang/Enum;
.source "Verify.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/account/verify/ValidationType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aj\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/ValidationType;",
        "Ljava/io/Serializable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OTP",
        "WHATSAPP",
        "EMAIL",
        "PASSWORD",
        "PAYMENT_PIN",
        "NAME",
        "GESTURE",
        "SECRET_PROTECT",
        "FACE",
        "MTN",
        "POPUP_NOTIFY",
        "POPUP_OUT_CALL",
        "ANSWER_QUESTION",
        "SECRET_QUESTION",
        "UNFRESSZE_FORGET_PASSORD",
        "UNFRESSZE_PAYMENT_PIN",
        "NIN",
        "BVN",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/account/verify/ValidationType;

.field public static final enum ANSWER_QUESTION:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "answerQuestion"
    .end annotation
.end field

.field public static final enum BVN:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvn"
    .end annotation
.end field

.field public static final enum EMAIL:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public static final enum FACE:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "face"
    .end annotation
.end field

.field public static final enum GESTURE:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gesture"
    .end annotation
.end field

.field public static final enum MTN:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mtn"
    .end annotation
.end field

.field public static final enum NAME:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public static final enum NIN:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nin"
    .end annotation
.end field

.field public static final enum OTP:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otp"
    .end annotation
.end field

.field public static final enum PASSWORD:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field public static final enum PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentPin"
    .end annotation
.end field

.field public static final enum POPUP_NOTIFY:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupNotify"
    .end annotation
.end field

.field public static final enum POPUP_OUT_CALL:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupOutCall"
    .end annotation
.end field

.field public static final enum SECRET_PROTECT:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secretProtect"
    .end annotation
.end field

.field public static final enum SECRET_QUESTION:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secretQuestion"
    .end annotation
.end field

.field public static final enum UNFRESSZE_FORGET_PASSORD:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unfresszeForgetPassword"
    .end annotation
.end field

.field public static final enum UNFRESSZE_PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unfresszeForgetPaymentPin"
    .end annotation
.end field

.field public static final enum WHATSAPP:Lteam/opay/pay/account/verify/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whatsApp"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/account/verify/ValidationType;
    .locals 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/pay/account/verify/ValidationType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->WHATSAPP:Lteam/opay/pay/account/verify/ValidationType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->EMAIL:Lteam/opay/pay/account/verify/ValidationType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->PASSWORD:Lteam/opay/pay/account/verify/ValidationType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->NAME:Lteam/opay/pay/account/verify/ValidationType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->GESTURE:Lteam/opay/pay/account/verify/ValidationType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->SECRET_PROTECT:Lteam/opay/pay/account/verify/ValidationType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->POPUP_NOTIFY:Lteam/opay/pay/account/verify/ValidationType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->POPUP_OUT_CALL:Lteam/opay/pay/account/verify/ValidationType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->ANSWER_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->SECRET_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->UNFRESSZE_FORGET_PASSORD:Lteam/opay/pay/account/verify/ValidationType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->UNFRESSZE_PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->NIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/pay/account/verify/ValidationType;->BVN:Lteam/opay/pay/account/verify/ValidationType;

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
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 2
    .line 3
    const-string v1, "OTP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->OTP:Lteam/opay/pay/account/verify/ValidationType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 12
    .line 13
    const-string v1, "WHATSAPP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->WHATSAPP:Lteam/opay/pay/account/verify/ValidationType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 22
    .line 23
    const-string v1, "EMAIL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->EMAIL:Lteam/opay/pay/account/verify/ValidationType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 32
    .line 33
    const-string v1, "PASSWORD"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->PASSWORD:Lteam/opay/pay/account/verify/ValidationType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 42
    .line 43
    const-string v1, "PAYMENT_PIN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 52
    .line 53
    const-string v1, "NAME"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->NAME:Lteam/opay/pay/account/verify/ValidationType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 62
    .line 63
    const-string v1, "GESTURE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->GESTURE:Lteam/opay/pay/account/verify/ValidationType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 72
    .line 73
    const-string v1, "SECRET_PROTECT"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->SECRET_PROTECT:Lteam/opay/pay/account/verify/ValidationType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 82
    .line 83
    const-string v1, "FACE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->FACE:Lteam/opay/pay/account/verify/ValidationType;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 93
    .line 94
    const-string v1, "MTN"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->MTN:Lteam/opay/pay/account/verify/ValidationType;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 104
    .line 105
    const-string v1, "POPUP_NOTIFY"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->POPUP_NOTIFY:Lteam/opay/pay/account/verify/ValidationType;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 115
    .line 116
    const-string v1, "POPUP_OUT_CALL"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->POPUP_OUT_CALL:Lteam/opay/pay/account/verify/ValidationType;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 126
    .line 127
    const-string v1, "ANSWER_QUESTION"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->ANSWER_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 137
    .line 138
    const-string v1, "SECRET_QUESTION"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->SECRET_QUESTION:Lteam/opay/pay/account/verify/ValidationType;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 148
    .line 149
    const-string v1, "UNFRESSZE_FORGET_PASSORD"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->UNFRESSZE_FORGET_PASSORD:Lteam/opay/pay/account/verify/ValidationType;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 159
    .line 160
    const-string v1, "UNFRESSZE_PAYMENT_PIN"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->UNFRESSZE_PAYMENT_PIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 168
    .line 169
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 170
    .line 171
    const-string v1, "NIN"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->NIN:Lteam/opay/pay/account/verify/ValidationType;

    .line 179
    .line 180
    new-instance v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 181
    .line 182
    const-string v1, "BVN"

    .line 183
    .line 184
    const/16 v2, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ValidationType;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->BVN:Lteam/opay/pay/account/verify/ValidationType;

    .line 190
    .line 191
    invoke-static {}, Lteam/opay/pay/account/verify/ValidationType;->$values()[Lteam/opay/pay/account/verify/ValidationType;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->$VALUES:[Lteam/opay/pay/account/verify/ValidationType;

    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lteam/opay/pay/account/verify/ValidationType;->$ENTRIES:Lwo5;

    .line 202
    .line 203
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
            "Lteam/opay/pay/account/verify/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/account/verify/ValidationType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/account/verify/ValidationType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/account/verify/ValidationType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/account/verify/ValidationType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ValidationType;->$VALUES:[Lteam/opay/pay/account/verify/ValidationType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/account/verify/ValidationType;

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
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/core/api/GraphQL;->b(Ljava/lang/Enum;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
