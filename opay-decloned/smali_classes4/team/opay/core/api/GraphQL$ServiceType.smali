.class public final enum Lteam/opay/core/api/GraphQL$ServiceType;
.super Ljava/lang/Enum;
.source "graphql.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u00086\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010<\u001a\u000209H\u0016R\u0011\u00108\u001a\u0002098F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087\u00a8\u0006="
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "Ljava/io/Serializable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "COINS_TOPUP",
        "COINS_BIND",
        "COINS_SEND",
        "COINS_TRANSFER_SENT",
        "COINS_TRANSFER_RECEIVED",
        "AIRTIME",
        "BANK",
        "DATA",
        "GATEWAY",
        "ELECTRICITY",
        "E_WITHDRAWAL_STRING",
        "E_WITHDRAWAL",
        "GuaranteeFreeze",
        "GuaranteeUnfreeze",
        "GuaranteeDebit",
        "WeekMonth",
        "MOBILE_MONEY",
        "CREDIT",
        "RENT",
        "TV",
        "WATER",
        "TOKENIZATION",
        "PAYBILL",
        "POS",
        "POS_REVERSAL",
        "WALLET_REFUND",
        "BETTING",
        "REFUND",
        "AJIRA",
        "FOOD",
        "POS_REVERSAL_STRING",
        "CHARGEBACK",
        "INVEST",
        "OKASH",
        "NEARBY_AGENTS",
        "INTEREST_INTEREST",
        "INTEREST",
        "MCASH",
        "CONSUMPTION_SENDER",
        "CONSUMPTION_RECEIVER",
        "CASH_IN",
        "CASH_OUT",
        "WEB_CASHIER",
        "NEW_PAY_BILL",
        "RED_ENVELOPE",
        "OWEALTHINTEREST",
        "CASH_BACK",
        "GATEWAY_COMMIT",
        "QRCODE",
        "GIFT_CARD",
        "ANY",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "toString",
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

.field private static final synthetic $VALUES:[Lteam/opay/core/api/GraphQL$ServiceType;

.field public static final enum AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "airtime"
    .end annotation
.end field

.field public static final enum AJIRA:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ajira"
    .end annotation
.end field

.field public static final enum ANY:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = ""
    .end annotation
.end field

.field public static final enum BANK:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank"
    .end annotation
.end field

.field public static final enum BETTING:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "betting"
    .end annotation
.end field

.field public static final enum CASH_BACK:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bouns"
    .end annotation
.end field

.field public static final enum CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashIn"
    .end annotation
.end field

.field public static final enum CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashOut"
    .end annotation
.end field

.field public static final enum CHARGEBACK:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chargeback"
    .end annotation
.end field

.field public static final enum COINS_BIND:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coinsBind"
    .end annotation
.end field

.field public static final enum COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coinsTransfer"
    .end annotation
.end field

.field public static final enum COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coins"
    .end annotation
.end field

.field public static final enum COINS_TRANSFER_RECEIVED:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coinsTransferReceived"
    .end annotation
.end field

.field public static final enum COINS_TRANSFER_SENT:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coinsTransferSent"
    .end annotation
.end field

.field public static final enum CONSUMPTION_RECEIVER:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumptionReceiver"
    .end annotation
.end field

.field public static final enum CONSUMPTION_SENDER:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumptionSender"
    .end annotation
.end field

.field public static final enum CREDIT:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "credit"
    .end annotation
.end field

.field public static final enum DATA:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field public static final enum ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "electricity"
    .end annotation
.end field

.field public static final enum E_WITHDRAWAL:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eWithdrawal"
    .end annotation
.end field

.field public static final enum E_WITHDRAWAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ewithdrawal"
    .end annotation
.end field

.field public static final enum FOOD:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "food"
    .end annotation
.end field

.field public static final enum GATEWAY:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway"
    .end annotation
.end field

.field public static final enum GATEWAY_COMMIT:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gatewayCommit"
    .end annotation
.end field

.field public static final enum GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GiftCard"
    .end annotation
.end field

.field public static final enum GuaranteeDebit:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guaranteeDebit"
    .end annotation
.end field

.field public static final enum GuaranteeFreeze:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guaranteeFreeze"
    .end annotation
.end field

.field public static final enum GuaranteeUnfreeze:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guaranteeUnfreeze"
    .end annotation
.end field

.field public static final enum INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invest-interest"
    .end annotation
.end field

.field public static final enum INTEREST_INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "investInterest"
    .end annotation
.end field

.field public static final enum INVEST:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invest"
    .end annotation
.end field

.field public static final enum MCASH:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mcash"
    .end annotation
.end field

.field public static final enum MOBILE_MONEY:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileMoney"
    .end annotation
.end field

.field public static final enum NEARBY_AGENTS:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nearbyagents"
    .end annotation
.end field

.field public static final enum NEW_PAY_BILL:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payBill"
    .end annotation
.end field

.field public static final enum OKASH:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "okash"
    .end annotation
.end field

.field public static final enum OWEALTHINTEREST:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interest"
    .end annotation
.end field

.field public static final enum PAYBILL:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "business"
    .end annotation
.end field

.field public static final enum POS:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pos"
    .end annotation
.end field

.field public static final enum POS_REVERSAL:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "posReversal"
    .end annotation
.end field

.field public static final enum POS_REVERSAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pos-reversal"
    .end annotation
.end field

.field public static final enum QRCODE:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qrcode"
    .end annotation
.end field

.field public static final enum RED_ENVELOPE:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redEnvelope"
    .end annotation
.end field

.field public static final enum REFUND:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refund"
    .end annotation
.end field

.field public static final enum RENT:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rent"
    .end annotation
.end field

.field public static final enum TOKENIZATION:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenization"
    .end annotation
.end field

.field public static final enum TV:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tv"
    .end annotation
.end field

.field public static final enum WALLET_REFUND:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "walletRefund"
    .end annotation
.end field

.field public static final enum WATER:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "water"
    .end annotation
.end field

.field public static final enum WEB_CASHIER:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "macquiring"
    .end annotation
.end field

.field public static final enum WeekMonth:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "guaranteeDebit"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 3

    .line 1
    const/16 v0, 0x33

    .line 2
    .line 3
    new-array v0, v0, [Lteam/opay/core/api/GraphQL$ServiceType;

    .line 4
    .line 5
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_BIND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TRANSFER_SENT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TRANSFER_RECEIVED:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->E_WITHDRAWAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->E_WITHDRAWAL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 64
    .line 65
    const/16 v2, 0xb

    .line 66
    .line 67
    aput-object v1, v0, v2

    .line 68
    .line 69
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeFreeze:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 70
    .line 71
    const/16 v2, 0xc

    .line 72
    .line 73
    aput-object v1, v0, v2

    .line 74
    .line 75
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeUnfreeze:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 76
    .line 77
    const/16 v2, 0xd

    .line 78
    .line 79
    aput-object v1, v0, v2

    .line 80
    .line 81
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeDebit:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 82
    .line 83
    const/16 v2, 0xe

    .line 84
    .line 85
    aput-object v1, v0, v2

    .line 86
    .line 87
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->WeekMonth:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 88
    .line 89
    const/16 v2, 0xf

    .line 90
    .line 91
    aput-object v1, v0, v2

    .line 92
    .line 93
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->MOBILE_MONEY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 94
    .line 95
    const/16 v2, 0x10

    .line 96
    .line 97
    aput-object v1, v0, v2

    .line 98
    .line 99
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CREDIT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 100
    .line 101
    const/16 v2, 0x11

    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->RENT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 106
    .line 107
    const/16 v2, 0x12

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 112
    .line 113
    const/16 v2, 0x13

    .line 114
    .line 115
    aput-object v1, v0, v2

    .line 116
    .line 117
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->WATER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 118
    .line 119
    const/16 v2, 0x14

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->TOKENIZATION:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 124
    .line 125
    const/16 v2, 0x15

    .line 126
    .line 127
    aput-object v1, v0, v2

    .line 128
    .line 129
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->PAYBILL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 130
    .line 131
    const/16 v2, 0x16

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->POS:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 136
    .line 137
    const/16 v2, 0x17

    .line 138
    .line 139
    aput-object v1, v0, v2

    .line 140
    .line 141
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->POS_REVERSAL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 142
    .line 143
    const/16 v2, 0x18

    .line 144
    .line 145
    aput-object v1, v0, v2

    .line 146
    .line 147
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->WALLET_REFUND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 148
    .line 149
    const/16 v2, 0x19

    .line 150
    .line 151
    aput-object v1, v0, v2

    .line 152
    .line 153
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 154
    .line 155
    const/16 v2, 0x1a

    .line 156
    .line 157
    aput-object v1, v0, v2

    .line 158
    .line 159
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->REFUND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 160
    .line 161
    const/16 v2, 0x1b

    .line 162
    .line 163
    aput-object v1, v0, v2

    .line 164
    .line 165
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->AJIRA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 166
    .line 167
    const/16 v2, 0x1c

    .line 168
    .line 169
    aput-object v1, v0, v2

    .line 170
    .line 171
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->FOOD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 172
    .line 173
    const/16 v2, 0x1d

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->POS_REVERSAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 178
    .line 179
    const/16 v2, 0x1e

    .line 180
    .line 181
    aput-object v1, v0, v2

    .line 182
    .line 183
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CHARGEBACK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 184
    .line 185
    const/16 v2, 0x1f

    .line 186
    .line 187
    aput-object v1, v0, v2

    .line 188
    .line 189
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->INVEST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 190
    .line 191
    const/16 v2, 0x20

    .line 192
    .line 193
    aput-object v1, v0, v2

    .line 194
    .line 195
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->OKASH:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 196
    .line 197
    const/16 v2, 0x21

    .line 198
    .line 199
    aput-object v1, v0, v2

    .line 200
    .line 201
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->NEARBY_AGENTS:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 202
    .line 203
    const/16 v2, 0x22

    .line 204
    .line 205
    aput-object v1, v0, v2

    .line 206
    .line 207
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->INTEREST_INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 208
    .line 209
    const/16 v2, 0x23

    .line 210
    .line 211
    aput-object v1, v0, v2

    .line 212
    .line 213
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 214
    .line 215
    const/16 v2, 0x24

    .line 216
    .line 217
    aput-object v1, v0, v2

    .line 218
    .line 219
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->MCASH:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 220
    .line 221
    const/16 v2, 0x25

    .line 222
    .line 223
    aput-object v1, v0, v2

    .line 224
    .line 225
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CONSUMPTION_SENDER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 226
    .line 227
    const/16 v2, 0x26

    .line 228
    .line 229
    aput-object v1, v0, v2

    .line 230
    .line 231
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CONSUMPTION_RECEIVER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 232
    .line 233
    const/16 v2, 0x27

    .line 234
    .line 235
    aput-object v1, v0, v2

    .line 236
    .line 237
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 238
    .line 239
    const/16 v2, 0x28

    .line 240
    .line 241
    aput-object v1, v0, v2

    .line 242
    .line 243
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 244
    .line 245
    const/16 v2, 0x29

    .line 246
    .line 247
    aput-object v1, v0, v2

    .line 248
    .line 249
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->WEB_CASHIER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 250
    .line 251
    const/16 v2, 0x2a

    .line 252
    .line 253
    aput-object v1, v0, v2

    .line 254
    .line 255
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->NEW_PAY_BILL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 256
    .line 257
    const/16 v2, 0x2b

    .line 258
    .line 259
    aput-object v1, v0, v2

    .line 260
    .line 261
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->RED_ENVELOPE:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 262
    .line 263
    const/16 v2, 0x2c

    .line 264
    .line 265
    aput-object v1, v0, v2

    .line 266
    .line 267
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->OWEALTHINTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 268
    .line 269
    const/16 v2, 0x2d

    .line 270
    .line 271
    aput-object v1, v0, v2

    .line 272
    .line 273
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_BACK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 274
    .line 275
    const/16 v2, 0x2e

    .line 276
    .line 277
    aput-object v1, v0, v2

    .line 278
    .line 279
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY_COMMIT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 280
    .line 281
    const/16 v2, 0x2f

    .line 282
    .line 283
    aput-object v1, v0, v2

    .line 284
    .line 285
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->QRCODE:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 286
    .line 287
    const/16 v2, 0x30

    .line 288
    .line 289
    aput-object v1, v0, v2

    .line 290
    .line 291
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 292
    .line 293
    const/16 v2, 0x31

    .line 294
    .line 295
    aput-object v1, v0, v2

    .line 296
    .line 297
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->ANY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 298
    .line 299
    const/16 v2, 0x32

    .line 300
    .line 301
    aput-object v1, v0, v2

    .line 302
    .line 303
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    const-string v1, "COINS_TOPUP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 12
    .line 13
    const-string v1, "COINS_BIND"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_BIND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 20
    .line 21
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 22
    .line 23
    const-string v1, "COINS_SEND"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 30
    .line 31
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 32
    .line 33
    const-string v1, "COINS_TRANSFER_SENT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TRANSFER_SENT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 40
    .line 41
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 42
    .line 43
    const-string v1, "COINS_TRANSFER_RECEIVED"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_TRANSFER_RECEIVED:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 50
    .line 51
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 52
    .line 53
    const-string v1, "AIRTIME"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->AIRTIME:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 62
    .line 63
    const-string v1, "BANK"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 70
    .line 71
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 72
    .line 73
    const-string v1, "DATA"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->DATA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 80
    .line 81
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 82
    .line 83
    const-string v1, "GATEWAY"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 91
    .line 92
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 93
    .line 94
    const-string v1, "ELECTRICITY"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->ELECTRICITY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 102
    .line 103
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 104
    .line 105
    const-string v1, "E_WITHDRAWAL_STRING"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->E_WITHDRAWAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 113
    .line 114
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 115
    .line 116
    const-string v1, "E_WITHDRAWAL"

    .line 117
    .line 118
    const/16 v2, 0xb

    .line 119
    .line 120
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->E_WITHDRAWAL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 124
    .line 125
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 126
    .line 127
    const-string v1, "GuaranteeFreeze"

    .line 128
    .line 129
    const/16 v2, 0xc

    .line 130
    .line 131
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeFreeze:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 135
    .line 136
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 137
    .line 138
    const-string v1, "GuaranteeUnfreeze"

    .line 139
    .line 140
    const/16 v2, 0xd

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeUnfreeze:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 146
    .line 147
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 148
    .line 149
    const-string v1, "GuaranteeDebit"

    .line 150
    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GuaranteeDebit:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 157
    .line 158
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 159
    .line 160
    const-string v1, "WeekMonth"

    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->WeekMonth:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 168
    .line 169
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 170
    .line 171
    const-string v1, "MOBILE_MONEY"

    .line 172
    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->MOBILE_MONEY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 179
    .line 180
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 181
    .line 182
    const-string v1, "CREDIT"

    .line 183
    .line 184
    const/16 v2, 0x11

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CREDIT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 190
    .line 191
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 192
    .line 193
    const-string v1, "RENT"

    .line 194
    .line 195
    const/16 v2, 0x12

    .line 196
    .line 197
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->RENT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 201
    .line 202
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 203
    .line 204
    const-string v1, "TV"

    .line 205
    .line 206
    const/16 v2, 0x13

    .line 207
    .line 208
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->TV:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 212
    .line 213
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 214
    .line 215
    const-string v1, "WATER"

    .line 216
    .line 217
    const/16 v2, 0x14

    .line 218
    .line 219
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->WATER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 223
    .line 224
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 225
    .line 226
    const-string v1, "TOKENIZATION"

    .line 227
    .line 228
    const/16 v2, 0x15

    .line 229
    .line 230
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->TOKENIZATION:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 234
    .line 235
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 236
    .line 237
    const-string v1, "PAYBILL"

    .line 238
    .line 239
    const/16 v2, 0x16

    .line 240
    .line 241
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 242
    .line 243
    .line 244
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->PAYBILL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 245
    .line 246
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 247
    .line 248
    const-string v1, "POS"

    .line 249
    .line 250
    const/16 v2, 0x17

    .line 251
    .line 252
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->POS:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 256
    .line 257
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 258
    .line 259
    const-string v1, "POS_REVERSAL"

    .line 260
    .line 261
    const/16 v2, 0x18

    .line 262
    .line 263
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->POS_REVERSAL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 267
    .line 268
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 269
    .line 270
    const-string v1, "WALLET_REFUND"

    .line 271
    .line 272
    const/16 v2, 0x19

    .line 273
    .line 274
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->WALLET_REFUND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 278
    .line 279
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 280
    .line 281
    const-string v1, "BETTING"

    .line 282
    .line 283
    const/16 v2, 0x1a

    .line 284
    .line 285
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->BETTING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 289
    .line 290
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 291
    .line 292
    const-string v1, "REFUND"

    .line 293
    .line 294
    const/16 v2, 0x1b

    .line 295
    .line 296
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->REFUND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 300
    .line 301
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 302
    .line 303
    const-string v1, "AJIRA"

    .line 304
    .line 305
    const/16 v2, 0x1c

    .line 306
    .line 307
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->AJIRA:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 311
    .line 312
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 313
    .line 314
    const-string v1, "FOOD"

    .line 315
    .line 316
    const/16 v2, 0x1d

    .line 317
    .line 318
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->FOOD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 322
    .line 323
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 324
    .line 325
    const-string v1, "POS_REVERSAL_STRING"

    .line 326
    .line 327
    const/16 v2, 0x1e

    .line 328
    .line 329
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->POS_REVERSAL_STRING:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 333
    .line 334
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 335
    .line 336
    const-string v1, "CHARGEBACK"

    .line 337
    .line 338
    const/16 v2, 0x1f

    .line 339
    .line 340
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CHARGEBACK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 344
    .line 345
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 346
    .line 347
    const-string v1, "INVEST"

    .line 348
    .line 349
    const/16 v2, 0x20

    .line 350
    .line 351
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->INVEST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 355
    .line 356
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 357
    .line 358
    const-string v1, "OKASH"

    .line 359
    .line 360
    const/16 v2, 0x21

    .line 361
    .line 362
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->OKASH:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 366
    .line 367
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 368
    .line 369
    const-string v1, "NEARBY_AGENTS"

    .line 370
    .line 371
    const/16 v2, 0x22

    .line 372
    .line 373
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->NEARBY_AGENTS:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 377
    .line 378
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 379
    .line 380
    const-string v1, "INTEREST_INTEREST"

    .line 381
    .line 382
    const/16 v2, 0x23

    .line 383
    .line 384
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->INTEREST_INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 388
    .line 389
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 390
    .line 391
    const-string v1, "INTEREST"

    .line 392
    .line 393
    const/16 v2, 0x24

    .line 394
    .line 395
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 396
    .line 397
    .line 398
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->INTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 399
    .line 400
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 401
    .line 402
    const-string v1, "MCASH"

    .line 403
    .line 404
    const/16 v2, 0x25

    .line 405
    .line 406
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->MCASH:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 410
    .line 411
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 412
    .line 413
    const-string v1, "CONSUMPTION_SENDER"

    .line 414
    .line 415
    const/16 v2, 0x26

    .line 416
    .line 417
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 418
    .line 419
    .line 420
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CONSUMPTION_SENDER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 421
    .line 422
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 423
    .line 424
    const-string v1, "CONSUMPTION_RECEIVER"

    .line 425
    .line 426
    const/16 v2, 0x27

    .line 427
    .line 428
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CONSUMPTION_RECEIVER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 432
    .line 433
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 434
    .line 435
    const-string v1, "CASH_IN"

    .line 436
    .line 437
    const/16 v2, 0x28

    .line 438
    .line 439
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 440
    .line 441
    .line 442
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 443
    .line 444
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 445
    .line 446
    const-string v1, "CASH_OUT"

    .line 447
    .line 448
    const/16 v2, 0x29

    .line 449
    .line 450
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 451
    .line 452
    .line 453
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_OUT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 454
    .line 455
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 456
    .line 457
    const-string v1, "WEB_CASHIER"

    .line 458
    .line 459
    const/16 v2, 0x2a

    .line 460
    .line 461
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 462
    .line 463
    .line 464
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->WEB_CASHIER:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 465
    .line 466
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 467
    .line 468
    const-string v1, "NEW_PAY_BILL"

    .line 469
    .line 470
    const/16 v2, 0x2b

    .line 471
    .line 472
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 473
    .line 474
    .line 475
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->NEW_PAY_BILL:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 476
    .line 477
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 478
    .line 479
    const-string v1, "RED_ENVELOPE"

    .line 480
    .line 481
    const/16 v2, 0x2c

    .line 482
    .line 483
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->RED_ENVELOPE:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 487
    .line 488
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 489
    .line 490
    const-string v1, "OWEALTHINTEREST"

    .line 491
    .line 492
    const/16 v2, 0x2d

    .line 493
    .line 494
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->OWEALTHINTEREST:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 498
    .line 499
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 500
    .line 501
    const-string v1, "CASH_BACK"

    .line 502
    .line 503
    const/16 v2, 0x2e

    .line 504
    .line 505
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 506
    .line 507
    .line 508
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_BACK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 509
    .line 510
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 511
    .line 512
    const-string v1, "GATEWAY_COMMIT"

    .line 513
    .line 514
    const/16 v2, 0x2f

    .line 515
    .line 516
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GATEWAY_COMMIT:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 520
    .line 521
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 522
    .line 523
    const-string v1, "QRCODE"

    .line 524
    .line 525
    const/16 v2, 0x30

    .line 526
    .line 527
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 528
    .line 529
    .line 530
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->QRCODE:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 531
    .line 532
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 533
    .line 534
    const-string v1, "GIFT_CARD"

    .line 535
    .line 536
    const/16 v2, 0x31

    .line 537
    .line 538
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 539
    .line 540
    .line 541
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->GIFT_CARD:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 542
    .line 543
    new-instance v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 544
    .line 545
    const-string v1, "ANY"

    .line 546
    .line 547
    const/16 v2, 0x32

    .line 548
    .line 549
    invoke-direct {v0, v1, v2}, Lteam/opay/core/api/GraphQL$ServiceType;-><init>(Ljava/lang/String;I)V

    .line 550
    .line 551
    .line 552
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->ANY:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 553
    .line 554
    invoke-static {}, Lteam/opay/core/api/GraphQL$ServiceType;->$values()[Lteam/opay/core/api/GraphQL$ServiceType;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->$VALUES:[Lteam/opay/core/api/GraphQL$ServiceType;

    .line 559
    .line 560
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lwo5;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    sput-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->$ENTRIES:Lwo5;

    .line 565
    .line 566
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
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->$ENTRIES:Lwo5;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1

    .line 1
    const-class v0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lteam/opay/core/api/GraphQL$ServiceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$ServiceType;->$VALUES:[Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lteam/opay/core/api/GraphQL$ServiceType;

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

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
