.class public final Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;
.super Ljava/lang/Object;
.source "UserTransactionsDetailRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/history/UserTransactionsDetailRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionDetailV2"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008)\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00c9\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0010\u0008\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010$\u001a\u00020#H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010\'\u001a\u00020\u00102\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\'\u0010(R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010\"R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00080\u00102R\u001c\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00087\u00101\u001a\u0004\u00088\u00102R\u001c\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010*\u001a\u0004\u00089\u0010\"R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00088\u0010>\u001a\u0004\u00087\u0010?R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010*\u001a\u0004\u0008A\u0010\"R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00085\u0010*\u001a\u0004\u0008B\u0010\"R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008B\u0010*\u001a\u0004\u0008:\u0010\"R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010*\u001a\u0004\u00083\u0010\"R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010C\u001a\u0004\u0008,\u0010DR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008E\u0010>\u001a\u0004\u0008E\u0010?R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008F\u0010HR\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008<\u00101\u001a\u0004\u0008)\u00102R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008@\u0010K\u00a8\u0006L"
    }
    d2 = {
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;",
        "",
        "",
        "actionBarTitle",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;",
        "detailsHeader",
        "",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionBodyItem;",
        "bodyList",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;",
        "quickFaq",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;",
        "linkList",
        "transactionReceiptShowText",
        "",
        "transactionTime",
        "",
        "customerServiceSwitch",
        "serviceType",
        "realServiceType",
        "flowType",
        "businessType",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "bankInfoResponse",
        "transactionSplit",
        "Lteam/opay/pay/history/details/TransactionSplitBody;",
        "transactionSplitBody",
        "Lteam/opay/odialog/net/AdDataItem;",
        "adInfos",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;",
        "moreActionInfo",
        "<init>",
        "(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;Ljava/lang/Boolean;Lteam/opay/pay/history/details/TransactionSplitBody;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;)V",
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
        "getActionBarTitle",
        "b",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;",
        "f",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;",
        "c",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "d",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;",
        "j",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;",
        "e",
        "h",
        "m",
        "g",
        "Ljava/lang/Long;",
        "p",
        "()Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "()Ljava/lang/Boolean;",
        "i",
        "l",
        "k",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "n",
        "o",
        "Lteam/opay/pay/history/details/TransactionSplitBody;",
        "()Lteam/opay/pay/history/details/TransactionSplitBody;",
        "q",
        "Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;",
        "()Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;",
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
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionBodyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quickFaq"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionReceiptShowText"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionTime"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final h:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customerServiceSwitch"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realServiceType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flowType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "businessType"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bankInfoResponse"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final n:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionSplit"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final o:Lteam/opay/pay/history/details/TransactionSplitBody;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transactionSplitBody"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adInfos"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moreActionInfo"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;Ljava/lang/Boolean;Lteam/opay/pay/history/details/TransactionSplitBody;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lteam/opay/pay/history/details/TransactionSplitBody;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionBodyItem;",
            ">;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Ljava/lang/Boolean;",
            "Lteam/opay/pay/history/details/TransactionSplitBody;",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;Ljava/lang/Boolean;Lteam/opay/pay/history/details/TransactionSplitBody;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    goto :goto_0

    :cond_0
    move-object/from16 v16, p13

    :goto_0
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move-object/from16 v19, v2

    goto :goto_1

    :cond_1
    move-object/from16 v19, p16

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move-object/from16 v20, v2

    goto :goto_2

    :cond_2
    move-object/from16 v20, p17

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    .line 19
    invoke-direct/range {v3 .. v20}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;-><init>(Ljava/lang/String;Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;Ljava/lang/Boolean;Lteam/opay/pay/history/details/TransactionSplitBody;Ljava/util/List;Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/odialog/net/AdDataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionBodyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

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
    instance-of v1, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

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
    check-cast p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

    .line 36
    .line 37
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    .line 47
    .line 48
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

    .line 58
    .line 59
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

    .line 80
    .line 81
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 146
    .line 147
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

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
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    .line 157
    .line 158
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 168
    .line 169
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    .line 179
    .line 180
    iget-object v3, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 190
    .line 191
    iget-object p1, p1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 192
    .line 193
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    return v0
.end method

.method public final f()Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/history/UserTransactionsDetailRepository$LinkButton;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    const/4 v2, 0x0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Lteam/opay/pay/history/details/TransactionSplitBody;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    goto :goto_10

    .line 214
    :cond_10
    invoke-virtual {v2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_10
    add-int/2addr v0, v1

    .line 219
    return v0
.end method

.method public final i()Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lteam/opay/pay/history/details/TransactionSplitBody;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->b:Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionHeader;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->d:Lteam/opay/pay/history/UserTransactionsDetailRepository$QuickFaq;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->e:Ljava/util/List;

    .line 12
    .line 13
    iget-object v6, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->g:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->h:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->l:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->m:Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->n:Ljava/lang/Boolean;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->o:Lteam/opay/pay/history/details/TransactionSplitBody;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->p:Ljava/util/List;

    .line 36
    .line 37
    move-object/from16 v17, v15

    .line 38
    .line 39
    iget-object v15, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionDetailV2;->q:Lteam/opay/pay/history/UserTransactionsDetailRepository$MoreActionInfo;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    move-object/from16 v18, v15

    .line 47
    .line 48
    const-string v15, "TransactionDetailV2(actionBarTitle="

    .line 49
    .line 50
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", detailsHeader="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", bodyList="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", quickFaq="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", linkList="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", transactionReceiptShowText="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", transactionTime="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", customerServiceSwitch="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", serviceType="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", realServiceType="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", flowType="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", businessType="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", bankInfoResponse="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", transactionSplit="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", transactionSplitBody="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-object/from16 v1, v16

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", adInfos="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-object/from16 v1, v17

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", moreActionInfo="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-object/from16 v1, v18

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ")"

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0
.end method
