.class public final Lteam/opay/pay/home/tabs/MobileTransferViewModel;
.super Lteam/opay/pay/payment/ServiceViewModel;
.source "MobileTransferViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B;\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00152\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\r\u0010\u001b\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u0012J+\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 0\u00152\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\"\u0010#J!\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0 0\u00152\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008%\u0010&R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00105\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0017\u0010;\u001a\u0002068\u0006\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:R\"\u0010A\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00104\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R&\u0010G\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\u0006\u0012\u0004\u0018\u00010C0Bj\u0002`D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0017\u0010J\u001a\u0002068\u0006\u00a2\u0006\u000c\n\u0004\u0008H\u00108\u001a\u0004\u0008I\u0010:R\"\u0010R\u001a\u00020K8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001d\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00160S8\u0006\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR(\u0010^\u001a\u0008\u0012\u0004\u0012\u00020Y0S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u0010U\u001a\u0004\u0008[\u0010W\"\u0004\u0008\\\u0010]R\u001a\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00160_8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR*\u0010e\u001a\u00020\u00162\u0006\u0010c\u001a\u00020\u00168\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008d\u00104\u001a\u0004\u0008e\u0010>\"\u0004\u0008f\u0010@R\u0014\u0010h\u001a\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010>R\u0014\u0010k\u001a\u00020i8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00087\u0010jR\u0014\u0010n\u001a\u00020l8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010mR\u0016\u0010q\u001a\u0004\u0018\u00010o8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00081\u0010p\u00a8\u0006r"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "Lteam/opay/pay/payment/ServiceViewModel;",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "application",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "paymentRepository",
        "Lteam/opay/pay/home/pay/ServicesDao;",
        "servicesDao",
        "Lteam/opay/pay/cashio/CashIORepository;",
        "cashIORepository",
        "Lteam/opay/pay/transfer/MobileTransferRepository;",
        "mobileTransferRepository",
        "<init>",
        "(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/pay/cashio/CashIORepository;Lteam/opay/pay/transfer/MobileTransferRepository;)V",
        "",
        "W",
        "()V",
        "Lteam/opay/core/api/GraphQL$ServiceId;",
        "serviceId",
        "Landroidx/lifecycle/LiveData;",
        "",
        "T",
        "(Lteam/opay/core/api/GraphQL$ServiceId;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/home/pay/Service;",
        "H",
        "Q",
        "",
        "recipientAccount",
        "Lteam/opay/core/api/GraphQL$ServiceType;",
        "serviceType",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
        "K",
        "(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/pay/api/CashPageInfo;",
        "M",
        "(Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;",
        "i",
        "Lteam/opay/core/api/e;",
        "getSessionProvider",
        "()Lteam/opay/core/api/e;",
        "j",
        "Lteam/opay/pay/payment/PaymentRepository;",
        "k",
        "Lteam/opay/pay/home/pay/ServicesDao;",
        "l",
        "Lteam/opay/pay/cashio/CashIORepository;",
        "m",
        "Lteam/opay/pay/transfer/MobileTransferRepository;",
        "n",
        "Z",
        "amountValid",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "o",
        "Lteam/opay/pay/android/validation/FieldValidation;",
        "getAmountValidator",
        "()Lteam/opay/pay/android/validation/FieldValidation;",
        "amountValidator",
        "p",
        "getRecipientPhoneValid",
        "()Z",
        "R",
        "(Z)V",
        "recipientPhoneValid",
        "Lkotlin/Function1;",
        "",
        "Lteam/opay/pay/android/validation/StringValidationFn;",
        "q",
        "Lkotlin/jvm/functions/Function1;",
        "phoneNumberValidation",
        "r",
        "getRecipientPhoneValidator",
        "recipientPhoneValidator",
        "Lteam/opay/pay/home/tabs/MobileTransferInfo;",
        "s",
        "Lteam/opay/pay/home/tabs/MobileTransferInfo;",
        "N",
        "()Lteam/opay/pay/home/tabs/MobileTransferInfo;",
        "setMobileTransferInfo",
        "(Lteam/opay/pay/home/tabs/MobileTransferInfo;)V",
        "mobileTransferInfo",
        "Landroidx/lifecycle/MutableLiveData;",
        "t",
        "Landroidx/lifecycle/MutableLiveData;",
        "O",
        "()Landroidx/lifecycle/MutableLiveData;",
        "serviceReadySignal",
        "Lteam/opay/core/api/graphql/PreOrderBean;",
        "u",
        "getPreOrder",
        "setPreOrder",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "preOrder",
        "Landroidx/lifecycle/MediatorLiveData;",
        "v",
        "Landroidx/lifecycle/MediatorLiveData;",
        "_transferValidLiveData",
        "value",
        "w",
        "isSending",
        "S",
        "P",
        "isValid",
        "Lteam/opay/core/api/Country;",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "()Lteam/opay/core/api/GraphQL$User;",
        "user",
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
.field public final i:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lteam/opay/pay/payment/PaymentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lteam/opay/pay/home/pay/ServicesDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lteam/opay/pay/cashio/CashIORepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lteam/opay/pay/transfer/MobileTransferRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public final o:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public final q:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lteam/opay/pay/android/validation/FieldValidation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lteam/opay/pay/home/tabs/MobileTransferInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/core/api/graphql/PreOrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Z


# direct methods
.method public constructor <init>(Lteam/opay/core/api/e;Landroid/app/Application;Lteam/opay/pay/payment/PaymentRepository;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/pay/cashio/CashIORepository;Lteam/opay/pay/transfer/MobileTransferRepository;)V
    .locals 17
    .param p1    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/payment/PaymentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/home/pay/ServicesDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/cashio/CashIORepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/pay/transfer/MobileTransferRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    const-string v6, "sessionProvider"

    .line 14
    .line 15
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v6, "application"

    .line 19
    .line 20
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, "paymentRepository"

    .line 24
    .line 25
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v6, "cashIORepository"

    .line 29
    .line 30
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "mobileTransferRepository"

    .line 34
    .line 35
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2, v1}, Lteam/opay/pay/payment/ServiceViewModel;-><init>(Landroid/app/Application;Lteam/opay/core/api/e;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->i:Lteam/opay/core/api/e;

    .line 42
    .line 43
    iput-object v3, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->j:Lteam/opay/pay/payment/PaymentRepository;

    .line 44
    .line 45
    move-object/from16 v1, p4

    .line 46
    .line 47
    iput-object v1, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->k:Lteam/opay/pay/home/pay/ServicesDao;

    .line 48
    .line 49
    iput-object v4, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->l:Lteam/opay/pay/cashio/CashIORepository;

    .line 50
    .line 51
    iput-object v5, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->m:Lteam/opay/pay/transfer/MobileTransferRepository;

    .line 52
    .line 53
    new-instance v1, Lteam/opay/pay/android/validation/FieldValidation;

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/payment/ServiceViewModel;->u()Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x2

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v6, 0x0

    .line 63
    move-object/from16 p1, v1

    .line 64
    .line 65
    move/from16 p2, v5

    .line 66
    .line 67
    move-object/from16 p3, v6

    .line 68
    .line 69
    move-object/from16 p4, v2

    .line 70
    .line 71
    move/from16 p5, v3

    .line 72
    .line 73
    move-object/from16 p6, v4

    .line 74
    .line 75
    invoke-direct/range {p1 .. p6}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->o:Lteam/opay/pay/android/validation/FieldValidation;

    .line 79
    .line 80
    invoke-static/range {p0 .. p0}, Lm7e;->u0(Lteam/opay/core/api/e;)Lkotlin/jvm/functions/Function1;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->q:Lkotlin/jvm/functions/Function1;

    .line 85
    .line 86
    new-instance v3, Lteam/opay/pay/android/validation/FieldValidation;

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x1

    .line 91
    const/4 v7, 0x0

    .line 92
    move-object/from16 p1, v3

    .line 93
    .line 94
    move/from16 p2, v6

    .line 95
    .line 96
    move-object/from16 p3, v2

    .line 97
    .line 98
    move-object/from16 p4, v7

    .line 99
    .line 100
    move/from16 p5, v4

    .line 101
    .line 102
    move-object/from16 p6, v5

    .line 103
    .line 104
    invoke-direct/range {p1 .. p6}, Lteam/opay/pay/android/validation/FieldValidation;-><init>(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    iput-object v3, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->r:Lteam/opay/pay/android/validation/FieldValidation;

    .line 108
    .line 109
    new-instance v2, Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 110
    .line 111
    const/16 v15, 0x30

    .line 112
    .line 113
    const/16 v16, 0x0

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    const-string v10, ""

    .line 117
    .line 118
    const-string v11, ""

    .line 119
    .line 120
    const-string v12, ""

    .line 121
    .line 122
    const/4 v13, 0x0

    .line 123
    const/4 v14, 0x0

    .line 124
    move-object v8, v2

    .line 125
    invoke-direct/range {v8 .. v16}, Lteam/opay/pay/home/tabs/MobileTransferInfo;-><init>(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->s:Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 129
    .line 130
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 131
    .line 132
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object v2, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    .line 138
    .line 139
    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v2, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    .line 143
    .line 144
    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    .line 145
    .line 146
    invoke-direct {v2}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    new-instance v4, Lqa9;

    .line 154
    .line 155
    invoke-direct {v4, v0}, Lqa9;-><init>(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V

    .line 156
    .line 157
    .line 158
    new-instance v5, Lteam/opay/pay/home/tabs/MobileTransferViewModel$a;

    .line 159
    .line 160
    invoke-direct {v5, v4}, Lteam/opay/pay/home/tabs/MobileTransferViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1, v5}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lteam/opay/pay/android/validation/FieldValidation;->e()Landroidx/lifecycle/LiveData;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v3, Lra9;

    .line 171
    .line 172
    invoke-direct {v3, v0}, Lra9;-><init>(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Lteam/opay/pay/home/tabs/MobileTransferViewModel$a;

    .line 176
    .line 177
    invoke-direct {v4, v3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1, v4}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 181
    .line 182
    .line 183
    iput-object v2, v0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->v:Landroidx/lifecycle/MediatorLiveData;

    .line 184
    .line 185
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->F(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->G(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->U(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->I(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;Landroidx/lifecycle/MediatorLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->V(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final F(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->n:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->W()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final G(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/pay/android/validation/ValidationInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/android/validation/ValidationInfo;->d()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->p:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->W()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final I(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->k:Lteam/opay/pay/home/pay/ServicesDao;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceId;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/pay/ServicesDao;->d(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lva9;

    .line 20
    .line 21
    invoke-direct {p2, p0, p3}, Lva9;-><init>(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MediatorLiveData;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final J(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static synthetic L(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceType;->COINS_SEND:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->K(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->p:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->w:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public static final U(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->k:Lteam/opay/pay/home/pay/ServicesDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceId;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/pay/ServicesDao;->d(Ljava/lang/String;)Lteam/opay/pay/home/pay/Service;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/payment/ServiceViewModel;->y(Lteam/opay/pay/home/pay/Service;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lteam/opay/core/android/arch/AppExecutors;->b()Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lta9;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lta9;-><init>(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final V(Lteam/opay/pay/home/tabs/MobileTransferViewModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/payment/ServiceViewModel;->w()Lteam/opay/pay/home/pay/Service;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->v:Landroidx/lifecycle/MediatorLiveData;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->v:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->P()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic z(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->J(Lteam/opay/pay/home/pay/Service;Landroidx/lifecycle/MediatorLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final H(Lteam/opay/core/api/GraphQL$ServiceId;)Landroidx/lifecycle/LiveData;
    .locals 4
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$ServiceId;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/home/pay/Service;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serviceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lteam/opay/core/android/arch/AppExecutors;

    .line 12
    .line 13
    invoke-direct {v1}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lua9;

    .line 21
    .line 22
    invoke-direct {v3, p0, p1, v1, v0}, Lua9;-><init>(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;Landroidx/lifecycle/MediatorLiveData;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final K(Ljava/lang/String;Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/AASendMoneyPageInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "recipientAccount"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serviceType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lteam/opay/core/api/graphql/AASendMoneyPagerInfoBody;

    .line 31
    .line 32
    invoke-virtual {p2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {v2, p1, p2}, Lteam/opay/core/api/graphql/AASendMoneyPagerInfoBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2}, Lxt;->t(Lteam/opay/core/api/graphql/AASendMoneyPagerInfoBody;)Lretrofit2/Call;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public final M(Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;
    .locals 4
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$ServiceType;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/api/CashPageInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serviceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->q()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-class v3, Lfv;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lfv;

    .line 28
    .line 29
    new-instance v2, Lteam/opay/pay/transaction/DataConfigRequest;

    .line 30
    .line 31
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v2, p1}, Lteam/opay/pay/transaction/DataConfigRequest;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Lfv;->G1(Lteam/opay/pay/transaction/DataConfigRequest;)Lretrofit2/Call;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final N()Lteam/opay/pay/home/tabs/MobileTransferInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->s:Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()V
    .locals 10

    .line 1
    new-instance v9, Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 2
    .line 3
    const/16 v7, 0x30

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, v9

    .line 16
    invoke-direct/range {v0 .. v8}, Lteam/opay/pay/home/tabs/MobileTransferInfo;-><init>(Lteam/opay/core/api/GraphQL$OPayAccountUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/pay/home/tabs/MobileTransferInfo$DEDUCT;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    iput-object v9, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->s:Lteam/opay/pay/home/tabs/MobileTransferInfo;

    .line 20
    .line 21
    return-void
.end method

.method public final R(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->w:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->W()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final T(Lteam/opay/core/api/GraphQL$ServiceId;)Landroidx/lifecycle/LiveData;
    .locals 3
    .param p1    # Lteam/opay/core/api/GraphQL$ServiceId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/GraphQL$ServiceId;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "serviceId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    invoke-direct {v0}, Lteam/opay/core/android/arch/AppExecutors;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lsa9;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1, v0}, Lsa9;-><init>(Lteam/opay/pay/home/tabs/MobileTransferViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->v:Landroidx/lifecycle/MediatorLiveData;

    .line 24
    .line 25
    return-object p1
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->m()Lteam/opay/core/api/GraphQL$User;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lteam/opay/core/api/Country;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->o()Lteam/opay/core/api/Country;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public p()Lteam/opay/core/api/GraphQL$Currency;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->i:Lteam/opay/core/api/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lteam/opay/core/api/e;->p()Lteam/opay/core/api/GraphQL$Currency;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
