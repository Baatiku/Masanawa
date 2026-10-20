.class public abstract Lteam/opay/pay/history/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u001a\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0012\u0010\u0012\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000bR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u000bR\u0012\u0010 \u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u000bR\u0012\u0010\"\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u000bR\u0014\u0010$\u001a\u0004\u0018\u00010%X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0012\u0010(\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u000bR\u0012\u0010*\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u0007R\u0014\u0010,\u001a\u0004\u0018\u00010-X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0014\u00100\u001a\u0004\u0018\u00010-X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010/R\u0012\u00102\u001a\u000203X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00105R\u0012\u00106\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u000bR\u0012\u00108\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u000bR\u0012\u0010:\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u000bR\u0012\u0010<\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u000bR\u0012\u0010>\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u000bR\u0012\u0010@\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u000bR\u0012\u0010B\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010\u000bR\u0012\u0010D\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u000fR\u0012\u0010F\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010\u000fR\u0012\u0010H\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010\u000fR\u0012\u0010J\u001a\u000203X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u00105R\u0014\u0010L\u001a\u0004\u0018\u00010MX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0014\u0010P\u001a\u0004\u0018\u00010MX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010OR \u0010R\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010\u000b\"\u0004\u0008T\u0010UR\u0014\u0010V\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010\u000bR\u0014\u0010X\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010\u000bR\u0014\u0010Z\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u000bR\u0014\u0010\\\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010\u000bR\u0014\u0010^\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010\u000bR\u0014\u0010`\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010\u000bR\u0014\u0010b\u001a\u0004\u0018\u00010cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010eR\u0014\u0010f\u001a\u0004\u0018\u00010gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010iR\u0012\u0010j\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u000fR\u0012\u0010l\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010\u000fR\u0012\u0010n\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010\u000fR\u0014\u0010p\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010\u000bR\u0012\u0010r\u001a\u00020sX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010uR\u0012\u0010v\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010\u000fR\u0012\u0010x\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010\u000fR\u0014\u0010z\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010\u000fR\u0014\u0010|\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008}\u0010\u000bR\u0014\u0010~\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010\u000bR\u0016\u0010\u0080\u0001\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010\u000bR\u0016\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010\u000bR\u0016\u0010\u0084\u0001\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0085\u0001\u0010\u000bR\u0016\u0010\u0086\u0001\u001a\u0004\u0018\u00010\rX\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u0010\u000fR\u0016\u0010\u0088\u0001\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010\u000bR\u0017\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0005X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R\u001f\u0010\u008d\u0001\u001a\u000c\u0012\u0005\u0012\u00030\u008f\u0001\u0018\u00010\u008e\u0001X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R\u0015\u0010\u0092\u0001\u001a\u00030\u0093\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u0082\u0001\u0002\u0096\u0001\u00a8\u0006\u0097\u0001"
    }
    d2 = {
        "Lteam/opay/pay/history/Transaction;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "id",
        "",
        "getId",
        "()I",
        "referrer",
        "",
        "getReferrer",
        "()Ljava/lang/String;",
        "amount",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "referrerAmount",
        "getReferrerAmount",
        "date",
        "getDate",
        "dateUnix",
        "Ljava/util/Date;",
        "getDateUnix",
        "()Ljava/util/Date;",
        "dateUnixForMill",
        "getDateUnixForMill",
        "type",
        "Lteam/opay/core/api/GraphQL$TransactionType;",
        "getType",
        "()Lteam/opay/core/api/GraphQL$TransactionType;",
        "paymentInstrument",
        "getPaymentInstrument",
        "phoneNumber",
        "getPhoneNumber",
        "principalPhoneNumber",
        "getPrincipalPhoneNumber",
        "serviceType",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "getServiceType",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceName",
        "getServiceName",
        "cashback",
        "getCashback",
        "state",
        "Lteam/opay/core/api/GraphQL$TransactionState;",
        "getState",
        "()Lteam/opay/core/api/GraphQL$TransactionState;",
        "stateHint",
        "getStateHint",
        "refunded",
        "",
        "getRefunded",
        "()Z",
        "recipientBankName",
        "getRecipientBankName",
        "transactionID",
        "getTransactionID",
        "recipientName",
        "getRecipientName",
        "recipientAccount",
        "getRecipientAccount",
        "paymentInstrumentNumber",
        "getPaymentInstrumentNumber",
        "message",
        "getMessage",
        "serviceID",
        "getServiceID",
        "amountAfterFee",
        "getAmountAfterFee",
        "balanceAfter",
        "getBalanceAfter",
        "fee",
        "getFee",
        "chargedBack",
        "getChargedBack",
        "chargebackData",
        "Lteam/opay/core/api/GraphQL$ReferenceData;",
        "getChargebackData",
        "()Lteam/opay/core/api/GraphQL$ReferenceData;",
        "refundData",
        "getRefundData",
        "name",
        "getName",
        "setName",
        "(Ljava/lang/String;)V",
        "senderPhone",
        "getSenderPhone",
        "senderName",
        "getSenderName",
        "senderBankName",
        "getSenderBankName",
        "senderAccountNumber",
        "getSenderAccountNumber",
        "nipTransactionRef",
        "getNipTransactionRef",
        "businessName",
        "getBusinessName",
        "businessCategory",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "getBusinessCategory",
        "()Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "coupon",
        "Lteam/opay/core/api/GraphQL$Template;",
        "getCoupon",
        "()Lteam/opay/core/api/GraphQL$Template;",
        "paidAmount",
        "getPaidAmount",
        "chargedAmount",
        "getChargedAmount",
        "discountAmount",
        "getDiscountAmount",
        "terminalId",
        "getTerminalId",
        "newCashBack",
        "",
        "getNewCashBack",
        "()F",
        "commisionAmount",
        "getCommisionAmount",
        "additionalAmount",
        "getAdditionalAmount",
        "stampDuty",
        "getStampDuty",
        "billName",
        "getBillName",
        "payInformation",
        "getPayInformation",
        "rechargePIN",
        "getRechargePIN",
        "miscData",
        "getMiscData",
        "paymentType",
        "getPaymentType",
        "voucherAmount",
        "getVoucherAmount",
        "typeView",
        "getTypeView",
        "opType",
        "getOpType",
        "()Ljava/lang/Integer;",
        "revenueBreakdownList",
        "",
        "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
        "getRevenueBreakdownList",
        "()Ljava/util/List;",
        "feeType",
        "Lteam/opay/pay/history/FeeType;",
        "getFeeType",
        "()Lteam/opay/pay/history/FeeType;",
        "Lteam/opay/pay/history/UserTransaction;",
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


# instance fields
.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/history/Transaction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdditionalAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getAmountAfterFee()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getBalanceAfter()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getBillName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getBusinessCategory()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getBusinessName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCashback()I
.end method

.method public abstract getChargebackData()Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getChargedAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getChargedBack()Z
.end method

.method public abstract getCommisionAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCoupon()Lteam/opay/core/api/GraphQL$Template;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDate()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getDateUnix()Ljava/util/Date;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/history/Transaction;->getDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    mul-long v1, v1, v3

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final getDateUnixForMill()Ljava/util/Date;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/history/Transaction;->getDate()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public abstract getDiscountAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getFee()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getFeeType()Lteam/opay/pay/history/FeeType;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/history/Transaction;->getPaidAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lteam/opay/pay/history/Transaction;->getChargedAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_1
    cmpl-float v0, v0, v1

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lteam/opay/pay/history/FeeType;->CHARGE:Lteam/opay/pay/history/FeeType;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    sget-object v0, Lteam/opay/pay/history/FeeType;->DEDUCT:Lteam/opay/pay/history/FeeType;

    .line 40
    .line 41
    :goto_1
    return-object v0
.end method

.method public abstract getId()I
.end method

.method public abstract getMessage()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMiscData()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/Transaction;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getNewCashBack()F
.end method

.method public abstract getNipTransactionRef()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getOpType()Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPaidAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPayInformation()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPaymentInstrument()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPaymentInstrumentNumber()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPaymentType()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPrincipalPhoneNumber()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRechargePIN()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getRecipientAccount()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRecipientBankName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRecipientName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getReferrer()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getReferrerAmount()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRefundData()Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getRefunded()Z
.end method

.method public abstract getRevenueBreakdownList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSenderAccountNumber()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSenderBankName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSenderName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSenderPhone()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getServiceID()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getServiceType()Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getStampDuty()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getState()Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getStateHint()Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTerminalId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTransactionID()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getType()Lteam/opay/core/api/GraphQL$TransactionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTypeView()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVoucherAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/history/Transaction;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
