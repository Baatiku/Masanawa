.class public final Lteam/opay/core/payment/instruments/RoomPaymentInstrument;
.super Ljava/lang/Object;
.source "RoomPaymentInstrument.kt"

# interfaces
.implements Lteam/opay/core/api/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008J\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\n2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001a\u0010\u0006\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u0010\"\u001a\u0004\u0008)\u0010\u0019R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008!\u0010,R\u001a\u0010\t\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008-\u0010\"\u001a\u0004\u0008.\u0010\u0019R\u001a\u0010\u000b\u001a\u00020\n8\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001a\u0010\u000c\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u00083\u0010\"\u001a\u0004\u00084\u0010\u0019R\u001a\u0010\r\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u00085\u0010\"\u001a\u0004\u00086\u0010\u0019R\u001a\u0010\u000e\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u00087\u0010\"\u001a\u0004\u00088\u0010\u0019R\u001a\u0010\u000f\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010\"\u001a\u0004\u0008:\u0010\u0019R\u001a\u0010\u0010\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010\"\u001a\u0004\u0008<\u0010\u0019R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008*\u0010?R\u001a\u0010\u0013\u001a\u00020\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010\"\u001a\u0004\u0008(\u0010\u0019R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010\"\u001a\u0004\u0008B\u0010\u0019R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010\"\u001a\u0004\u0008$\u0010\u0019R\"\u0010H\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010\"\u001a\u0004\u0008E\u0010\u0019\"\u0004\u0008F\u0010GR\u001a\u0010K\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008I\u0010\"\u001a\u0004\u0008J\u0010\u0019R\u001a\u0010N\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008L\u0010\"\u001a\u0004\u0008M\u0010\u0019R\u001a\u0010Q\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008O\u0010\"\u001a\u0004\u0008P\u0010\u0019R\u001a\u0010T\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008R\u0010\"\u001a\u0004\u0008S\u0010\u0019R\u001a\u0010W\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008U\u0010\"\u001a\u0004\u0008V\u0010\u0019R\u001a\u0010Z\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008X\u0010\"\u001a\u0004\u0008Y\u0010\u0019R\u001a\u0010]\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008[\u0010\"\u001a\u0004\u0008\\\u0010\u0019R\u001a\u0010`\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008^\u0010\"\u001a\u0004\u0008_\u0010\u0019R\u001a\u0010c\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008a\u0010\"\u001a\u0004\u0008b\u0010\u0019R\u001a\u0010f\u001a\u00020\u00028\u0016X\u0097D\u00a2\u0006\u000c\n\u0004\u0008d\u0010\"\u001a\u0004\u0008e\u0010\u0019\u00a8\u0006g"
    }
    d2 = {
        "Lteam/opay/core/payment/instruments/RoomPaymentInstrument;",
        "Lteam/opay/core/api/b;",
        "",
        "id",
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
        "type",
        "displayName",
        "Lteam/opay/core/api/GraphQL$CoinsAccount;",
        "coinsAccount",
        "cardNumber",
        "",
        "cardSkipCvv",
        "bankCode",
        "bankName",
        "bankAccountNumber",
        "bankFirstName",
        "bankLastName",
        "Lteam/opay/core/api/GraphQL$MobileMoneyProvider;",
        "mobileMoneyProvider",
        "mobileMoneyPhoneNumber",
        "cardStatus",
        "invalidReason",
        "<init>",
        "(Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CoinsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$MobileMoneyProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Ljava/lang/String;",
        "getId",
        "b",
        "Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
        "getType",
        "()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;",
        "c",
        "getDisplayName",
        "d",
        "Lteam/opay/core/api/GraphQL$CoinsAccount;",
        "()Lteam/opay/core/api/GraphQL$CoinsAccount;",
        "e",
        "getCardNumber",
        "f",
        "Z",
        "getCardSkipCvv",
        "()Z",
        "g",
        "getBankCode",
        "h",
        "getBankName",
        "i",
        "getBankAccountNumber",
        "j",
        "getBankFirstName",
        "k",
        "getBankLastName",
        "l",
        "Lteam/opay/core/api/GraphQL$MobileMoneyProvider;",
        "()Lteam/opay/core/api/GraphQL$MobileMoneyProvider;",
        "m",
        "n",
        "getCardStatus",
        "o",
        "p",
        "getCvv",
        "setCvv",
        "(Ljava/lang/String;)V",
        "cvv",
        "q",
        "getEWithdrawalPhoneNumber",
        "eWithdrawalPhoneNumber",
        "r",
        "getEWithdrawalFac",
        "eWithdrawalFac",
        "s",
        "getBvn",
        "bvn",
        "t",
        "getDobYear",
        "dobYear",
        "u",
        "getDobMonth",
        "dobMonth",
        "v",
        "getDobDay",
        "dobDay",
        "w",
        "getDob",
        "dob",
        "x",
        "getIcon",
        "icon",
        "y",
        "getUrl",
        "url",
        "z",
        "getPayStatus",
        "payStatus",
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
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/GraphQL$CoinsAccount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Z

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CoinsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$MobileMoneyProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/GraphQL$CoinsAccount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lteam/opay/core/api/GraphQL$MobileMoneyProvider;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p13

    const-string v11, "id"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "type"

    invoke-static {p2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "displayName"

    invoke-static {p3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "cardNumber"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bankCode"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bankName"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bankAccountNumber"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bankFirstName"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "bankLastName"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "mobileMoneyPhoneNumber"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 4
    iput-object v3, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    move-object/from16 v1, p4

    .line 5
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 6
    iput-object v4, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    move/from16 v1, p6

    .line 7
    iput-boolean v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 8
    iput-object v5, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 9
    iput-object v6, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

    .line 10
    iput-object v7, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

    .line 11
    iput-object v8, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 12
    iput-object v9, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 14
    iput-object v10, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->p:Ljava/lang/String;

    .line 18
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->q:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->r:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->s:Ljava/lang/String;

    .line 21
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->t:Ljava/lang/String;

    .line 22
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->u:Ljava/lang/String;

    .line 23
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->v:Ljava/lang/String;

    .line 24
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->w:Ljava/lang/String;

    .line 25
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->x:Ljava/lang/String;

    .line 26
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->y:Ljava/lang/String;

    .line 27
    iput-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->z:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CoinsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$MobileMoneyProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p16

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 28
    const-string v1, "Y"

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, p14

    :goto_0
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object/from16 v17, v0

    goto :goto_1

    :cond_1
    move-object/from16 v17, p15

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    .line 29
    invoke-direct/range {v2 .. v17}, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;-><init>(Ljava/lang/String;Lteam/opay/core/api/GraphQL$PaymentInstrumentType;Ljava/lang/String;Lteam/opay/core/api/GraphQL$CoinsAccount;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/api/GraphQL$MobileMoneyProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lteam/opay/core/api/GraphQL$CoinsAccount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 2
    .line 3
    return-object v0
.end method

.method public asOrderFeeInstrumentInput(Ljava/lang/String;)Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lteam/opay/core/api/b$a;->a(Lteam/opay/core/api/b;Ljava/lang/String;)Lteam/opay/core/api/graphql/OrderFeePaymentInstrumentInput;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public asSavedInstrumentInput()Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/b$a;->b(Lteam/opay/core/api/b;)Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lteam/opay/core/api/GraphQL$MobileMoneyProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

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
    instance-of v1, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;

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
    check-cast p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;

    .line 12
    .line 13
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 25
    .line 26
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 43
    .line 44
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-boolean v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 61
    .line 62
    iget-boolean v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 63
    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 123
    .line 124
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 125
    .line 126
    if-eq v1, v3, :cond_d

    .line 127
    .line 128
    return v2

    .line 129
    :cond_d
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_e

    .line 138
    .line 139
    return v2

    .line 140
    :cond_e
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v3, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_f

    .line 149
    .line 150
    return v2

    .line 151
    :cond_f
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 152
    .line 153
    iget-object p1, p1, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_10

    .line 160
    .line 161
    return v2

    .line 162
    :cond_10
    return v0
.end method

.method public getBankAccountNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBankFirstName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBankLastName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBvn()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCardSkipCvv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public getCardStatus()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCvv()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDobDay()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDobMonth()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDobYear()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEWithdrawalFac()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEWithdrawalPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayStatus()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasFree()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/b$a;->c(Lteam/opay/core/api/b;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-boolean v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 51
    .line 52
    invoke-static {v1}, Lii8;->a(Z)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

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
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    .line 94
    .line 95
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    add-int/2addr v0, v1

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    .line 103
    .line 104
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 105
    .line 106
    if-nez v1, :cond_1

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :goto_1
    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v1, :cond_2

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :goto_2
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-object v1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 140
    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    :goto_3
    add-int/2addr v0, v2

    .line 149
    return v0
.end method

.method public isSavedInstrument()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lteam/opay/core/api/b$a;->d(Lteam/opay/core/api/b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public setCvv(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->p:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->b:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 6
    .line 7
    iget-object v3, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->d:Lteam/opay/core/api/GraphQL$CoinsAccount;

    .line 10
    .line 11
    iget-object v5, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->f:Z

    .line 14
    .line 15
    iget-object v7, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->g:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->h:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->j:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->k:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v12, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->l:Lteam/opay/core/api/GraphQL$MobileMoneyProvider;

    .line 26
    .line 27
    iget-object v13, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->m:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->n:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v15, v0, Lteam/opay/core/payment/instruments/RoomPaymentInstrument;->o:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object/from16 v16, v15

    .line 39
    .line 40
    const-string v15, "RoomPaymentInstrument(id="

    .line 41
    .line 42
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", type="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", displayName="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", coinsAccount="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", cardNumber="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", cardSkipCvv="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", bankCode="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", bankName="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", bankAccountNumber="

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", bankFirstName="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", bankLastName="

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", mobileMoneyProvider="

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", mobileMoneyPhoneNumber="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", cardStatus="

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", invalidReason="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    move-object/from16 v1, v16

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ")"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method
