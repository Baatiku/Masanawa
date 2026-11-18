.class public final enum Lteam/opay/business/verify/core/ValidationType;
.super Ljava/lang/Enum;
.source "ValidationType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/business/verify/core/ValidationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001f\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\"\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!\u00a8\u0006&"
    }
    d2 = {
        "Lteam/opay/business/verify/core/ValidationType;",
        "",
        "icon",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getIcon",
        "()I",
        "OTP",
        "WHATSAPP",
        "EMAIL",
        "PASSWORD",
        "PAYMENT_PIN",
        "NAME",
        "GESTURE",
        "SECRET_PROTECT",
        "BVN",
        "NIN",
        "FACE",
        "POPUP_NOTIFY",
        "POPUP_OUT_CALL",
        "ANSWER_QUESTION",
        "SECRET_QUESTION",
        "UNFRESSZE_FORGET_PASSORD",
        "UNFRESSZE_PAYMENT_PIN",
        "NEW_VERSION_PASSWORD",
        "CARD_PIN",
        "EMPLOYEE_MOBILE_OTP",
        "EMPLOYEE_EMAIL_OTP",
        "EMPLOYEE_PAYMENT_PIN",
        "SUPER_ADMIN_EMAIL_OTP",
        "SUPER_ADMIN_MOBILE_OTP",
        "EMPLOYEE_FACE",
        "SUPER_ADMIN_FACE",
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

.field private static final synthetic $VALUES:[Lteam/opay/business/verify/core/ValidationType;

.field public static final enum ANSWER_QUESTION:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "answerQuestion"
    .end annotation
.end field

.field public static final enum BVN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bvn"
    .end annotation
.end field

.field public static final enum CARD_PIN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OPAY_CARD_PIN"
    .end annotation
.end field

.field public static final enum EMAIL:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field public static final enum EMPLOYEE_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EMPLOYEE_EMAIL_OTP"
    .end annotation
.end field

.field public static final enum EMPLOYEE_FACE:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EMPLOYEE_FACE"
    .end annotation
.end field

.field public static final enum EMPLOYEE_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EMPLOYEE_MOBILE_OTP"
    .end annotation
.end field

.field public static final enum EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "EMPLOYEE_PAYMENT_PIN"
    .end annotation
.end field

.field public static final enum FACE:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "face"
    .end annotation
.end field

.field public static final enum GESTURE:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gesture"
    .end annotation
.end field

.field public static final enum NAME:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public static final enum NEW_VERSION_PASSWORD:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newVersionPassword"
    .end annotation
.end field

.field public static final enum NIN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nin"
    .end annotation
.end field

.field public static final enum OTP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otp"
    .end annotation
.end field

.field public static final enum PASSWORD:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field public static final enum PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentPin"
    .end annotation
.end field

.field public static final enum POPUP_NOTIFY:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupNotify"
    .end annotation
.end field

.field public static final enum POPUP_OUT_CALL:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "popupOutCall"
    .end annotation
.end field

.field public static final enum SECRET_PROTECT:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secretProtect"
    .end annotation
.end field

.field public static final enum SECRET_QUESTION:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secretQuestion"
    .end annotation
.end field

.field public static final enum SUPER_ADMIN_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUPER_ADMIN_EMAIL_OTP"
    .end annotation
.end field

.field public static final enum SUPER_ADMIN_FACE:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUPER_ADMIN_FACE"
    .end annotation
.end field

.field public static final enum SUPER_ADMIN_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUPER_ADMIN_MOBILE_OTP"
    .end annotation
.end field

.field public static final enum UNFRESSZE_FORGET_PASSORD:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unfresszeForgetPassword"
    .end annotation
.end field

.field public static final enum UNFRESSZE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unfresszeForgetPaymentPin"
    .end annotation
.end field

.field public static final enum WHATSAPP:Lteam/opay/business/verify/core/ValidationType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whatsApp"
    .end annotation
.end field


# instance fields
.field private final icon:I


# direct methods
.method private static final synthetic $values()[Lteam/opay/business/verify/core/ValidationType;
    .locals 3

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/business/verify/core/ValidationType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->WHATSAPP:Lteam/opay/business/verify/core/ValidationType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->EMAIL:Lteam/opay/business/verify/core/ValidationType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->PASSWORD:Lteam/opay/business/verify/core/ValidationType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->NAME:Lteam/opay/business/verify/core/ValidationType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->GESTURE:Lteam/opay/business/verify/core/ValidationType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->SECRET_PROTECT:Lteam/opay/business/verify/core/ValidationType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->BVN:Lteam/opay/business/verify/core/ValidationType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->NIN:Lteam/opay/business/verify/core/ValidationType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->POPUP_NOTIFY:Lteam/opay/business/verify/core/ValidationType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->POPUP_OUT_CALL:Lteam/opay/business/verify/core/ValidationType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->ANSWER_QUESTION:Lteam/opay/business/verify/core/ValidationType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->SECRET_QUESTION:Lteam/opay/business/verify/core/ValidationType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->UNFRESSZE_FORGET_PASSORD:Lteam/opay/business/verify/core/ValidationType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->UNFRESSZE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->NEW_VERSION_PASSWORD:Lteam/opay/business/verify/core/ValidationType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->CARD_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 2
    .line 3
    sget v1, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_phone:I

    .line 4
    .line 5
    const-string v2, "OTP"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 12
    .line 13
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    sget v4, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_whatsapp:I

    .line 17
    .line 18
    const-string v5, "WHATSAPP"

    .line 19
    .line 20
    invoke-direct {v0, v5, v2, v4}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->WHATSAPP:Lteam/opay/business/verify/core/ValidationType;

    .line 24
    .line 25
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 26
    .line 27
    sget v2, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_email:I

    .line 28
    .line 29
    const-string v4, "EMAIL"

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    invoke-direct {v0, v4, v5, v2}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->EMAIL:Lteam/opay/business/verify/core/ValidationType;

    .line 36
    .line 37
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 38
    .line 39
    sget v4, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_password:I

    .line 40
    .line 41
    const-string v5, "PASSWORD"

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-direct {v0, v5, v6, v4}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->PASSWORD:Lteam/opay/business/verify/core/ValidationType;

    .line 48
    .line 49
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 50
    .line 51
    sget v5, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_pin:I

    .line 52
    .line 53
    const-string v6, "PAYMENT_PIN"

    .line 54
    .line 55
    const/4 v7, 0x4

    .line 56
    invoke-direct {v0, v6, v7, v5}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    sget v7, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_name:I

    .line 65
    .line 66
    const-string v8, "NAME"

    .line 67
    .line 68
    invoke-direct {v0, v8, v6, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->NAME:Lteam/opay/business/verify/core/ValidationType;

    .line 72
    .line 73
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 74
    .line 75
    const/4 v6, 0x6

    .line 76
    sget v7, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_gesture:I

    .line 77
    .line 78
    const-string v8, "GESTURE"

    .line 79
    .line 80
    invoke-direct {v0, v8, v6, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->GESTURE:Lteam/opay/business/verify/core/ValidationType;

    .line 84
    .line 85
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 86
    .line 87
    sget v6, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_security_question:I

    .line 88
    .line 89
    const-string v7, "SECRET_PROTECT"

    .line 90
    .line 91
    const/4 v8, 0x7

    .line 92
    invoke-direct {v0, v7, v8, v6}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->SECRET_PROTECT:Lteam/opay/business/verify/core/ValidationType;

    .line 96
    .line 97
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 98
    .line 99
    sget v7, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_identity:I

    .line 100
    .line 101
    const-string v8, "BVN"

    .line 102
    .line 103
    const/16 v9, 0x8

    .line 104
    .line 105
    invoke-direct {v0, v8, v9, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->BVN:Lteam/opay/business/verify/core/ValidationType;

    .line 109
    .line 110
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 111
    .line 112
    const-string v8, "NIN"

    .line 113
    .line 114
    const/16 v9, 0x9

    .line 115
    .line 116
    invoke-direct {v0, v8, v9, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->NIN:Lteam/opay/business/verify/core/ValidationType;

    .line 120
    .line 121
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 122
    .line 123
    sget v7, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_face:I

    .line 124
    .line 125
    const-string v8, "FACE"

    .line 126
    .line 127
    const/16 v9, 0xa

    .line 128
    .line 129
    invoke-direct {v0, v8, v9, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 133
    .line 134
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 135
    .line 136
    const-string v8, "POPUP_NOTIFY"

    .line 137
    .line 138
    const/16 v9, 0xb

    .line 139
    .line 140
    invoke-direct {v0, v8, v9, v3}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->POPUP_NOTIFY:Lteam/opay/business/verify/core/ValidationType;

    .line 144
    .line 145
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 146
    .line 147
    const-string v8, "POPUP_OUT_CALL"

    .line 148
    .line 149
    const/16 v9, 0xc

    .line 150
    .line 151
    invoke-direct {v0, v8, v9, v3}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->POPUP_OUT_CALL:Lteam/opay/business/verify/core/ValidationType;

    .line 155
    .line 156
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 157
    .line 158
    const-string v8, "ANSWER_QUESTION"

    .line 159
    .line 160
    const/16 v9, 0xd

    .line 161
    .line 162
    invoke-direct {v0, v8, v9, v3}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 163
    .line 164
    .line 165
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->ANSWER_QUESTION:Lteam/opay/business/verify/core/ValidationType;

    .line 166
    .line 167
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 168
    .line 169
    const-string v8, "SECRET_QUESTION"

    .line 170
    .line 171
    const/16 v9, 0xe

    .line 172
    .line 173
    invoke-direct {v0, v8, v9, v6}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 174
    .line 175
    .line 176
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->SECRET_QUESTION:Lteam/opay/business/verify/core/ValidationType;

    .line 177
    .line 178
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 179
    .line 180
    const-string v6, "UNFRESSZE_FORGET_PASSORD"

    .line 181
    .line 182
    const/16 v8, 0xf

    .line 183
    .line 184
    invoke-direct {v0, v6, v8, v3}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->UNFRESSZE_FORGET_PASSORD:Lteam/opay/business/verify/core/ValidationType;

    .line 188
    .line 189
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 190
    .line 191
    const-string v6, "UNFRESSZE_PAYMENT_PIN"

    .line 192
    .line 193
    const/16 v8, 0x10

    .line 194
    .line 195
    invoke-direct {v0, v6, v8, v3}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->UNFRESSZE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 199
    .line 200
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 201
    .line 202
    const-string v3, "NEW_VERSION_PASSWORD"

    .line 203
    .line 204
    const/16 v6, 0x11

    .line 205
    .line 206
    invoke-direct {v0, v3, v6, v4}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 207
    .line 208
    .line 209
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->NEW_VERSION_PASSWORD:Lteam/opay/business/verify/core/ValidationType;

    .line 210
    .line 211
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 212
    .line 213
    const/16 v3, 0x12

    .line 214
    .line 215
    sget v4, Lteam/opay/business/verify/core/R$drawable;->verify_icon_other_card_pin:I

    .line 216
    .line 217
    const-string v6, "CARD_PIN"

    .line 218
    .line 219
    invoke-direct {v0, v6, v3, v4}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->CARD_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 225
    .line 226
    const-string v3, "EMPLOYEE_MOBILE_OTP"

    .line 227
    .line 228
    const/16 v4, 0x13

    .line 229
    .line 230
    invoke-direct {v0, v3, v4, v1}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 234
    .line 235
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 236
    .line 237
    const-string v3, "EMPLOYEE_EMAIL_OTP"

    .line 238
    .line 239
    const/16 v4, 0x14

    .line 240
    .line 241
    invoke-direct {v0, v3, v4, v2}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 245
    .line 246
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 247
    .line 248
    const-string v3, "EMPLOYEE_PAYMENT_PIN"

    .line 249
    .line 250
    const/16 v4, 0x15

    .line 251
    .line 252
    invoke-direct {v0, v3, v4, v5}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 253
    .line 254
    .line 255
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_PAYMENT_PIN:Lteam/opay/business/verify/core/ValidationType;

    .line 256
    .line 257
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 258
    .line 259
    const-string v3, "SUPER_ADMIN_EMAIL_OTP"

    .line 260
    .line 261
    const/16 v4, 0x16

    .line 262
    .line 263
    invoke-direct {v0, v3, v4, v2}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_EMAIL_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 267
    .line 268
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 269
    .line 270
    const-string v2, "SUPER_ADMIN_MOBILE_OTP"

    .line 271
    .line 272
    const/16 v3, 0x17

    .line 273
    .line 274
    invoke-direct {v0, v2, v3, v1}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_MOBILE_OTP:Lteam/opay/business/verify/core/ValidationType;

    .line 278
    .line 279
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 280
    .line 281
    const-string v1, "EMPLOYEE_FACE"

    .line 282
    .line 283
    const/16 v2, 0x18

    .line 284
    .line 285
    invoke-direct {v0, v1, v2, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->EMPLOYEE_FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 289
    .line 290
    new-instance v0, Lteam/opay/business/verify/core/ValidationType;

    .line 291
    .line 292
    const-string v1, "SUPER_ADMIN_FACE"

    .line 293
    .line 294
    const/16 v2, 0x19

    .line 295
    .line 296
    invoke-direct {v0, v1, v2, v7}, Lteam/opay/business/verify/core/ValidationType;-><init>(Ljava/lang/String;II)V

    .line 297
    .line 298
    .line 299
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->SUPER_ADMIN_FACE:Lteam/opay/business/verify/core/ValidationType;

    .line 300
    .line 301
    invoke-static {}, Lteam/opay/business/verify/core/ValidationType;->$values()[Lteam/opay/business/verify/core/ValidationType;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->$VALUES:[Lteam/opay/business/verify/core/ValidationType;

    .line 306
    .line 307
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    sput-object v0, Lteam/opay/business/verify/core/ValidationType;->$ENTRIES:Lwo5;

    .line 312
    .line 313
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
    iput p3, p0, Lteam/opay/business/verify/core/ValidationType;->icon:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lwo5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwo5<",
            "Lteam/opay/business/verify/core/ValidationType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/business/verify/core/ValidationType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/business/verify/core/ValidationType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/business/verify/core/ValidationType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/business/verify/core/ValidationType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/business/verify/core/ValidationType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/business/verify/core/ValidationType;->$VALUES:[Lteam/opay/business/verify/core/ValidationType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/business/verify/core/ValidationType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/verify/core/ValidationType;->icon:I

    .line 2
    .line 3
    return v0
.end method

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
