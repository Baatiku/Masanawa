.class public final Lteam/opay/core/api/GraphQL$UserTransaction;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/core/api/GraphQL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserTransaction"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008V\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00dd\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0005\u0012\u0006\u0010 \u001a\u00020\u0005\u0012\u0006\u0010!\u001a\u00020\u0005\u0012\u0006\u0010\"\u001a\u00020\u0018\u0012\u0008\u0010$\u001a\u0004\u0018\u00010#\u0012\u0008\u0010%\u001a\u0004\u0018\u00010#\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010-\u001a\u0004\u0018\u00010,\u0012\u0008\u0010/\u001a\u0004\u0018\u00010.\u0012\u0006\u00100\u001a\u00020\u0005\u0012\u0006\u00101\u001a\u00020\u0005\u0012\u0006\u00102\u001a\u00020\u0005\u0012\u0008\u00103\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u00104\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u00105\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00107\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00108\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u00109\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010:\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010;\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010<\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010>\u001a\u0004\u0018\u00010=\u0012\u000e\u0010A\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010D\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008D\u0010EJ\u0010\u0010F\u001a\u00020=H\u00d6\u0001\u00a2\u0006\u0004\u0008F\u0010GJ\u001a\u0010I\u001a\u00020\u00182\u0008\u0010H\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008I\u0010JR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010ER\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008N\u0010L\u001a\u0004\u0008O\u0010ER\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008P\u0010Q\u001a\u0004\u0008N\u0010RR\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008S\u0010L\u001a\u0004\u0008T\u0010ER\u001a\u0010\u0008\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008U\u0010L\u001a\u0004\u0008V\u0010ER\u001a\u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008W\u0010L\u001a\u0004\u0008X\u0010ER\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\R\u001a\u0010\u000c\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008]\u0010L\u001a\u0004\u0008^\u0010ER\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008_\u0010L\u001a\u0004\u0008`\u0010ER\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008a\u0010L\u001a\u0004\u0008b\u0010ER\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u001a\u0010\u0011\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008g\u0010L\u001a\u0004\u0008h\u0010ER\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008X\u0010j\u001a\u0004\u0008m\u0010lR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008n\u0010L\u001a\u0004\u0008]\u0010ER\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008o\u0010L\u001a\u0004\u0008p\u0010ER\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008q\u0010L\u001a\u0004\u0008r\u0010ER\u001a\u0010\u0019\u001a\u00020\u00188\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008M\u0010s\u001a\u0004\u0008t\u0010uR\u001a\u0010\u001a\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008v\u0010L\u001a\u0004\u0008w\u0010ER\u001a\u0010\u001b\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008x\u0010L\u001a\u0004\u0008y\u0010ER\u001a\u0010\u001c\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008p\u0010L\u001a\u0004\u0008z\u0010ER\u001a\u0010\u001d\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008{\u0010L\u001a\u0004\u0008v\u0010ER\u001a\u0010\u001e\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008|\u0010L\u001a\u0004\u0008}\u0010ER\u001a\u0010\u001f\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008~\u0010Q\u001a\u0004\u0008P\u0010RR\u001a\u0010 \u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008^\u0010Q\u001a\u0004\u0008S\u0010RR\u001a\u0010!\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008z\u0010Q\u001a\u0004\u0008q\u0010RR\u001a\u0010\"\u001a\u00020\u00188\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u007f\u0010s\u001a\u0004\u0008c\u0010uR\u001e\u0010$\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008`\u0010\u0080\u0001\u001a\u0005\u0008_\u0010\u0081\u0001R\u001f\u0010%\u001a\u0004\u0018\u00010#8\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0005\u0008b\u0010\u0080\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0081\u0001R\u001e\u0010&\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0083\u0001\u0010L\u001a\u0005\u0008\u0084\u0001\u0010ER\u001c\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008y\u0010L\u001a\u0004\u0008o\u0010ER\u001d\u0010(\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008r\u0010L\u001a\u0005\u0008\u0085\u0001\u0010ER\u001f\u0010*\u001a\u0004\u0018\u00010)8\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0005\u0008w\u0010\u0086\u0001\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010+\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008T\u0010L\u001a\u0004\u0008Y\u0010ER\u001e\u0010-\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008V\u0010\u0089\u0001\u001a\u0005\u0008W\u0010\u008a\u0001R\u001f\u0010/\u001a\u0004\u0018\u00010.8\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u0082\u0001\u0010\u008b\u0001\u001a\u0005\u0008i\u0010\u008c\u0001R\u001a\u00100\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008t\u0010Q\u001a\u0004\u0008a\u0010RR\u001b\u00101\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u008d\u0001\u0010Q\u001a\u0004\u0008|\u0010RR\u001b\u00102\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0087\u0001\u0010Q\u001a\u0004\u0008n\u0010RR\u001d\u00103\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0084\u0001\u0010Q\u001a\u0004\u0008g\u0010RR\u001c\u00104\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008}\u0010Q\u001a\u0004\u0008K\u0010RR\u001d\u00105\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008h\u0010Q\u001a\u0005\u0008\u008e\u0001\u0010RR\u001c\u00106\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008e\u0010L\u001a\u0004\u0008U\u0010ER\u001d\u00107\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u008e\u0001\u0010L\u001a\u0004\u0008~\u0010ER\u001d\u00108\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008k\u0010L\u001a\u0005\u0008\u0083\u0001\u0010ER\u001c\u00109\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008m\u0010L\u001a\u0004\u0008x\u0010ER\u001d\u0010:\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\r\n\u0005\u0008\u0085\u0001\u0010L\u001a\u0004\u0008\u007f\u0010ER\u001d\u0010;\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\r\n\u0004\u0008[\u0010Q\u001a\u0005\u0008\u008f\u0001\u0010RR\u001e\u0010<\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0090\u0001\u0010L\u001a\u0005\u0008\u0090\u0001\u0010ER\u001f\u0010>\u001a\u0004\u0018\u00010=8\u0006X\u0087\u0004\u00a2\u0006\u000f\n\u0006\u0008\u008f\u0001\u0010\u0091\u0001\u001a\u0005\u0008{\u0010\u0092\u0001R&\u0010A\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u0095\u0001\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL$UserTransaction;",
        "",
        "",
        "id",
        "details",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "amount",
        "referrer",
        "referrerAmount",
        "date",
        "Lteam/opay/core/api/GraphQL$TransactionType;",
        "type",
        "paymentInstrument",
        "phoneNumber",
        "principalPhoneNumber",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceType",
        "serviceName",
        "Lteam/opay/core/api/GraphQL$TransactionState;",
        "state",
        "stateHint",
        "cashback",
        "newCashBack",
        "recipientBankName",
        "",
        "refunded",
        "recipientName",
        "recipientAccount",
        "paymentInstrumentNumber",
        "message",
        "serviceID",
        "amountAfterFee",
        "balanceAfter",
        "fee",
        "chargedBack",
        "Lteam/opay/core/api/GraphQL$ReferenceData;",
        "chargebackData",
        "refundData",
        "senderPhone",
        "externalReference",
        "terminalID",
        "Lteam/opay/core/api/GraphQL$SenderData;",
        "senderData",
        "businessName",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "businessCategory",
        "Lteam/opay/core/api/GraphQL$Template;",
        "coupon",
        "chargedAmount",
        "paidAmount",
        "discountAmount",
        "commisionAmount",
        "additionalAmount",
        "stampDuty",
        "billName",
        "payInformation",
        "rechargePIN",
        "miscData",
        "paymentType",
        "voucherAmount",
        "typeView",
        "",
        "opType",
        "",
        "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
        "revenueBreakdownList",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$SenderData;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "r",
        "b",
        "getDetails",
        "c",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "d",
        "H",
        "e",
        "I",
        "f",
        "n",
        "g",
        "Lteam/opay/core/api/GraphQL$TransactionType;",
        "V",
        "()Lteam/opay/core/api/GraphQL$TransactionType;",
        "h",
        "y",
        "i",
        "B",
        "j",
        "C",
        "k",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "Q",
        "()Lteam/opay/core/api/GraphQL$ServiceType;",
        "l",
        "P",
        "m",
        "Lteam/opay/core/api/GraphQL$TransactionState;",
        "S",
        "()Lteam/opay/core/api/GraphQL$TransactionState;",
        "T",
        "o",
        "p",
        "u",
        "q",
        "F",
        "Z",
        "K",
        "()Z",
        "s",
        "G",
        "t",
        "E",
        "z",
        "v",
        "w",
        "O",
        "x",
        "A",
        "Lteam/opay/core/api/GraphQL$ReferenceData;",
        "()Lteam/opay/core/api/GraphQL$ReferenceData;",
        "J",
        "D",
        "N",
        "U",
        "Lteam/opay/core/api/GraphQL$SenderData;",
        "M",
        "()Lteam/opay/core/api/GraphQL$SenderData;",
        "Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "()Lteam/opay/core/api/GraphQL$BusinessCategory;",
        "Lteam/opay/core/api/GraphQL$Template;",
        "()Lteam/opay/core/api/GraphQL$Template;",
        "L",
        "R",
        "X",
        "W",
        "Ljava/lang/Integer;",
        "()Ljava/lang/Integer;",
        "Y",
        "Ljava/util/List;",
        "()Ljava/util/List;",
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
.field private final A:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chargedBack"
    .end annotation
.end field

.field private final B:Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chargebackData"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final C:Lteam/opay/core/api/GraphQL$ReferenceData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refundData"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final D:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "senderPhone"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final E:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "externalReference"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final F:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "terminalID"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final G:Lteam/opay/core/api/GraphQL$SenderData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final H:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "businessName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final I:Lteam/opay/core/api/GraphQL$BusinessCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "businessCategory"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final J:Lteam/opay/core/api/GraphQL$Template;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coupon"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final K:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chargedAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final L:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paidAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final M:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discountAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final N:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "commisionAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final O:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "additionalAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final P:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stampDuty"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final R:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payInformation"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final S:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rechargePIN"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final T:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "miscData"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final U:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final V:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final W:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "typeView"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final X:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "opType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final Y:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "revenueBreakdownList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referrer"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "referrerAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unixDate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lteam/opay/core/api/GraphQL$TransactionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentInstrumentName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientPhone"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Lteam/opay/core/api/GraphQL$ServiceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Lteam/opay/core/api/GraphQL$TransactionState;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stateHint"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cashback"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "newCashBack"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientBankName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refunded"
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientName"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final t:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipientAccount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final u:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentInstrumentNumber"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final w:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceID"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final x:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amountAfterFee"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final y:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "balanceAfter"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final z:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fee"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$TransactionState;Lteam/opay/core/api/GraphQL$TransactionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;ZLteam/opay/core/api/GraphQL$ReferenceData;Lteam/opay/core/api/GraphQL$ReferenceData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$SenderData;Ljava/lang/String;Lteam/opay/core/api/GraphQL$BusinessCategory;Lteam/opay/core/api/GraphQL$Template;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/api/GraphQL$TransactionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lteam/opay/core/api/GraphQL$TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p26    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p28    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Lteam/opay/core/api/GraphQL$ReferenceData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Lteam/opay/core/api/GraphQL$SenderData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Lteam/opay/core/api/GraphQL$BusinessCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Lteam/opay/core/api/GraphQL$Template;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p38    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p39    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p40    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$TransactionType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Lteam/opay/core/api/GraphQL$TransactionState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Z",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Lteam/opay/core/api/GraphQL$ReferenceData;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$SenderData;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$BusinessCategory;",
            "Lteam/opay/core/api/GraphQL$Template;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lteam/opay/core/api/GraphQL$RevenueBreakdown;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p12

    move-object/from16 v10, p17

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p21

    move-object/from16 v14, p22

    move-object/from16 v15, p23

    move-object/from16 v0, p24

    const-string v0, "id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrerAmount"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrument"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientBankName"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientName"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAccount"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentInstrumentNumber"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceID"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountAfterFee"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "balanceAfter"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fee"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargedAmount"

    move-object/from16 v15, p37

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidAmount"

    move-object/from16 v15, p38

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discountAmount"

    move-object/from16 v15, p39

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p24

    .line 2
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->b:Ljava/lang/String;

    .line 4
    iput-object v3, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 5
    iput-object v4, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 6
    iput-object v5, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 7
    iput-object v6, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 9
    iput-object v7, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 10
    iput-object v8, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 11
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 12
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 13
    iput-object v9, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 18
    iput-object v10, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 20
    iput-object v11, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 21
    iput-object v12, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 22
    iput-object v13, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 23
    iput-object v14, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 25
    iput-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p25

    move-object/from16 v2, p26

    .line 26
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 27
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move/from16 v1, p27

    .line 28
    iput-boolean v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    move-object/from16 v1, p37

    move-object/from16 v2, p38

    .line 38
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    iput-object v2, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p43

    .line 44
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    move-object/from16 v1, p44

    .line 45
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    move-object/from16 v1, p45

    .line 46
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    move-object/from16 v1, p46

    .line 47
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    move-object/from16 v1, p47

    .line 48
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    move-object/from16 v1, p48

    .line 49
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-object/from16 v1, p49

    .line 50
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    move-object/from16 v1, p50

    .line 51
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    move-object/from16 v1, p51

    .line 52
    iput-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final L()Ljava/util/List;
    .locals 1
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

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Lteam/opay/core/api/GraphQL$SenderData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Lteam/opay/core/api/GraphQL$ServiceType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Lteam/opay/core/api/GraphQL$TransactionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final V()Lteam/opay/core/api/GraphQL$TransactionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lteam/opay/core/api/GraphQL$UserTransaction;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lteam/opay/core/api/GraphQL$UserTransaction;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 82
    .line 83
    if-eq v1, v3, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 120
    .line 121
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 122
    .line 123
    if-eq v1, v3, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    return v2

    .line 137
    :cond_d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 138
    .line 139
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 140
    .line 141
    if-eq v1, v3, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 145
    .line 146
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 147
    .line 148
    if-eq v1, v3, :cond_f

    .line 149
    .line 150
    return v2

    .line 151
    :cond_f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_10

    .line 160
    .line 161
    return v2

    .line 162
    :cond_10
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 163
    .line 164
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_11

    .line 171
    .line 172
    return v2

    .line 173
    :cond_11
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_12

    .line 182
    .line 183
    return v2

    .line 184
    :cond_12
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 185
    .line 186
    iget-boolean v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 187
    .line 188
    if-eq v1, v3, :cond_13

    .line 189
    .line 190
    return v2

    .line 191
    :cond_13
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_14

    .line 200
    .line 201
    return v2

    .line 202
    :cond_14
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_15

    .line 211
    .line 212
    return v2

    .line 213
    :cond_15
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_16

    .line 222
    .line 223
    return v2

    .line 224
    :cond_16
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_17

    .line 233
    .line 234
    return v2

    .line 235
    :cond_17
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_18

    .line 244
    .line 245
    return v2

    .line 246
    :cond_18
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 247
    .line 248
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 249
    .line 250
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_19

    .line 255
    .line 256
    return v2

    .line 257
    :cond_19
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 258
    .line 259
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 260
    .line 261
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-nez v1, :cond_1a

    .line 266
    .line 267
    return v2

    .line 268
    :cond_1a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 269
    .line 270
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 271
    .line 272
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    if-nez v1, :cond_1b

    .line 277
    .line 278
    return v2

    .line 279
    :cond_1b
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    .line 280
    .line 281
    iget-boolean v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    .line 282
    .line 283
    if-eq v1, v3, :cond_1c

    .line 284
    .line 285
    return v2

    .line 286
    :cond_1c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 287
    .line 288
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 289
    .line 290
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_1d

    .line 295
    .line 296
    return v2

    .line 297
    :cond_1d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 298
    .line 299
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 300
    .line 301
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_1e

    .line 306
    .line 307
    return v2

    .line 308
    :cond_1e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    .line 309
    .line 310
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_1f

    .line 317
    .line 318
    return v2

    .line 319
    :cond_1f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    .line 320
    .line 321
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    .line 322
    .line 323
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-nez v1, :cond_20

    .line 328
    .line 329
    return v2

    .line 330
    :cond_20
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    .line 331
    .line 332
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-nez v1, :cond_21

    .line 339
    .line 340
    return v2

    .line 341
    :cond_21
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    .line 342
    .line 343
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    .line 344
    .line 345
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-nez v1, :cond_22

    .line 350
    .line 351
    return v2

    .line 352
    :cond_22
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    .line 353
    .line 354
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    .line 355
    .line 356
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_23

    .line 361
    .line 362
    return v2

    .line 363
    :cond_23
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 364
    .line 365
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 366
    .line 367
    if-eq v1, v3, :cond_24

    .line 368
    .line 369
    return v2

    .line 370
    :cond_24
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    .line 371
    .line 372
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    .line 373
    .line 374
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-nez v1, :cond_25

    .line 379
    .line 380
    return v2

    .line 381
    :cond_25
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 382
    .line 383
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 384
    .line 385
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v1, :cond_26

    .line 390
    .line 391
    return v2

    .line 392
    :cond_26
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 393
    .line 394
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 395
    .line 396
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_27

    .line 401
    .line 402
    return v2

    .line 403
    :cond_27
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 404
    .line 405
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 406
    .line 407
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_28

    .line 412
    .line 413
    return v2

    .line 414
    :cond_28
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 415
    .line 416
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 417
    .line 418
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-nez v1, :cond_29

    .line 423
    .line 424
    return v2

    .line 425
    :cond_29
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 426
    .line 427
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 428
    .line 429
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-nez v1, :cond_2a

    .line 434
    .line 435
    return v2

    .line 436
    :cond_2a
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 437
    .line 438
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 439
    .line 440
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-nez v1, :cond_2b

    .line 445
    .line 446
    return v2

    .line 447
    :cond_2b
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    .line 448
    .line 449
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_2c

    .line 456
    .line 457
    return v2

    .line 458
    :cond_2c
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    .line 459
    .line 460
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_2d

    .line 467
    .line 468
    return v2

    .line 469
    :cond_2d
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    .line 470
    .line 471
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    if-nez v1, :cond_2e

    .line 478
    .line 479
    return v2

    .line 480
    :cond_2e
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    .line 481
    .line 482
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    .line 483
    .line 484
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-nez v1, :cond_2f

    .line 489
    .line 490
    return v2

    .line 491
    :cond_2f
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    .line 492
    .line 493
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-nez v1, :cond_30

    .line 500
    .line 501
    return v2

    .line 502
    :cond_30
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 503
    .line 504
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 505
    .line 506
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-nez v1, :cond_31

    .line 511
    .line 512
    return v2

    .line 513
    :cond_31
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    .line 514
    .line 515
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    .line 516
    .line 517
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    if-nez v1, :cond_32

    .line 522
    .line 523
    return v2

    .line 524
    :cond_32
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    .line 525
    .line 526
    iget-object v3, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    .line 527
    .line 528
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_33

    .line 533
    .line 534
    return v2

    .line 535
    :cond_33
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    .line 536
    .line 537
    iget-object p1, p1, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    .line 538
    .line 539
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-nez p1, :cond_34

    .line 544
    .line 545
    return v2

    .line 546
    :cond_34
    return v0
.end method

.method public final f()Lteam/opay/core/api/GraphQL$BusinessCategory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 19
    .line 20
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :goto_0
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v0, v1

    .line 75
    mul-int/lit8 v0, v0, 0x1f

    .line 76
    .line 77
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    .line 87
    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_1
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 100
    .line 101
    if-nez v1, :cond_2

    .line 102
    .line 103
    const/4 v1, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_2
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    .line 121
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 122
    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    :goto_3
    add-int/2addr v0, v1

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    .line 133
    .line 134
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 135
    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    :goto_4
    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    .line 147
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    .line 148
    .line 149
    if-nez v1, :cond_5

    .line 150
    .line 151
    const/4 v1, 0x0

    .line 152
    goto :goto_5

    .line 153
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    :goto_5
    add-int/2addr v0, v1

    .line 158
    mul-int/lit8 v0, v0, 0x1f

    .line 159
    .line 160
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 161
    .line 162
    if-nez v1, :cond_6

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    goto :goto_6

    .line 166
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    :goto_6
    add-int/2addr v0, v1

    .line 171
    mul-int/lit8 v0, v0, 0x1f

    .line 172
    .line 173
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    .line 182
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 183
    .line 184
    invoke-static {v1}, Lii8;->a(Z)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    .line 190
    .line 191
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    add-int/2addr v0, v1

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    .line 199
    .line 200
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    add-int/2addr v0, v1

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    .line 217
    .line 218
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x1f

    .line 226
    .line 227
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    add-int/2addr v0, v1

    .line 234
    mul-int/lit8 v0, v0, 0x1f

    .line 235
    .line 236
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 237
    .line 238
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    add-int/2addr v0, v1

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    .line 244
    .line 245
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 246
    .line 247
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    add-int/2addr v0, v1

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    .line 253
    .line 254
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 255
    .line 256
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    add-int/2addr v0, v1

    .line 261
    mul-int/lit8 v0, v0, 0x1f

    .line 262
    .line 263
    iget-boolean v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    .line 264
    .line 265
    invoke-static {v1}, Lii8;->a(Z)I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    add-int/2addr v0, v1

    .line 270
    mul-int/lit8 v0, v0, 0x1f

    .line 271
    .line 272
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 273
    .line 274
    if-nez v1, :cond_7

    .line 275
    .line 276
    const/4 v1, 0x0

    .line 277
    goto :goto_7

    .line 278
    :cond_7
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ReferenceData;->hashCode()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    :goto_7
    add-int/2addr v0, v1

    .line 283
    mul-int/lit8 v0, v0, 0x1f

    .line 284
    .line 285
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 286
    .line 287
    if-nez v1, :cond_8

    .line 288
    .line 289
    const/4 v1, 0x0

    .line 290
    goto :goto_8

    .line 291
    :cond_8
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$ReferenceData;->hashCode()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    :goto_8
    add-int/2addr v0, v1

    .line 296
    mul-int/lit8 v0, v0, 0x1f

    .line 297
    .line 298
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    .line 299
    .line 300
    if-nez v1, :cond_9

    .line 301
    .line 302
    const/4 v1, 0x0

    .line 303
    goto :goto_9

    .line 304
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    :goto_9
    add-int/2addr v0, v1

    .line 309
    mul-int/lit8 v0, v0, 0x1f

    .line 310
    .line 311
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    .line 312
    .line 313
    if-nez v1, :cond_a

    .line 314
    .line 315
    const/4 v1, 0x0

    .line 316
    goto :goto_a

    .line 317
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    :goto_a
    add-int/2addr v0, v1

    .line 322
    mul-int/lit8 v0, v0, 0x1f

    .line 323
    .line 324
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    .line 325
    .line 326
    if-nez v1, :cond_b

    .line 327
    .line 328
    const/4 v1, 0x0

    .line 329
    goto :goto_b

    .line 330
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    :goto_b
    add-int/2addr v0, v1

    .line 335
    mul-int/lit8 v0, v0, 0x1f

    .line 336
    .line 337
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    .line 338
    .line 339
    if-nez v1, :cond_c

    .line 340
    .line 341
    const/4 v1, 0x0

    .line 342
    goto :goto_c

    .line 343
    :cond_c
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$SenderData;->hashCode()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    :goto_c
    add-int/2addr v0, v1

    .line 348
    mul-int/lit8 v0, v0, 0x1f

    .line 349
    .line 350
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    .line 351
    .line 352
    if-nez v1, :cond_d

    .line 353
    .line 354
    const/4 v1, 0x0

    .line 355
    goto :goto_d

    .line 356
    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    :goto_d
    add-int/2addr v0, v1

    .line 361
    mul-int/lit8 v0, v0, 0x1f

    .line 362
    .line 363
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 364
    .line 365
    if-nez v1, :cond_e

    .line 366
    .line 367
    const/4 v1, 0x0

    .line 368
    goto :goto_e

    .line 369
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    :goto_e
    add-int/2addr v0, v1

    .line 374
    mul-int/lit8 v0, v0, 0x1f

    .line 375
    .line 376
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    .line 377
    .line 378
    if-nez v1, :cond_f

    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    goto :goto_f

    .line 382
    :cond_f
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$Template;->hashCode()I

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    :goto_f
    add-int/2addr v0, v1

    .line 387
    mul-int/lit8 v0, v0, 0x1f

    .line 388
    .line 389
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 390
    .line 391
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    add-int/2addr v0, v1

    .line 396
    mul-int/lit8 v0, v0, 0x1f

    .line 397
    .line 398
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 399
    .line 400
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    add-int/2addr v0, v1

    .line 405
    mul-int/lit8 v0, v0, 0x1f

    .line 406
    .line 407
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 408
    .line 409
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    add-int/2addr v0, v1

    .line 414
    mul-int/lit8 v0, v0, 0x1f

    .line 415
    .line 416
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 417
    .line 418
    if-nez v1, :cond_10

    .line 419
    .line 420
    const/4 v1, 0x0

    .line 421
    goto :goto_10

    .line 422
    :cond_10
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    :goto_10
    add-int/2addr v0, v1

    .line 427
    mul-int/lit8 v0, v0, 0x1f

    .line 428
    .line 429
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 430
    .line 431
    if-nez v1, :cond_11

    .line 432
    .line 433
    const/4 v1, 0x0

    .line 434
    goto :goto_11

    .line 435
    :cond_11
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    :goto_11
    add-int/2addr v0, v1

    .line 440
    mul-int/lit8 v0, v0, 0x1f

    .line 441
    .line 442
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 443
    .line 444
    if-nez v1, :cond_12

    .line 445
    .line 446
    const/4 v1, 0x0

    .line 447
    goto :goto_12

    .line 448
    :cond_12
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    :goto_12
    add-int/2addr v0, v1

    .line 453
    mul-int/lit8 v0, v0, 0x1f

    .line 454
    .line 455
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    .line 456
    .line 457
    if-nez v1, :cond_13

    .line 458
    .line 459
    const/4 v1, 0x0

    .line 460
    goto :goto_13

    .line 461
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    :goto_13
    add-int/2addr v0, v1

    .line 466
    mul-int/lit8 v0, v0, 0x1f

    .line 467
    .line 468
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    .line 469
    .line 470
    if-nez v1, :cond_14

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    goto :goto_14

    .line 474
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    :goto_14
    add-int/2addr v0, v1

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    .line 480
    .line 481
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    .line 482
    .line 483
    if-nez v1, :cond_15

    .line 484
    .line 485
    const/4 v1, 0x0

    .line 486
    goto :goto_15

    .line 487
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    :goto_15
    add-int/2addr v0, v1

    .line 492
    mul-int/lit8 v0, v0, 0x1f

    .line 493
    .line 494
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    .line 495
    .line 496
    if-nez v1, :cond_16

    .line 497
    .line 498
    const/4 v1, 0x0

    .line 499
    goto :goto_16

    .line 500
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    :goto_16
    add-int/2addr v0, v1

    .line 505
    mul-int/lit8 v0, v0, 0x1f

    .line 506
    .line 507
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    .line 508
    .line 509
    if-nez v1, :cond_17

    .line 510
    .line 511
    const/4 v1, 0x0

    .line 512
    goto :goto_17

    .line 513
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    :goto_17
    add-int/2addr v0, v1

    .line 518
    mul-int/lit8 v0, v0, 0x1f

    .line 519
    .line 520
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 521
    .line 522
    if-nez v1, :cond_18

    .line 523
    .line 524
    const/4 v1, 0x0

    .line 525
    goto :goto_18

    .line 526
    :cond_18
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    :goto_18
    add-int/2addr v0, v1

    .line 531
    mul-int/lit8 v0, v0, 0x1f

    .line 532
    .line 533
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    .line 534
    .line 535
    if-nez v1, :cond_19

    .line 536
    .line 537
    const/4 v1, 0x0

    .line 538
    goto :goto_19

    .line 539
    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    :goto_19
    add-int/2addr v0, v1

    .line 544
    mul-int/lit8 v0, v0, 0x1f

    .line 545
    .line 546
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    .line 547
    .line 548
    if-nez v1, :cond_1a

    .line 549
    .line 550
    const/4 v1, 0x0

    .line 551
    goto :goto_1a

    .line 552
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 553
    .line 554
    .line 555
    move-result v1

    .line 556
    :goto_1a
    add-int/2addr v0, v1

    .line 557
    mul-int/lit8 v0, v0, 0x1f

    .line 558
    .line 559
    iget-object v1, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    .line 560
    .line 561
    if-nez v1, :cond_1b

    .line 562
    .line 563
    goto :goto_1b

    .line 564
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    :goto_1b
    add-int/2addr v0, v2

    .line 569
    return v0
.end method

.method public final i()Lteam/opay/core/api/GraphQL$ReferenceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Lteam/opay/core/api/GraphQL$Template;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 53
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->g:Lteam/opay/core/api/GraphQL$TransactionType;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->k:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->m:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->n:Lteam/opay/core/api/GraphQL$TransactionState;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->o:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->q:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v15

    .line 42
    .line 43
    iget-boolean v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->r:Z

    .line 44
    .line 45
    move/from16 v19, v15

    .line 46
    .line 47
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->s:Ljava/lang/String;

    .line 48
    .line 49
    move-object/from16 v20, v15

    .line 50
    .line 51
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->t:Ljava/lang/String;

    .line 52
    .line 53
    move-object/from16 v21, v15

    .line 54
    .line 55
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 56
    .line 57
    move-object/from16 v22, v15

    .line 58
    .line 59
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->v:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v23, v15

    .line 62
    .line 63
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->w:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v24, v15

    .line 66
    .line 67
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 68
    .line 69
    move-object/from16 v25, v15

    .line 70
    .line 71
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->y:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 72
    .line 73
    move-object/from16 v26, v15

    .line 74
    .line 75
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->z:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 76
    .line 77
    move-object/from16 v27, v15

    .line 78
    .line 79
    iget-boolean v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->A:Z

    .line 80
    .line 81
    move/from16 v28, v15

    .line 82
    .line 83
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->B:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 84
    .line 85
    move-object/from16 v29, v15

    .line 86
    .line 87
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->C:Lteam/opay/core/api/GraphQL$ReferenceData;

    .line 88
    .line 89
    move-object/from16 v30, v15

    .line 90
    .line 91
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->D:Ljava/lang/String;

    .line 92
    .line 93
    move-object/from16 v31, v15

    .line 94
    .line 95
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->E:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v15

    .line 98
    .line 99
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->F:Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v33, v15

    .line 102
    .line 103
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->G:Lteam/opay/core/api/GraphQL$SenderData;

    .line 104
    .line 105
    move-object/from16 v34, v15

    .line 106
    .line 107
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->H:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v35, v15

    .line 110
    .line 111
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->I:Lteam/opay/core/api/GraphQL$BusinessCategory;

    .line 112
    .line 113
    move-object/from16 v36, v15

    .line 114
    .line 115
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->J:Lteam/opay/core/api/GraphQL$Template;

    .line 116
    .line 117
    move-object/from16 v37, v15

    .line 118
    .line 119
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->K:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 120
    .line 121
    move-object/from16 v38, v15

    .line 122
    .line 123
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 124
    .line 125
    move-object/from16 v39, v15

    .line 126
    .line 127
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->M:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 128
    .line 129
    move-object/from16 v40, v15

    .line 130
    .line 131
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->N:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 132
    .line 133
    move-object/from16 v41, v15

    .line 134
    .line 135
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->O:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 136
    .line 137
    move-object/from16 v42, v15

    .line 138
    .line 139
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->P:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 140
    .line 141
    move-object/from16 v43, v15

    .line 142
    .line 143
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->Q:Ljava/lang/String;

    .line 144
    .line 145
    move-object/from16 v44, v15

    .line 146
    .line 147
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v45, v15

    .line 150
    .line 151
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->S:Ljava/lang/String;

    .line 152
    .line 153
    move-object/from16 v46, v15

    .line 154
    .line 155
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->T:Ljava/lang/String;

    .line 156
    .line 157
    move-object/from16 v47, v15

    .line 158
    .line 159
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->U:Ljava/lang/String;

    .line 160
    .line 161
    move-object/from16 v48, v15

    .line 162
    .line 163
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->V:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 164
    .line 165
    move-object/from16 v49, v15

    .line 166
    .line 167
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->W:Ljava/lang/String;

    .line 168
    .line 169
    move-object/from16 v50, v15

    .line 170
    .line 171
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    .line 172
    .line 173
    move-object/from16 v51, v15

    .line 174
    .line 175
    iget-object v15, v0, Lteam/opay/core/api/GraphQL$UserTransaction;->Y:Ljava/util/List;

    .line 176
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    move-object/from16 v52, v15

    .line 183
    .line 184
    const-string v15, "UserTransaction(id="

    .line 185
    .line 186
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", details="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", amount="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", referrer="

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", referrerAmount="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", date="

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v1, ", type="

    .line 233
    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", paymentInstrument="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v1, ", phoneNumber="

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ", principalPhoneNumber="

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", serviceType="

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v1, ", serviceName="

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ", state="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v1, ", stateHint="

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v1, ", cashback="

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    move-object/from16 v1, v16

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v1, ", newCashBack="

    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-object/from16 v1, v17

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v1, ", recipientBankName="

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    move-object/from16 v1, v18

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v1, ", refunded="

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    move/from16 v1, v19

    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, ", recipientName="

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    move-object/from16 v1, v20

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, ", recipientAccount="

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    move-object/from16 v1, v21

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v1, ", paymentInstrumentNumber="

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    move-object/from16 v1, v22

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v1, ", message="

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-object/from16 v1, v23

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v1, ", serviceID="

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    move-object/from16 v1, v24

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v1, ", amountAfterFee="

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move-object/from16 v1, v25

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, ", balanceAfter="

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move-object/from16 v1, v26

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v1, ", fee="

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    move-object/from16 v1, v27

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, ", chargedBack="

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    move/from16 v1, v28

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v1, ", chargebackData="

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    move-object/from16 v1, v29

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v1, ", refundData="

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    move-object/from16 v1, v30

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v1, ", senderPhone="

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    move-object/from16 v1, v31

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v1, ", externalReference="

    .line 457
    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    move-object/from16 v1, v32

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v1, ", terminalID="

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    move-object/from16 v1, v33

    .line 472
    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v1, ", senderData="

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    move-object/from16 v1, v34

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v1, ", businessName="

    .line 487
    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    move-object/from16 v1, v35

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v1, ", businessCategory="

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    move-object/from16 v1, v36

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v1, ", coupon="

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    move-object/from16 v1, v37

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v1, ", chargedAmount="

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    move-object/from16 v1, v38

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    const-string v1, ", paidAmount="

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    move-object/from16 v1, v39

    .line 532
    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    const-string v1, ", discountAmount="

    .line 537
    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    move-object/from16 v1, v40

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v1, ", commisionAmount="

    .line 547
    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    move-object/from16 v1, v41

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    const-string v1, ", additionalAmount="

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    move-object/from16 v1, v42

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v1, ", stampDuty="

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    move-object/from16 v1, v43

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string v1, ", billName="

    .line 577
    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    move-object/from16 v1, v44

    .line 582
    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v1, ", payInformation="

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    move-object/from16 v1, v45

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v1, ", rechargePIN="

    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    move-object/from16 v1, v46

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string v1, ", miscData="

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    move-object/from16 v1, v47

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v1, ", paymentType="

    .line 617
    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    move-object/from16 v1, v48

    .line 622
    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v1, ", voucherAmount="

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    move-object/from16 v1, v49

    .line 632
    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    const-string v1, ", typeView="

    .line 637
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    move-object/from16 v1, v50

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    const-string v1, ", opType="

    .line 647
    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    move-object/from16 v1, v51

    .line 652
    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    const-string v1, ", revenueBreakdownList="

    .line 657
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    move-object/from16 v1, v52

    .line 662
    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v1, ")"

    .line 667
    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->X:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final w()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->L:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->R:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/api/GraphQL$UserTransaction;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
