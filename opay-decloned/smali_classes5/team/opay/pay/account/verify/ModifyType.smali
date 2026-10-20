.class public final enum Lteam/opay/pay/account/verify/ModifyType;
.super Ljava/lang/Enum;
.source "Verify.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/account/verify/ModifyType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/pay/account/verify/ModifyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u001f\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001$B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/pay/account/verify/ModifyType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SET_PAYMENT_PIN",
        "MODIFY_PAYMENT_PIN",
        "FORGET_PAYMENT_PIN",
        "MODIFY_PASSWORD",
        "FORGET_PASSWORD",
        "LOGIN",
        "REGISTER",
        "FAST_REGISTER",
        "MODIFY_EMAIL",
        "BIND_EMAIL",
        "RESET_PATTERN_PASSWORD",
        "KYC_COMPLIANCE",
        "UID_RETRIEVE_ID",
        "ACCOUNT_UNFREEZE",
        "MODIFY_MOBILE",
        "TRADE",
        "LOG_OFF",
        "TOPUP_WITH_BANK_CARD",
        "TOPUP_WITH_NEW_BANK_CARD",
        "SECRET_PROTECT_QUESTION",
        "VIEWCARD",
        "USER_KYC_2_UPGRADE_3",
        "MINORS_GUARDIAN_VERIFY",
        "BIOMETRICS_LOGIN_MANAGE",
        "BIOMETRICS_PAYPIN_MANAGE",
        "UNBLOCKCARD",
        "ACCOUNT_LIMITS_GET_ID_INFO",
        "GIFTCARD_SECRET_KEY_SHOW",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "Companion",
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

.field private static final synthetic $VALUES:[Lteam/opay/pay/account/verify/ModifyType;

.field public static final enum ACCOUNT_LIMITS_GET_ID_INFO:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ACCOUNT_LIMITS_GET_ID_INFO"
    .end annotation
.end field

.field public static final enum ACCOUNT_UNFREEZE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ACCOUNT_UNFREEZE"
    .end annotation
.end field

.field public static final enum BIND_EMAIL:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BindEmail"
    .end annotation
.end field

.field public static final enum BIOMETRICS_LOGIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BIOMETRICS_LOGIN_MANAGE"
    .end annotation
.end field

.field public static final enum BIOMETRICS_PAYPIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BIOMETRICS_PAYPIN_MANAGE"
    .end annotation
.end field

.field public static final Companion:Lteam/opay/pay/account/verify/ModifyType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum FAST_REGISTER:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FastRegister"
    .end annotation
.end field

.field public static final enum FORGET_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPassword"
    .end annotation
.end field

.field public static final enum FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPaymentPin"
    .end annotation
.end field

.field public static final enum GIFTCARD_SECRET_KEY_SHOW:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GIFTCARD_SECRET_KEY_SHOW"
    .end annotation
.end field

.field public static final enum KYC_COMPLIANCE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KYC_COMPLIANCE"
    .end annotation
.end field

.field public static final enum LOGIN:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Login"
    .end annotation
.end field

.field public static final enum LOG_OFF:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LogOff"
    .end annotation
.end field

.field public static final enum MINORS_GUARDIAN_VERIFY:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MINORS_GUARDIAN_VERIFY"
    .end annotation
.end field

.field public static final enum MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyEmail"
    .end annotation
.end field

.field public static final enum MODIFY_MOBILE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyMobile"
    .end annotation
.end field

.field public static final enum MODIFY_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyPassword"
    .end annotation
.end field

.field public static final enum MODIFY_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyPaymentPin"
    .end annotation
.end field

.field public static final enum REGISTER:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Register"
    .end annotation
.end field

.field public static final enum RESET_PATTERN_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResetPatternPassword"
    .end annotation
.end field

.field public static final enum SECRET_PROTECT_QUESTION:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SECRET_PROTECT_QUESTION"
    .end annotation
.end field

.field public static final enum SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SetPaymentPin"
    .end annotation
.end field

.field public static final enum TOPUP_WITH_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TOPUP_WITH_BANK_CARD"
    .end annotation
.end field

.field public static final enum TOPUP_WITH_NEW_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TOPUP_WITH_NEW_BANK_CARD"
    .end annotation
.end field

.field public static final enum TRADE:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Trade"
    .end annotation
.end field

.field public static final enum UID_RETRIEVE_ID:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UID_RETRIEVE_ID"
    .end annotation
.end field

.field public static final enum UNBLOCKCARD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNBLOCKCARD"
    .end annotation
.end field

.field public static final enum USER_KYC_2_UPGRADE_3:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "USER_KYC_2_UPGRADE_3"
    .end annotation
.end field

.field public static final enum VIEWCARD:Lteam/opay/pay/account/verify/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VIEWCARD"
    .end annotation
.end field

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lteam/opay/pay/account/verify/ModifyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/pay/account/verify/ModifyType;
    .locals 3

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/pay/account/verify/ModifyType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->LOGIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->REGISTER:Lteam/opay/pay/account/verify/ModifyType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->FAST_REGISTER:Lteam/opay/pay/account/verify/ModifyType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->BIND_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->RESET_PATTERN_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->KYC_COMPLIANCE:Lteam/opay/pay/account/verify/ModifyType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->UID_RETRIEVE_ID:Lteam/opay/pay/account/verify/ModifyType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->ACCOUNT_UNFREEZE:Lteam/opay/pay/account/verify/ModifyType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_MOBILE:Lteam/opay/pay/account/verify/ModifyType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->TRADE:Lteam/opay/pay/account/verify/ModifyType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->LOG_OFF:Lteam/opay/pay/account/verify/ModifyType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_NEW_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->SECRET_PROTECT_QUESTION:Lteam/opay/pay/account/verify/ModifyType;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->VIEWCARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->USER_KYC_2_UPGRADE_3:Lteam/opay/pay/account/verify/ModifyType;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->MINORS_GUARDIAN_VERIFY:Lteam/opay/pay/account/verify/ModifyType;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->BIOMETRICS_LOGIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->BIOMETRICS_PAYPIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->UNBLOCKCARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->ACCOUNT_LIMITS_GET_ID_INFO:Lteam/opay/pay/account/verify/ModifyType;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lteam/opay/pay/account/verify/ModifyType;->GIFTCARD_SECRET_KEY_SHOW:Lteam/opay/pay/account/verify/ModifyType;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 2
    .line 3
    const-string v1, "SET_PAYMENT_PIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 12
    .line 13
    const-string v1, "MODIFY_PAYMENT_PIN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 22
    .line 23
    const-string v1, "FORGET_PAYMENT_PIN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 32
    .line 33
    const-string v1, "MODIFY_PASSWORD"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 42
    .line 43
    const-string v1, "FORGET_PASSWORD"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->FORGET_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 52
    .line 53
    const-string v1, "LOGIN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->LOGIN:Lteam/opay/pay/account/verify/ModifyType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 62
    .line 63
    const-string v1, "REGISTER"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->REGISTER:Lteam/opay/pay/account/verify/ModifyType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 72
    .line 73
    const-string v1, "FAST_REGISTER"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->FAST_REGISTER:Lteam/opay/pay/account/verify/ModifyType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 82
    .line 83
    const-string v1, "MODIFY_EMAIL"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 93
    .line 94
    const-string v1, "BIND_EMAIL"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->BIND_EMAIL:Lteam/opay/pay/account/verify/ModifyType;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 104
    .line 105
    const-string v1, "RESET_PATTERN_PASSWORD"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->RESET_PATTERN_PASSWORD:Lteam/opay/pay/account/verify/ModifyType;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 115
    .line 116
    const-string v1, "KYC_COMPLIANCE"

    .line 117
    .line 118
    const/16 v3, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->KYC_COMPLIANCE:Lteam/opay/pay/account/verify/ModifyType;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 126
    .line 127
    const-string v1, "UID_RETRIEVE_ID"

    .line 128
    .line 129
    const/16 v3, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->UID_RETRIEVE_ID:Lteam/opay/pay/account/verify/ModifyType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 137
    .line 138
    const-string v1, "ACCOUNT_UNFREEZE"

    .line 139
    .line 140
    const/16 v3, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->ACCOUNT_UNFREEZE:Lteam/opay/pay/account/verify/ModifyType;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 148
    .line 149
    const-string v1, "MODIFY_MOBILE"

    .line 150
    .line 151
    const/16 v3, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->MODIFY_MOBILE:Lteam/opay/pay/account/verify/ModifyType;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 159
    .line 160
    const-string v1, "TRADE"

    .line 161
    .line 162
    const/16 v3, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->TRADE:Lteam/opay/pay/account/verify/ModifyType;

    .line 168
    .line 169
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 170
    .line 171
    const-string v1, "LOG_OFF"

    .line 172
    .line 173
    const/16 v3, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v3}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->LOG_OFF:Lteam/opay/pay/account/verify/ModifyType;

    .line 179
    .line 180
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 181
    .line 182
    const-string v1, "TOPUP_WITH_BANK_CARD"

    .line 183
    .line 184
    const/16 v4, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 190
    .line 191
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 192
    .line 193
    const-string v1, "TOPUP_WITH_NEW_BANK_CARD"

    .line 194
    .line 195
    const/16 v4, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->TOPUP_WITH_NEW_BANK_CARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 201
    .line 202
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 203
    .line 204
    const-string v1, "SECRET_PROTECT_QUESTION"

    .line 205
    .line 206
    const/16 v4, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->SECRET_PROTECT_QUESTION:Lteam/opay/pay/account/verify/ModifyType;

    .line 212
    .line 213
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 214
    .line 215
    const-string v1, "VIEWCARD"

    .line 216
    .line 217
    const/16 v4, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->VIEWCARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 225
    .line 226
    const-string v1, "USER_KYC_2_UPGRADE_3"

    .line 227
    .line 228
    const/16 v4, 0x15

    .line 229
    .line 230
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->USER_KYC_2_UPGRADE_3:Lteam/opay/pay/account/verify/ModifyType;

    .line 234
    .line 235
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 236
    .line 237
    const-string v1, "MINORS_GUARDIAN_VERIFY"

    .line 238
    .line 239
    const/16 v4, 0x16

    .line 240
    .line 241
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->MINORS_GUARDIAN_VERIFY:Lteam/opay/pay/account/verify/ModifyType;

    .line 245
    .line 246
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 247
    .line 248
    const-string v1, "BIOMETRICS_LOGIN_MANAGE"

    .line 249
    .line 250
    const/16 v4, 0x17

    .line 251
    .line 252
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->BIOMETRICS_LOGIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;

    .line 256
    .line 257
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 258
    .line 259
    const-string v1, "BIOMETRICS_PAYPIN_MANAGE"

    .line 260
    .line 261
    const/16 v4, 0x18

    .line 262
    .line 263
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->BIOMETRICS_PAYPIN_MANAGE:Lteam/opay/pay/account/verify/ModifyType;

    .line 267
    .line 268
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 269
    .line 270
    const-string v1, "UNBLOCKCARD"

    .line 271
    .line 272
    const/16 v4, 0x19

    .line 273
    .line 274
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->UNBLOCKCARD:Lteam/opay/pay/account/verify/ModifyType;

    .line 278
    .line 279
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 280
    .line 281
    const-string v1, "ACCOUNT_LIMITS_GET_ID_INFO"

    .line 282
    .line 283
    const/16 v4, 0x1a

    .line 284
    .line 285
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->ACCOUNT_LIMITS_GET_ID_INFO:Lteam/opay/pay/account/verify/ModifyType;

    .line 289
    .line 290
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 291
    .line 292
    const-string v1, "GIFTCARD_SECRET_KEY_SHOW"

    .line 293
    .line 294
    const/16 v4, 0x1b

    .line 295
    .line 296
    invoke-direct {v0, v1, v4}, Lteam/opay/pay/account/verify/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->GIFTCARD_SECRET_KEY_SHOW:Lteam/opay/pay/account/verify/ModifyType;

    .line 300
    .line 301
    invoke-static {}, Lteam/opay/pay/account/verify/ModifyType;->$values()[Lteam/opay/pay/account/verify/ModifyType;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->$VALUES:[Lteam/opay/pay/account/verify/ModifyType;

    .line 306
    .line 307
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->$ENTRIES:Lwo5;

    .line 312
    .line 313
    new-instance v0, Lteam/opay/pay/account/verify/ModifyType$Companion;

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    invoke-direct {v0, v1}, Lteam/opay/pay/account/verify/ModifyType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 317
    .line 318
    .line 319
    sput-object v0, Lteam/opay/pay/account/verify/ModifyType;->Companion:Lteam/opay/pay/account/verify/ModifyType$Companion;

    .line 320
    .line 321
    invoke-static {}, Lteam/opay/pay/account/verify/ModifyType;->getEntries()Lwo5;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-static {v1}, Lkotlin/collections/e;->e(I)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-static {v1, v3}, Lkotlin/ranges/c;->c(II)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 338
    .line 339
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    move-object v3, v1

    .line 357
    check-cast v3, Lteam/opay/pay/account/verify/ModifyType;

    .line 358
    .line 359
    sget-object v4, Lteam/opay/pay/account/verify/ModifyType;->Companion:Lteam/opay/pay/account/verify/ModifyType$Companion;

    .line 360
    .line 361
    invoke-static {v4, v3}, Lteam/opay/pay/account/verify/ModifyType$Companion;->a(Lteam/opay/pay/account/verify/ModifyType$Companion;Lteam/opay/pay/account/verify/ModifyType;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_0
    sput-object v2, Lteam/opay/pay/account/verify/ModifyType;->valueMap:Ljava/util/Map;

    .line 370
    .line 371
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

.method public static final synthetic access$getValueMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->valueMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/pay/account/verify/ModifyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/pay/account/verify/ModifyType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/pay/account/verify/ModifyType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/pay/account/verify/ModifyType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/pay/account/verify/ModifyType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/account/verify/ModifyType;->$VALUES:[Lteam/opay/pay/account/verify/ModifyType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/pay/account/verify/ModifyType;

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
