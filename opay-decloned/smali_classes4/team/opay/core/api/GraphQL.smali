.class public final Lteam/opay/core/api/GraphQL;
.super Ljava/lang/Object;
.source "graphql.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/api/GraphQL$AccessToken;,
        Lteam/opay/core/api/GraphQL$AgentUpgrade;,
        Lteam/opay/core/api/GraphQL$AmountLimit;,
        Lteam/opay/core/api/GraphQL$AuthOtpData;,
        Lteam/opay/core/api/GraphQL$AuthState;,
        Lteam/opay/core/api/GraphQL$Bank;,
        Lteam/opay/core/api/GraphQL$BetUser;,
        Lteam/opay/core/api/GraphQL$BettingService;,
        Lteam/opay/core/api/GraphQL$Bundle;,
        Lteam/opay/core/api/GraphQL$BusinessCategory;,
        Lteam/opay/core/api/GraphQL$BvnBean;,
        Lteam/opay/core/api/GraphQL$BvnInfo;,
        Lteam/opay/core/api/GraphQL$CalculateInterest;,
        Lteam/opay/core/api/GraphQL$Campaign;,
        Lteam/opay/core/api/GraphQL$Cashback;,
        Lteam/opay/core/api/GraphQL$CashbackAmount;,
        Lteam/opay/core/api/GraphQL$ChannelInfo;,
        Lteam/opay/core/api/GraphQL$CloseCouponBean;,
        Lteam/opay/core/api/GraphQL$Coefficient;,
        Lteam/opay/core/api/GraphQL$CoinsAccount;,
        Lteam/opay/core/api/GraphQL$Country;,
        Lteam/opay/core/api/GraphQL$Coupons;,
        Lteam/opay/core/api/GraphQL$CouponsInfo;,
        Lteam/opay/core/api/GraphQL$CouponsStatus;,
        Lteam/opay/core/api/GraphQL$Currency;,
        Lteam/opay/core/api/GraphQL$CurrencyAmount;,
        Lteam/opay/core/api/GraphQL$DataBundle;,
        Lteam/opay/core/api/GraphQL$DataOperator;,
        Lteam/opay/core/api/GraphQL$DocumentStatus;,
        Lteam/opay/core/api/GraphQL$EasycashBank;,
        Lteam/opay/core/api/GraphQL$EasycashField;,
        Lteam/opay/core/api/GraphQL$EasycashFieldId;,
        Lteam/opay/core/api/GraphQL$EasycashFlow;,
        Lteam/opay/core/api/GraphQL$ElectricityAccountName;,
        Lteam/opay/core/api/GraphQL$ElectricityBundle;,
        Lteam/opay/core/api/GraphQL$ElectricityField;,
        Lteam/opay/core/api/GraphQL$ElectricityPaymentPlan;,
        Lteam/opay/core/api/GraphQL$ElectricityService;,
        Lteam/opay/core/api/GraphQL$ElementConfigMap;,
        Lteam/opay/core/api/GraphQL$ExportFormat;,
        Lteam/opay/core/api/GraphQL$FacValidationResult;,
        Lteam/opay/core/api/GraphQL$GatewayBankPaymentFields;,
        Lteam/opay/core/api/GraphQL$GatewayCreateInput;,
        Lteam/opay/core/api/GraphQL$GatewayCreateResult;,
        Lteam/opay/core/api/GraphQL$Gender;,
        Lteam/opay/core/api/GraphQL$InvestResult;,
        Lteam/opay/core/api/GraphQL$KycLimit;,
        Lteam/opay/core/api/GraphQL$KycUpgradeInfo;,
        Lteam/opay/core/api/GraphQL$KycUpload;,
        Lteam/opay/core/api/GraphQL$Location;,
        Lteam/opay/core/api/GraphQL$Message;,
        Lteam/opay/core/api/GraphQL$MessageType;,
        Lteam/opay/core/api/GraphQL$MobileMoneyProvider;,
        Lteam/opay/core/api/GraphQL$MoneyRequest;,
        Lteam/opay/core/api/GraphQL$Multiplier;,
        Lteam/opay/core/api/GraphQL$OPayAccountUser;,
        Lteam/opay/core/api/GraphQL$OWealthAdvantageDataBean;,
        Lteam/opay/core/api/GraphQL$OWealthAdvantageItemBean;,
        Lteam/opay/core/api/GraphQL$OWealthBodyTextBean;,
        Lteam/opay/core/api/GraphQL$OWealthPopupDataBean;,
        Lteam/opay/core/api/GraphQL$OWealthPopupItemBean;,
        Lteam/opay/core/api/GraphQL$Order;,
        Lteam/opay/core/api/GraphQL$OrderFee;,
        Lteam/opay/core/api/GraphQL$OrderStatus;,
        Lteam/opay/core/api/GraphQL$PaymentInstrumentInput;,
        Lteam/opay/core/api/GraphQL$PaymentInstrumentType;,
        Lteam/opay/core/api/GraphQL$PayuBouquet;,
        Lteam/opay/core/api/GraphQL$PayuUserData;,
        Lteam/opay/core/api/GraphQL$PrepareRedeemAmountBean;,
        Lteam/opay/core/api/GraphQL$PrepareRedeemPopBean;,
        Lteam/opay/core/api/GraphQL$PrepareRedeemResponse;,
        Lteam/opay/core/api/GraphQL$ProfileInput;,
        Lteam/opay/core/api/GraphQL$ReferenceData;,
        Lteam/opay/core/api/GraphQL$RefreshToken;,
        Lteam/opay/core/api/GraphQL$RegionInfo;,
        Lteam/opay/core/api/GraphQL$RegistrationField;,
        Lteam/opay/core/api/GraphQL$RevenueBreakdown;,
        Lteam/opay/core/api/GraphQL$SavedPaymentInstrumentInput;,
        Lteam/opay/core/api/GraphQL$Schema;,
        Lteam/opay/core/api/GraphQL$SearchIndexInfo;,
        Lteam/opay/core/api/GraphQL$SearchRecordInfo;,
        Lteam/opay/core/api/GraphQL$SenderData;,
        Lteam/opay/core/api/GraphQL$SenderInstrument;,
        Lteam/opay/core/api/GraphQL$Service;,
        Lteam/opay/core/api/GraphQL$ServiceId;,
        Lteam/opay/core/api/GraphQL$ServiceType;,
        Lteam/opay/core/api/GraphQL$ServiceWithTerms;,
        Lteam/opay/core/api/GraphQL$StartimesUser;,
        Lteam/opay/core/api/GraphQL$State;,
        Lteam/opay/core/api/GraphQL$StepBalanceData;,
        Lteam/opay/core/api/GraphQL$TVBouquet;,
        Lteam/opay/core/api/GraphQL$TVServices;,
        Lteam/opay/core/api/GraphQL$Template;,
        Lteam/opay/core/api/GraphQL$TermsAndConditions;,
        Lteam/opay/core/api/GraphQL$TransactionState;,
        Lteam/opay/core/api/GraphQL$TransactionStateStatus;,
        Lteam/opay/core/api/GraphQL$TransactionStatus;,
        Lteam/opay/core/api/GraphQL$TransactionType;,
        Lteam/opay/core/api/GraphQL$TvServiceInfo;,
        Lteam/opay/core/api/GraphQL$User;,
        Lteam/opay/core/api/GraphQL$UserDocument;,
        Lteam/opay/core/api/GraphQL$UserProfile;,
        Lteam/opay/core/api/GraphQL$UserTransaction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u009a\u0001LMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001\u0088\u0001\u0089\u0001\u008a\u0001\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008f\u0001\u0090\u0001\u0091\u0001\u0092\u0001\u0093\u0001\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001\u009c\u0001\u009d\u0001\u009e\u0001\u009f\u0001\u00a0\u0001\u00a1\u0001\u00a2\u0001\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001\u00a7\u0001\u00a8\u0001\u00a9\u0001\u00aa\u0001\u00ab\u0001\u00ac\u0001\u00ad\u0001\u00ae\u0001\u00af\u0001\u00b0\u0001\u00b1\u0001\u00b2\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0011\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u0016J\u0015\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001d\u0010\u0016J\r\u0010\u001e\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001d\u0010$\u001a\u00020\u00142\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010(\u001a\n \'*\u0004\u0018\u00010&0&2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008*\u0010+R\"\u00101\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u00104\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010,\u001a\u0004\u00082\u0010.\"\u0004\u00083\u00100R\u001d\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u0006058\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R$\u0010=\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000f\u0012\u0004\u0012\u00020\u00010;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010<R\u001c\u0010@\u001a\n \'*\u0004\u0018\u00010>0>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010?R\u0017\u0010D\u001a\u00020A8\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010B\u001a\u0004\u00086\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0017\u0010I\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010H\u001a\u0004\u0008E\u0010\u001fR\u0017\u0010K\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010H\u001a\u0004\u0008J\u0010\u001f\u00a8\u0006\u00b3\u0001"
    }
    d2 = {
        "Lteam/opay/core/api/GraphQL;",
        "",
        "<init>",
        "()V",
        "",
        "value",
        "",
        "b",
        "(Ljava/lang/Enum;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Lxt;",
        "a",
        "(Landroid/content/Context;)Lxt;",
        "T",
        "Ljava/lang/Class;",
        "cls",
        "c",
        "(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;",
        "countryCode",
        "Lteam/opay/core/api/graphql/Request;",
        "i",
        "(Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;",
        "key",
        "j",
        "(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;",
        "number",
        "f",
        "otp",
        "m",
        "e",
        "()Lteam/opay/core/api/graphql/Request;",
        "Lteam/opay/core/api/GraphQL$ProfileInput;",
        "profileInput",
        "",
        "upgradeEnabled",
        "k",
        "(Lteam/opay/core/api/GraphQL$ProfileInput;Z)Lteam/opay/core/api/graphql/Request;",
        "Lretrofit2/Retrofit;",
        "kotlin.jvm.PlatformType",
        "p",
        "(Landroid/content/Context;)Lretrofit2/Retrofit;",
        "g",
        "(Z)Ljava/lang/String;",
        "Ljava/lang/String;",
        "l",
        "()Ljava/lang/String;",
        "q",
        "(Ljava/lang/String;)V",
        "userAgent",
        "o",
        "r",
        "webViewUserAgent",
        "",
        "d",
        "Ljava/util/List;",
        "getAABusniessSourceList",
        "()Ljava/util/List;",
        "AABusniessSourceList",
        "",
        "Ljava/util/Map;",
        "apiMap",
        "Lcom/google/gson/Gson;",
        "Lcom/google/gson/Gson;",
        "GSON",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "EMPTY_AMOUNT",
        "h",
        "Lxt;",
        "api",
        "Lteam/opay/core/api/graphql/Request;",
        "SESSION_META_QUERY",
        "n",
        "WALLET_STATUS_QUERY",
        "BvnBean",
        "Schema",
        "ElementConfigMap",
        "AmountLimit",
        "CalculateInterest",
        "SearchIndexInfo",
        "StepBalanceData",
        "OWealthAdvantageItemBean",
        "OWealthAdvantageDataBean",
        "OWealthBodyTextBean",
        "OWealthPopupItemBean",
        "OWealthPopupDataBean",
        "SearchRecordInfo",
        "InvestResult",
        "PrepareRedeemResponse",
        "PrepareRedeemAmountBean",
        "PrepareRedeemPopBean",
        "CloseCouponBean",
        "UserProfile",
        "ChannelInfo",
        "AgentUpgrade",
        "KycUpgradeInfo",
        "KycUpload",
        "UserDocument",
        "DocumentStatus",
        "AuthState",
        "FacValidationResult",
        "AccessToken",
        "RefreshToken",
        "AuthOtpData",
        "Bundle",
        "DataOperator",
        "DataBundle",
        "Template",
        "Coupons",
        "CouponsStatus",
        "CouponsInfo",
        "BetUser",
        "RegistrationField",
        "BettingService",
        "OPayAccountUser",
        "ElectricityAccountName",
        "ElectricityService",
        "ElectricityField",
        "ElectricityBundle",
        "StartimesUser",
        "Bank",
        "EasycashBank",
        "EasycashFlow",
        "EasycashField",
        "EasycashFieldId",
        "PayuBouquet",
        "PayuUserData",
        "TVServices",
        "TVBouquet",
        "GatewayBankPaymentFields",
        "ElectricityPaymentPlan",
        "CashbackAmount",
        "Currency",
        "CurrencyAmount",
        "OrderStatus",
        "RegionInfo",
        "KycLimit",
        "State",
        "OrderFee",
        "PaymentInstrumentType",
        "MobileMoneyProvider",
        "CoinsAccount",
        "PaymentInstrumentInput",
        "SavedPaymentInstrumentInput",
        "Country",
        "User",
        "Gender",
        "ProfileInput",
        "Service",
        "ServiceWithTerms",
        "ServiceType",
        "ExportFormat",
        "ServiceId",
        "GatewayCreateInput",
        "GatewayCreateResult",
        "Cashback",
        "Campaign",
        "Multiplier",
        "Coefficient",
        "TransactionStateStatus",
        "Order",
        "MessageType",
        "Message",
        "MoneyRequest",
        "TransactionType",
        "TransactionState",
        "TransactionStatus",
        "RevenueBreakdown",
        "UserTransaction",
        "BusinessCategory",
        "ReferenceData",
        "SenderData",
        "SenderInstrument",
        "TvServiceInfo",
        "BvnInfo",
        "Location",
        "TermsAndConditions",
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
.field public static final a:Lteam/opay/core/api/GraphQL;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lcom/google/gson/Gson;

.field public static final g:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static h:Lxt;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final i:Lteam/opay/core/api/graphql/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lteam/opay/core/api/graphql/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/api/GraphQL;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lteam/opay/core/api/GraphQL;->b:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lteam/opay/core/api/GraphQL;->c:Ljava/lang/String;

    .line 13
    .line 14
    const-string v9, "AA_History_Transfer_Again"

    .line 15
    .line 16
    const-string v10, "AA_History_Transfer_Back"

    .line 17
    .line 18
    const-string v1, "AA_Search_Result_Incomplete"

    .line 19
    .line 20
    const-string v2, "AA_Search_Result"

    .line 21
    .line 22
    const-string v3, "AA_Beneficiaries_Search"

    .line 23
    .line 24
    const-string v4, "AA_Beneficiaries_Recents"

    .line 25
    .line 26
    const-string v5, "AA_Beneficiaries_Favourites"

    .line 27
    .line 28
    const-string v6, "AA_Search_New"

    .line 29
    .line 30
    const-string v7, "AA_Pasteup"

    .line 31
    .line 32
    const-string v8, "AA_Home_Popup"

    .line 33
    .line 34
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sput-object v1, Lteam/opay/core/api/GraphQL;->d:Ljava/util/List;

    .line 43
    .line 44
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lteam/opay/core/api/GraphQL;->e:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sput-object v1, Lteam/opay/core/api/GraphQL;->f:Lcom/google/gson/Gson;

    .line 61
    .line 62
    new-instance v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 63
    .line 64
    invoke-direct {v1, v0, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lteam/opay/core/api/GraphQL;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 68
    .line 69
    new-instance v0, Lteam/opay/core/api/graphql/Request;

    .line 70
    .line 71
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "\n                query SessionMetaQuery {\n                    countries {\n                        id\n                        selected\n                        name\n                        otpIssuedTime\n                    }\n                    currencies {\n                        isoCode\n                        string\n                        country\n                    }\n                    currency {\n                        isoCode\n                        string\n                    }\n                    currentUser {\n                     \n            id\n            phoneNumber\n            phoneNumberSanitized\n            firstName\n            middleName\n            surname\n            gender\n            dob\n            state\n            address\n            email\n            emailToVerify\n            kycLevel\n            role\n            userToken\n            emailVerified\n            validID\n            utilityBill\n            picture\n            referrerCode\n            lastVisitTime\n            avatarUrl\n            avatarThumbnailUrl\n            nickName\n            city\n            aggregatorId\n            isSetPayPin\n            createDate\n            posLevelIconUrl\n            posLevelFileIconUrl\n            agentLevel\n            bvn {\n                number\n            }\n            isFinish\n            stateCode\n            lgaCode\n            cityCode\n            canUpdateName\n            canUpdateDobAndGender\n            facePicture\n            isShowRegisterTask\n            isNewOpayUser\n        \n                    }\n                }\n            "

    .line 76
    .line 77
    const-string v3, "SessionMetaQuery"

    .line 78
    .line 79
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lteam/opay/core/api/GraphQL;->i:Lteam/opay/core/api/graphql/Request;

    .line 83
    .line 84
    new-instance v0, Lteam/opay/core/api/graphql/Request;

    .line 85
    .line 86
    invoke-static {}, Lkotlin/collections/e;->i()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "\n                query WalletStatusQuery {\n                    currentUser {\n                        id\n                    }\n                    walletBalance {\n                        value\n                        currency\n                    }\n                    walletBonus {\n                        value\n                        currency\n                    }\n                    walletAjira {\n                        value\n                        currency\n                    }\n                     owealthBalance {\n                        value\n                        currency\n                    }\n                    coupons (state: \"unused\") {\n                        totalAmount {\n                            value\n                            currency\n                        }\n                        totalCount\n                    }\n                }\n            "

    .line 91
    .line 92
    const-string v3, "WalletStatusQuery"

    .line 93
    .line 94
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v0, Lteam/opay/core/api/GraphQL;->j:Lteam/opay/core/api/graphql/Request;

    .line 98
    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lxt;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/api/GraphQL;->h:Lxt;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-class v0, Lxt;

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lxt;

    .line 18
    .line 19
    sput-object v0, Lteam/opay/core/api/GraphQL;->h:Lxt;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Enum;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/core/api/GraphQL;->f:Lcom/google/gson/Gson;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "toJson(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [C

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    aput-char v1, v0, v2

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->r1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cls"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lteam/opay/core/api/GraphQL;->e:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/core/api/GraphQL;->p(Landroid/content/Context;)Lretrofit2/Retrofit;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    .line 33
    .line 34
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public final d()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->g:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lteam/opay/core/api/graphql/Request;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/core/api/graphql/Request;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\n                mutation LogoutMutation {\n                    logout\n                }\n            "

    .line 9
    .line 10
    const-string v3, "LogoutMutation"

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "number"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/api/graphql/Request;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Lkotlin/Pair;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v0, v2

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/e;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "\n                    query LookupBVNQuery($number: String!) {\n                        lookupBVN: verifyBVN(bvn: $number) {\n                            phoneNumber\n                        }\n                    }\n                "

    .line 23
    .line 24
    const-string v2, "LookupBVNQuery"

    .line 25
    .line 26
    invoke-direct {v1, v2, p1, v0}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final g(Z)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\n            id\n            phoneNumber\n            phoneNumberSanitized\n            firstName\n            middleName\n            surname\n            gender\n            dob\n            state\n            address\n            email\n            emailToVerify\n            kycLevel\n            role\n            userToken\n            emailVerified\n            validID\n            utilityBill\n            picture\n            referrerCode\n            lastVisitTime\n            avatarUrl\n            avatarThumbnailUrl\n            nickName\n            city\n            aggregatorId\n            isSetPayPin\n            createDate\n            posLevelIconUrl\n            posLevelFileIconUrl\n            agentLevel\n            bvn {\n                number\n            }\n            isFinish\n            stateCode\n            lgaCode\n            cityCode\n            canUpdateName\n            canUpdateDobAndGender\n            facePicture\n            isShowRegisterTask\n            isNewOpayUser\n        "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "\n                lga\n                businessName\n                referralCode\n                agentUpgrade {\n                    role\n                }\n                kycUpload {\n                    validID {\n                        filename\n                        file\n                        status\n                    }\n                    utilityBill {\n                        filename\n                        file\n                        status\n                    }\n                    picture {\n                        filename\n                        file\n                        status\n                    }\n                }\n                agentRefererCode\n                upgradeStatus\n                upgradeVersion\n                upgradeStyle\n            "

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public final h()Lteam/opay/core/api/graphql/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->i:Lteam/opay/core/api/graphql/Request;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "countryCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/api/graphql/Request;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Lkotlin/Pair;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v0, v2

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/e;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "\n                query ServicesQuery($countryCode: String!) {\n                    services(countryCode: $countryCode) {\n                        type\n                        available\n                        enabled\n                        id\n                        maxAmount {\n                            currency\n                            value\n                        }\n                        minAmount {\n                            value\n                            currency\n                        }\n                    }\n                }\n            "

    .line 23
    .line 24
    const-string v2, "ServicesQuery"

    .line 25
    .line 26
    invoke-direct {v1, v2, p1, v0}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "value"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lteam/opay/core/api/graphql/Request;

    .line 12
    .line 13
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v1, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Lkotlin/Pair;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aput-object p1, v0, v1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput-object p2, v0, p1

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/collections/e;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "\n                    mutation InitiateSetUserPropertyMutation($key: String!, $value: String!) {\n                        setUserProperty(key: $key, value: $value)\n                    }\n                "

    .line 35
    .line 36
    const-string v0, "InitiateSetUserPropertyMutation"

    .line 37
    .line 38
    invoke-direct {v2, v0, p1, p2}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method public final k(Lteam/opay/core/api/GraphQL$ProfileInput;Z)Lteam/opay/core/api/graphql/Request;
    .locals 3
    .param p1    # Lteam/opay/core/api/GraphQL$ProfileInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "profileInput"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/api/graphql/Request;

    .line 7
    .line 8
    const-string v1, "input"

    .line 9
    .line 10
    invoke-static {v1, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Lkotlin/Pair;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object p1, v1, v2

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/collections/e;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p2}, Lteam/opay/core/api/GraphQL;->g(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "\n                    mutation UpdateProfileMutation($input: ProfileInput!) {\n                        userProfile: updateProfile(input: $input) {\n                            "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, "\n                        }\n                    }\n                "

    .line 42
    .line 43
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v1, "UpdateProfileMutation"

    .line 51
    .line 52
    invoke-direct {v0, v1, p1, p2}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Ljava/lang/String;)Lteam/opay/core/api/graphql/Request;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lteam/opay/core/api/graphql/Request;

    .line 7
    .line 8
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Lkotlin/Pair;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object p1, v0, v2

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/e;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "\n                    mutation ValidateBVNMutation($otp: String!) {\n                        validateBVN: verifyBVNOTP(otp: $otp)\n                    }\n                "

    .line 23
    .line 24
    const-string v2, "ValidateBVNMutation"

    .line 25
    .line 26
    invoke-direct {v1, v2, p1, v0}, Lteam/opay/core/api/graphql/Request;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final n()Lteam/opay/core/api/graphql/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->j:Lteam/opay/core/api/graphql/Request;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(Landroid/content/Context;)Lretrofit2/Retrofit;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lteam/opay/core/api/net/LiveDataCallAdapterFactory;

    .line 15
    .line 16
    invoke-direct {v1}, Lteam/opay/core/api/net/LiveDataCallAdapterFactory;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p1}, Lzga;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1}, Lzga;->b(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public final q(Ljava/lang/String;)V
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
    sput-object p1, Lteam/opay/core/api/GraphQL;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final r(Ljava/lang/String;)V
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
    sput-object p1, Lteam/opay/core/api/GraphQL;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
