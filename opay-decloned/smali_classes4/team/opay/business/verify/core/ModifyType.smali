.class public final enum Lteam/opay/business/verify/core/ModifyType;
.super Ljava/lang/Enum;
.source "ModifyType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/business/verify/core/ModifyType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010!\u001a\u00020\"8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 \u00a8\u0006%"
    }
    d2 = {
        "Lteam/opay/business/verify/core/ModifyType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "LOGIN",
        "MODIFY_PAYMENT_PIN",
        "FORGET_PAYMENT_PIN",
        "MODIFY_PASSWORD",
        "FORGET_PASSWORD_NO_LOGIN",
        "FORGET_PASSWORD_LOGIN",
        "REGISTER",
        "TRADE",
        "BIND_EMAIL",
        "SET_PAYMENT_PIN",
        "MODIFY_MOBILE",
        "MODIFY_EMAIL",
        "RM_TRANSACTION_DECLINE",
        "FORGET_EMPLOYEE_PAYMENT_PIN",
        "CARD_RESET_PIN",
        "LOCK_CARD",
        "UNLOCK_CARD",
        "VIEW_CARD_NO",
        "CREATE_PAYOUT_ORDER",
        "CREATE_PAYOUT_ORDER_NO_REVIEW",
        "PAYOUT_ORDER_AUDIT",
        "PAYOUT_ORDER_RECHECK",
        "KA_RESET_PASSWORD",
        "KA_FORGET_PASSWORD_NO_LOGIN",
        "KA_SWITCH_BRANCH_LOGIN",
        "BIOMETRICS_LOGIN_MANAGE",
        "UPGRADE_S3_SELF_SUBMIT",
        "UPGRADE_S3_COMPLETE_SELF_SUBMIT",
        "SWITCH_MERCHANT_LOGIN",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "business-verify-core_release"
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

.field private static final synthetic $VALUES:[Lteam/opay/business/verify/core/ModifyType;

.field public static final enum BIND_EMAIL:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BindEmail"
    .end annotation
.end field

.field public static final enum BIOMETRICS_LOGIN_MANAGE:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "BIOMETRICS_LOGIN_MANAGE"
    .end annotation
.end field

.field public static final enum CARD_RESET_PIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OpayCardResetPIN"
    .end annotation
.end field

.field public static final enum CREATE_PAYOUT_ORDER:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createPayoutOrder"
    .end annotation
.end field

.field public static final enum CREATE_PAYOUT_ORDER_NO_REVIEW:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createPayoutOrderNoReview"
    .end annotation
.end field

.field public static final enum FORGET_EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetEmployeePaymentPin"
    .end annotation
.end field

.field public static final enum FORGET_PASSWORD_LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPasswordLogin"
    .end annotation
.end field

.field public static final enum FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPasswordNoLogin"
    .end annotation
.end field

.field public static final enum FORGET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ForgetPaymentPin"
    .end annotation
.end field

.field public static final enum KA_FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KA_ForgetPasswordNoLogin"
    .end annotation
.end field

.field public static final enum KA_RESET_PASSWORD:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KA_resetPassword"
    .end annotation
.end field

.field public static final enum KA_SWITCH_BRANCH_LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "KA_SWITCH_BRANCH_LOGIN"
    .end annotation
.end field

.field public static final enum LOCK_CARD:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OpayCardFreeze"
    .end annotation
.end field

.field public static final enum LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Login"
    .end annotation
.end field

.field public static final enum MODIFY_EMAIL:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MODIFY_EMAIL"
    .end annotation
.end field

.field public static final enum MODIFY_MOBILE:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MODIFY_MOBILE"
    .end annotation
.end field

.field public static final enum MODIFY_PASSWORD:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyPassword"
    .end annotation
.end field

.field public static final enum MODIFY_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ModifyPaymentPin"
    .end annotation
.end field

.field public static final enum PAYOUT_ORDER_AUDIT:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payoutOrderAudit"
    .end annotation
.end field

.field public static final enum PAYOUT_ORDER_RECHECK:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payoutOrderRecheck"
    .end annotation
.end field

.field public static final enum REGISTER:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Register"
    .end annotation
.end field

.field public static final enum RM_TRANSACTION_DECLINE:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RM_TRANSACTION_DECLINE"
    .end annotation
.end field

.field public static final enum SET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SetPaymentPin"
    .end annotation
.end field

.field public static final enum SWITCH_MERCHANT_LOGIN:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SWITCH_MERCHANT_LOGIN"
    .end annotation
.end field

.field public static final enum TRADE:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Trade"
    .end annotation
.end field

.field public static final enum UNLOCK_CARD:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OpayCardUnfreeze"
    .end annotation
.end field

.field public static final enum UPGRADE_S3_COMPLETE_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UPGRADE_S3_COMPLETE_SELF_SUBMIT"
    .end annotation
.end field

.field public static final enum UPGRADE_S3_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UPGRADE_S3_SELF_SUBMIT"
    .end annotation
.end field

.field public static final enum VIEW_CARD_NO:Lteam/opay/business/verify/core/ModifyType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OpayCardViewCardNo"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/business/verify/core/ModifyType;
    .locals 3

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/business/verify/core/ModifyType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->MODIFY_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->MODIFY_PASSWORD:Lteam/opay/business/verify/core/ModifyType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->FORGET_PASSWORD_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->REGISTER:Lteam/opay/business/verify/core/ModifyType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->TRADE:Lteam/opay/business/verify/core/ModifyType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->BIND_EMAIL:Lteam/opay/business/verify/core/ModifyType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->MODIFY_MOBILE:Lteam/opay/business/verify/core/ModifyType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->MODIFY_EMAIL:Lteam/opay/business/verify/core/ModifyType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->RM_TRANSACTION_DECLINE:Lteam/opay/business/verify/core/ModifyType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->FORGET_EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->CARD_RESET_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->LOCK_CARD:Lteam/opay/business/verify/core/ModifyType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->UNLOCK_CARD:Lteam/opay/business/verify/core/ModifyType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->VIEW_CARD_NO:Lteam/opay/business/verify/core/ModifyType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->CREATE_PAYOUT_ORDER:Lteam/opay/business/verify/core/ModifyType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->CREATE_PAYOUT_ORDER_NO_REVIEW:Lteam/opay/business/verify/core/ModifyType;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->PAYOUT_ORDER_AUDIT:Lteam/opay/business/verify/core/ModifyType;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->PAYOUT_ORDER_RECHECK:Lteam/opay/business/verify/core/ModifyType;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->KA_RESET_PASSWORD:Lteam/opay/business/verify/core/ModifyType;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->KA_FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->KA_SWITCH_BRANCH_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->BIOMETRICS_LOGIN_MANAGE:Lteam/opay/business/verify/core/ModifyType;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->UPGRADE_S3_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->UPGRADE_S3_COMPLETE_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    sget-object v1, Lteam/opay/business/verify/core/ModifyType;->SWITCH_MERCHANT_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 2
    .line 3
    const-string v1, "LOGIN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 12
    .line 13
    const-string v1, "MODIFY_PAYMENT_PIN"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->MODIFY_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 22
    .line 23
    const-string v1, "FORGET_PAYMENT_PIN"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->FORGET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 32
    .line 33
    const-string v1, "MODIFY_PASSWORD"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->MODIFY_PASSWORD:Lteam/opay/business/verify/core/ModifyType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 42
    .line 43
    const-string v1, "FORGET_PASSWORD_NO_LOGIN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 52
    .line 53
    const-string v1, "FORGET_PASSWORD_LOGIN"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->FORGET_PASSWORD_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 62
    .line 63
    const-string v1, "REGISTER"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->REGISTER:Lteam/opay/business/verify/core/ModifyType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 72
    .line 73
    const-string v1, "TRADE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->TRADE:Lteam/opay/business/verify/core/ModifyType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 82
    .line 83
    const-string v1, "BIND_EMAIL"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->BIND_EMAIL:Lteam/opay/business/verify/core/ModifyType;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 93
    .line 94
    const-string v1, "SET_PAYMENT_PIN"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->SET_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 104
    .line 105
    const-string v1, "MODIFY_MOBILE"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->MODIFY_MOBILE:Lteam/opay/business/verify/core/ModifyType;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 115
    .line 116
    const-string v1, "MODIFY_EMAIL"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->MODIFY_EMAIL:Lteam/opay/business/verify/core/ModifyType;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 126
    .line 127
    const-string v1, "RM_TRANSACTION_DECLINE"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->RM_TRANSACTION_DECLINE:Lteam/opay/business/verify/core/ModifyType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 137
    .line 138
    const-string v1, "FORGET_EMPLOYEE_PAYMENT_PIN"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->FORGET_EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 148
    .line 149
    const-string v1, "CARD_RESET_PIN"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->CARD_RESET_PIN:Lteam/opay/business/verify/core/ModifyType;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 159
    .line 160
    const-string v1, "LOCK_CARD"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->LOCK_CARD:Lteam/opay/business/verify/core/ModifyType;

    .line 168
    .line 169
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 170
    .line 171
    const-string v1, "UNLOCK_CARD"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->UNLOCK_CARD:Lteam/opay/business/verify/core/ModifyType;

    .line 179
    .line 180
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 181
    .line 182
    const-string v1, "VIEW_CARD_NO"

    .line 183
    .line 184
    const/16 v2, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->VIEW_CARD_NO:Lteam/opay/business/verify/core/ModifyType;

    .line 190
    .line 191
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 192
    .line 193
    const-string v1, "CREATE_PAYOUT_ORDER"

    .line 194
    .line 195
    const/16 v2, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->CREATE_PAYOUT_ORDER:Lteam/opay/business/verify/core/ModifyType;

    .line 201
    .line 202
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 203
    .line 204
    const-string v1, "CREATE_PAYOUT_ORDER_NO_REVIEW"

    .line 205
    .line 206
    const/16 v2, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->CREATE_PAYOUT_ORDER_NO_REVIEW:Lteam/opay/business/verify/core/ModifyType;

    .line 212
    .line 213
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 214
    .line 215
    const-string v1, "PAYOUT_ORDER_AUDIT"

    .line 216
    .line 217
    const/16 v2, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->PAYOUT_ORDER_AUDIT:Lteam/opay/business/verify/core/ModifyType;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 225
    .line 226
    const-string v1, "PAYOUT_ORDER_RECHECK"

    .line 227
    .line 228
    const/16 v2, 0x15

    .line 229
    .line 230
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->PAYOUT_ORDER_RECHECK:Lteam/opay/business/verify/core/ModifyType;

    .line 234
    .line 235
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 236
    .line 237
    const-string v1, "KA_RESET_PASSWORD"

    .line 238
    .line 239
    const/16 v2, 0x16

    .line 240
    .line 241
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->KA_RESET_PASSWORD:Lteam/opay/business/verify/core/ModifyType;

    .line 245
    .line 246
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 247
    .line 248
    const-string v1, "KA_FORGET_PASSWORD_NO_LOGIN"

    .line 249
    .line 250
    const/16 v2, 0x17

    .line 251
    .line 252
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->KA_FORGET_PASSWORD_NO_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 256
    .line 257
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 258
    .line 259
    const-string v1, "KA_SWITCH_BRANCH_LOGIN"

    .line 260
    .line 261
    const/16 v2, 0x18

    .line 262
    .line 263
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->KA_SWITCH_BRANCH_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 267
    .line 268
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 269
    .line 270
    const-string v1, "BIOMETRICS_LOGIN_MANAGE"

    .line 271
    .line 272
    const/16 v2, 0x19

    .line 273
    .line 274
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->BIOMETRICS_LOGIN_MANAGE:Lteam/opay/business/verify/core/ModifyType;

    .line 278
    .line 279
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 280
    .line 281
    const-string v1, "UPGRADE_S3_SELF_SUBMIT"

    .line 282
    .line 283
    const/16 v2, 0x1a

    .line 284
    .line 285
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->UPGRADE_S3_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;

    .line 289
    .line 290
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 291
    .line 292
    const-string v1, "UPGRADE_S3_COMPLETE_SELF_SUBMIT"

    .line 293
    .line 294
    const/16 v2, 0x1b

    .line 295
    .line 296
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->UPGRADE_S3_COMPLETE_SELF_SUBMIT:Lteam/opay/business/verify/core/ModifyType;

    .line 300
    .line 301
    new-instance v0, Lteam/opay/business/verify/core/ModifyType;

    .line 302
    .line 303
    const-string v1, "SWITCH_MERCHANT_LOGIN"

    .line 304
    .line 305
    const/16 v2, 0x1c

    .line 306
    .line 307
    invoke-direct {v0, v1, v2}, Lteam/opay/business/verify/core/ModifyType;-><init>(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->SWITCH_MERCHANT_LOGIN:Lteam/opay/business/verify/core/ModifyType;

    .line 311
    .line 312
    invoke-static {}, Lteam/opay/business/verify/core/ModifyType;->$values()[Lteam/opay/business/verify/core/ModifyType;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->$VALUES:[Lteam/opay/business/verify/core/ModifyType;

    .line 317
    .line 318
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    sput-object v0, Lteam/opay/business/verify/core/ModifyType;->$ENTRIES:Lwo5;

    .line 323
    .line 324
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
            "Lteam/opay/business/verify/core/ModifyType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/business/verify/core/ModifyType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/business/verify/core/ModifyType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/business/verify/core/ModifyType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/business/verify/core/ModifyType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/business/verify/core/ModifyType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/verify/core/ModifyType;->$VALUES:[Lteam/opay/business/verify/core/ModifyType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/business/verify/core/ModifyType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkt6;->h()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "toJson(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [C

    .line 16
    .line 17
    const/16 v2, 0x22

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    aput-char v2, v1, v3

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
