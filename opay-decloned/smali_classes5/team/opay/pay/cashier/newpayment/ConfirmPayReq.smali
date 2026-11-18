.class public final Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;
.super Ljava/lang/Object;
.source "NewPaymentData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008C\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a5\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001a\u0010 \u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008 \u0010!R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010&R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010*\"\u0004\u0008/\u0010,R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010#\u001a\u0004\u00081\u0010\u001b\"\u0004\u00082\u0010&R$\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010#\u001a\u0004\u00084\u0010\u001b\"\u0004\u00085\u0010&R$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010(\u001a\u0004\u00087\u0010*\"\u0004\u00088\u0010,R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010(\u001a\u0004\u0008:\u0010*\"\u0004\u0008;\u0010,R*\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010#\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008C\u0010&R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010#\u001a\u0004\u0008K\u0010\u001b\"\u0004\u0008L\u0010&R$\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^\u00a8\u0006_"
    }
    d2 = {
        "Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;",
        "",
        "",
        "orderNo",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "actualPayAmount",
        "feeAmount",
        "payChannel",
        "voucherId",
        "doubleDisCountAmount",
        "bonusMoney",
        "",
        "Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
        "combinPayInfos",
        "bankCardId",
        "Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;",
        "activityInfo",
        "bankCardCvv",
        "",
        "valided",
        "Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;",
        "verifyReqInfo",
        "Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;",
        "validPoolInfo",
        "<init>",
        "(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "getOrderNo",
        "setOrderNo",
        "(Ljava/lang/String;)V",
        "b",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "getActualPayAmount",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "setActualPayAmount",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "c",
        "getFeeAmount",
        "setFeeAmount",
        "d",
        "getPayChannel",
        "setPayChannel",
        "e",
        "getVoucherId",
        "setVoucherId",
        "f",
        "getDoubleDisCountAmount",
        "setDoubleDisCountAmount",
        "g",
        "getBonusMoney",
        "setBonusMoney",
        "h",
        "Ljava/util/List;",
        "getCombinPayInfos",
        "()Ljava/util/List;",
        "setCombinPayInfos",
        "(Ljava/util/List;)V",
        "i",
        "setBankCardId",
        "j",
        "Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;",
        "getActivityInfo",
        "()Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;",
        "setActivityInfo",
        "(Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;)V",
        "k",
        "getBankCardCvv",
        "setBankCardCvv",
        "l",
        "Ljava/lang/Boolean;",
        "getValided",
        "()Ljava/lang/Boolean;",
        "setValided",
        "(Ljava/lang/Boolean;)V",
        "m",
        "Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;",
        "getVerifyReqInfo",
        "()Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;",
        "setVerifyReqInfo",
        "(Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;)V",
        "n",
        "Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;",
        "getValidPoolInfo",
        "()Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;",
        "setValidPoolInfo",
        "(Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;)V",
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
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderNo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actualPayAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feeAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payChannel"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voucherId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doubleDisCountAmount"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bonusMoney"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "combinPayInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankCardId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activityInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankCardCvv"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "valided"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verifyReqInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validPoolInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/util/List<",
            "Lteam/opay/pay/cashier/newpayment/NewPayChannelItem;",
            ">;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;",
            "Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "orderNo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualPayAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payChannel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifyReqInfo"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validPoolInfo"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 5
    iput-object p4, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    iput-object p7, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 9
    iput-object p8, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->h:Ljava/util/List;

    .line 10
    iput-object p9, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;

    .line 12
    iput-object p11, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->k:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->l:Ljava/lang/Boolean;

    .line 14
    iput-object p13, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 15
    iput-object p14, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    .line 16
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 17
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v10, v2

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v13, v2

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v14, v2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    move-object/from16 v3, p0

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    .line 19
    invoke-direct/range {v3 .. v17}, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/util/List;Ljava/lang/String;Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;Ljava/lang/String;Ljava/lang/Boolean;Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

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
    instance-of v1, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

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
    check-cast p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->e:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->e:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->h:Ljava/util/List;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->h:Ljava/util/List;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->k:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->k:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->l:Ljava/lang/Boolean;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->l:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 146
    .line 147
    iget-object v3, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    .line 157
    .line 158
    iget-object p1, p1, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    .line 159
    .line 160
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-nez p1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    .line 11
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->d:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->e:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_0
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_1
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_2
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->h:Ljava/util/List;

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_3
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_4
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-virtual {v1}, Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_5
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    .line 115
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->k:Ljava/lang/String;

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    :goto_6
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->l:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-nez v1, :cond_7

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_7
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 141
    .line 142
    invoke-virtual {v1}, Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;->hashCode()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    .line 148
    .line 149
    iget-object v1, p0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    .line 150
    .line 151
    invoke-virtual {v1}, Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;->hashCode()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/2addr v0, v1

    .line 156
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->b:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->f:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->h:Ljava/util/List;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->j:Lteam/opay/pay/cashier/newpayment/DeskActivityInfo;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->l:Ljava/lang/Boolean;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->m:Lteam/opay/pay/cashier/newpayment/VerifyReqInfo;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/pay/cashier/newpayment/ConfirmPayReq;->n:Lteam/opay/pay/cashier/newpayment/ValidPoolInfo;

    .line 30
    .line 31
    new-instance v15, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "ConfirmPayReq(orderNo="

    .line 37
    .line 38
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", actualPayAmount="

    .line 45
    .line 46
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", feeAmount="

    .line 53
    .line 54
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", payChannel="

    .line 61
    .line 62
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", voucherId="

    .line 69
    .line 70
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", doubleDisCountAmount="

    .line 77
    .line 78
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", bonusMoney="

    .line 85
    .line 86
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", combinPayInfos="

    .line 93
    .line 94
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", bankCardId="

    .line 101
    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", activityInfo="

    .line 109
    .line 110
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", bankCardCvv="

    .line 117
    .line 118
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ", valided="

    .line 125
    .line 126
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v0, ", verifyReqInfo="

    .line 133
    .line 134
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", validPoolInfo="

    .line 141
    .line 142
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ")"

    .line 149
    .line 150
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0
.end method
