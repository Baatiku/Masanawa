.class public final Lteam/opay/pay/wallet/NewAddMoneyViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "NewAddMoneyViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/wallet/NewAddMoneyViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B#\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\u00132\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0011\u0010*\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u0008*\u0010\u001aJ+\u0010.\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u00132\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\u000c0,H\u0002\u00a2\u0006\u0004\u0008.\u0010/J!\u00102\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\"2\u0008\u00101\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0004\u00082\u00103J\u0017\u00104\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u00084\u0010%J\u0017\u00106\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u000205H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0015\u0010:\u001a\u00020\u000c2\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008:\u0010;J\u001d\u0010>\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020<2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008>\u0010?R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010@R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001d\u0010J\u001a\u0008\u0012\u0004\u0012\u00020\n0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010IR\u001c\u0010L\u001a\u0008\u0012\u0004\u0012\u0002080E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010GR\u001e\u00101\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u0012\u0004\u0008O\u0010\u0018R\u0016\u0010+\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u0016\u0010S\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\"\u0010Z\u001a\u00020T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010\u0015\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR$\u0010b\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR$\u0010g\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010f\"\u0004\u0008R\u0010\u0012R\u001d\u0010m\u001a\u0004\u0018\u00010h8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010lR\u0018\u0010q\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR%\u0010u\u001a\u0010\u0012\u000c\u0012\n r*\u0004\u0018\u00010\u001e0\u001e0E8\u0006\u00a2\u0006\u000c\n\u0004\u0008s\u0010G\u001a\u0004\u0008t\u0010IR\u0016\u0010x\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0016\u0010z\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010wR#\u0010\u0080\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008{\u0010w\u001a\u0004\u0008|\u0010}\"\u0004\u0008~\u0010\u007fR&\u0010\u0084\u0001\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0081\u0001\u0010w\u001a\u0005\u0008\u0082\u0001\u0010}\"\u0005\u0008\u0083\u0001\u0010\u007fR\u0018\u0010\u0086\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0085\u0001\u0010wR\u0018\u0010\u0088\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010RR\u0018\u0010\u008a\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0089\u0001\u0010RR\u0018\u0010\u008c\u0001\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010RR\u0017\u0010\u008f\u0001\u001a\u00030\u008d\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008s\u0010\u008e\u0001R\u0017\u0010\u0092\u0001\u001a\u00030\u0090\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008v\u0010\u0091\u0001R\u0019\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0016X\u0096\u0005\u00a2\u0006\u0007\u001a\u0005\u0008i\u0010\u0094\u0001\u00a8\u0006\u0096\u0001"
    }
    d2 = {
        "Lteam/opay/pay/wallet/NewAddMoneyViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/home/pay/ServicesDao;",
        "servicesDao",
        "sessionProvider",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/core/api/e;)V",
        "Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;",
        "state",
        "",
        "Y",
        "(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V",
        "Lteam/opay/core/api/b;",
        "data",
        "T",
        "(Lteam/opay/core/api/b;)V",
        "",
        "amountValue",
        "D",
        "(Ljava/lang/String;)V",
        "d0",
        "()V",
        "G",
        "()Ljava/lang/String;",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "a",
        "b",
        "",
        "isMin",
        "F",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "Lag8;",
        "lifecycleOwner",
        "L",
        "(Lag8;)V",
        "Lteam/opay/pay/wallet/TopupAmountLimitStatus;",
        "status",
        "I",
        "(Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Ljava/lang/String;",
        "H",
        "amount",
        "Lkotlin/Function1;",
        "callback",
        "C",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "owner",
        "sourceFrom",
        "a0",
        "(Lag8;Ljava/lang/String;)V",
        "U",
        "Lteam/opay/core/api/graphql/RemainQuotaResponse;",
        "W",
        "(Lteam/opay/core/api/graphql/RemainQuotaResponse;)V",
        "Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;",
        "intent",
        "X",
        "(Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V",
        "Landroid/os/Bundle;",
        "argment",
        "R",
        "(Landroid/os/Bundle;Lag8;)V",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/home/pay/ServicesDao;",
        "d",
        "Lteam/opay/core/api/e;",
        "Landroidx/lifecycle/MutableLiveData;",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "J",
        "()Landroidx/lifecycle/MutableLiveData;",
        "inputUiStateFlow",
        "f",
        "uiIntent",
        "g",
        "Ljava/lang/String;",
        "getSourceFrom$annotations",
        "h",
        "i",
        "Z",
        "isFromPayDesk",
        "",
        "j",
        "N",
        "()D",
        "setNeedAmount",
        "(D)V",
        "needAmount",
        "Lteam/opay/pay/home/pay/Service;",
        "k",
        "Lteam/opay/pay/home/pay/Service;",
        "P",
        "()Lteam/opay/pay/home/pay/Service;",
        "b0",
        "(Lteam/opay/pay/home/pay/Service;)V",
        "serviceInfo",
        "l",
        "Lteam/opay/core/api/b;",
        "O",
        "()Lteam/opay/core/api/b;",
        "selectedInstrument",
        "Lteam/opay/pay/settings/AddMoneyTipsConfig;",
        "m",
        "Lid8;",
        "Q",
        "()Lteam/opay/pay/settings/AddMoneyTipsConfig;",
        "tipsConfig",
        "Lteam/opay/pay/settings/BankLimitData;",
        "n",
        "Lteam/opay/pay/settings/BankLimitData;",
        "bankLimitData",
        "kotlin.jvm.PlatformType",
        "o",
        "M",
        "loadingLiveData",
        "p",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "minAmount",
        "q",
        "maxAmount",
        "r",
        "K",
        "()Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "setInstrumentMin",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "instrumentMin",
        "s",
        "getInstrumentMax",
        "setInstrumentMax",
        "instrumentMax",
        "t",
        "userRemindAmount",
        "u",
        "instrumentsInitFinish",
        "v",
        "isNoAmountLimit",
        "w",
        "isMaxLessThanMin",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/home/pay/ServicesDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z

.field public j:D

.field public k:Lteam/opay/pay/home/pay/Service;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lteam/opay/core/api/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lteam/opay/pay/settings/BankLimitData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Landroidx/lifecycle/MutableLiveData;
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

.field public p:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/home/pay/ServicesDao;Lteam/opay/core/api/e;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/pay/ServicesDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->c:Lteam/opay/pay/home/pay/ServicesDao;

    .line 17
    .line 18
    iput-object p3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d:Lteam/opay/core/api/e;

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    const-string p1, ""

    .line 35
    .line 36
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p1, Lkn9;

    .line 39
    .line 40
    invoke-direct {p1}, Lkn9;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->m:Lid8;

    .line 48
    .line 49
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    sget-object p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 59
    .line 60
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 77
    .line 78
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iput-object p2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 83
    .line 84
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->t:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 89
    .line 90
    return-void
.end method

.method public static final synthetic A(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->a0(Lag8;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic B(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final E(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->I(Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1, p1}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;-><init>(Ljava/lang/String;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private final L(Lag8;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, p1, v2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$getLimitInfo$1;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;Ljr2;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static final S(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "send uiIntent: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    instance-of v0, p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$CHECK_AMOUNT;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$CONFIRM_PAY;

    .line 19
    .line 20
    check-cast p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$CHECK_AMOUNT;

    .line 21
    .line 22
    invoke-virtual {p1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$CHECK_AMOUNT;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$CONFIRM_PAY;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    instance-of v0, p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    check-cast p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;

    .line 38
    .line 39
    invoke-virtual {p1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 44
    .line 45
    iget-boolean v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-lez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$AMOUNT_CHANGE;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->D(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-boolean p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->maxLessThanMin:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->amountvalid:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 75
    .line 76
    :goto_0
    new-instance v0, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->I(Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-direct {v0, v1, p1}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;-><init>(Ljava/lang/String;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    instance-of v0, p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$SELECTED_INSTRUMENT;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    check-cast p1, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$SELECTED_INSTRUMENT;

    .line 94
    .line 95
    invoke-virtual {p1}, Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent$SELECTED_INSTRUMENT;->a()Lteam/opay/core/api/b;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->T(Lteam/opay/core/api/b;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void

    .line 103
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 104
    .line 105
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public static final V(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-static {p1}, Lteam/opay/core/android/arch/ResourceKt;->c(Lteam/opay/core/android/arch/Resource;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lteam/opay/core/api/graphql/RemainQuotaResponse;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RemainQuotaResponse;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toBigDecimal()Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-wide/16 v1, -0x1

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->v:Z

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->W(Lteam/opay/core/api/graphql/RemainQuotaResponse;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d0()V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$INIT;

    .line 51
    .line 52
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$INIT;-><init>(Lteam/opay/pay/home/pay/Service;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$ON_SERVICE_INIT;

    .line 61
    .line 62
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$ON_SERVICE_INIT;-><init>(Lteam/opay/pay/home/pay/Service;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method public static final c0()Lteam/opay/pay/settings/AddMoneyTipsConfig;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/settings/AddMoneyTipsConfig;->Companion:Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/settings/AddMoneyTipsConfig$Companion;->a()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic r()Lteam/opay/pay/settings/AddMoneyTipsConfig;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->c0()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->E(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->V(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->S(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)Lteam/opay/pay/home/pay/ServicesDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->c:Lteam/opay/pay/home/pay/ServicesDao;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lag8;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->U(Lag8;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/pay/settings/BankLimitData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->n:Lteam/opay/pay/settings/BankLimitData;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/wallet/TopupAmountLimitStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    move-object p1, v1

    .line 14
    :cond_0
    iget-wide v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->j:D

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_1
    iget-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ltz v2, :cond_2

    .line 36
    .line 37
    iget-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-gtz v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :goto_0
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 49
    .line 50
    invoke-virtual {p1, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-ltz v5, :cond_3

    .line 55
    .line 56
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 57
    .line 58
    invoke-virtual {p1, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-gtz v5, :cond_3

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v5, 0x0

    .line 67
    :goto_1
    invoke-virtual {p1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-gez v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ltz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-gtz v0, :cond_4

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    const/4 v0, 0x0

    .line 92
    :goto_2
    iget-object v6, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 93
    .line 94
    invoke-virtual {p1, v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-gez v6, :cond_5

    .line 99
    .line 100
    const/4 v6, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v6, 0x0

    .line 103
    :goto_3
    iget-object v7, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 104
    .line 105
    if-eqz v7, :cond_7

    .line 106
    .line 107
    invoke-virtual {v7}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    if-nez v7, :cond_6

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move-object v1, v7

    .line 115
    :cond_7
    :goto_4
    invoke-virtual {p1, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-gez v1, :cond_8

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    goto :goto_5

    .line 123
    :cond_8
    const/4 v1, 0x0

    .line 124
    :goto_5
    iget-object v7, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 125
    .line 126
    iget-object v8, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-ltz v7, :cond_9

    .line 133
    .line 134
    iget-object v7, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 135
    .line 136
    iget-object v8, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-gtz v7, :cond_9

    .line 143
    .line 144
    const/4 v7, 0x1

    .line 145
    goto :goto_6

    .line 146
    :cond_9
    const/4 v7, 0x0

    .line 147
    :goto_6
    iget-object v8, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 148
    .line 149
    invoke-virtual {p1, v8}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-lez p1, :cond_a

    .line 154
    .line 155
    const/4 v3, 0x1

    .line 156
    :cond_a
    iget-boolean p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 157
    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->maxLessThanMin:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_b
    if-eqz v5, :cond_c

    .line 164
    .line 165
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->amountvalid:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_c
    if-eqz v1, :cond_d

    .line 169
    .line 170
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->lessThanServiceMin:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_d
    if-eqz v2, :cond_e

    .line 174
    .line 175
    if-eqz v0, :cond_e

    .line 176
    .line 177
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->lessThanNeedAmount:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_e
    if-eqz v6, :cond_f

    .line 181
    .line 182
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->lessThanInstrumentMin:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 183
    .line 184
    goto :goto_7

    .line 185
    :cond_f
    if-eqz v7, :cond_10

    .line 186
    .line 187
    if-eqz v3, :cond_10

    .line 188
    .line 189
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->moreThanInstrumentMax:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_10
    iget-boolean p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->v:Z

    .line 193
    .line 194
    if-eqz p1, :cond_11

    .line 195
    .line 196
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->amountvalid:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_11
    sget-object p1, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->moreThanMax:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 200
    .line 201
    :goto_7
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lnn9;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lnn9;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->C(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-lez p3, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1, p2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-gez p3, :cond_4

    .line 61
    .line 62
    :goto_0
    move-object p1, p2

    .line 63
    :cond_4
    :goto_1
    return-object p1
.end method

.method public final G()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-boolean v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->v:Z

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    sget v2, Lteam/opay/pay/R$string;->osdk_above_min_amount_hint:I

    .line 16
    .line 17
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 18
    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v5}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :cond_1
    if-nez v3, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v4, v3

    .line 35
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v4, v1, v0

    .line 38
    .line 39
    invoke-static {v2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_3

    .line 44
    :cond_3
    sget v2, Lteam/opay/pay/R$string;->osdk_top_up_with_card_amount_hint:I

    .line 45
    .line 46
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 47
    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    invoke-virtual {v5}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move-object v5, v3

    .line 62
    :goto_1
    if-nez v5, :cond_5

    .line 63
    .line 64
    move-object v5, v4

    .line 65
    :cond_5
    invoke-static {v5}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v6, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 70
    .line 71
    if-eqz v6, :cond_6

    .line 72
    .line 73
    invoke-virtual {v6}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    if-eqz v6, :cond_6

    .line 78
    .line 79
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :cond_6
    if-nez v3, :cond_7

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_7
    move-object v4, v3

    .line 87
    :goto_2
    invoke-static {v4}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x2

    .line 92
    new-array v4, v4, [Ljava/lang/Object;

    .line 93
    .line 94
    aput-object v5, v4, v0

    .line 95
    .line 96
    aput-object v3, v4, v1

    .line 97
    .line 98
    invoke-static {v2, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    :goto_3
    return-object v3
.end method

.method public final H()Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Q()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v3, :cond_2

    .line 10
    .line 11
    invoke-virtual {v3}, Lteam/opay/pay/settings/AddMoneyTipsConfig;->getConfigTips()[Lteam/opay/pay/settings/AddMoneyTips;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    array-length v5, v3

    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_0
    if-ge v6, v5, :cond_1

    .line 20
    .line 21
    aget-object v7, v3, v6

    .line 22
    .line 23
    invoke-virtual {v7}, Lteam/opay/pay/settings/AddMoneyTips;->b()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    add-int/2addr v6, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v7, v4

    .line 39
    :goto_1
    if-eqz v7, :cond_2

    .line 40
    .line 41
    invoke-virtual {v7}, Lteam/opay/pay/settings/AddMoneyTips;->c()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_2
    const-string v3, ""

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    :cond_3
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 51
    .line 52
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-nez v5, :cond_4

    .line 57
    .line 58
    move-object v5, v3

    .line 59
    :cond_4
    invoke-static {v5}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v6, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 64
    .line 65
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    move-object v6, v3

    .line 72
    :cond_5
    invoke-static {v6}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-object v7, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 77
    .line 78
    invoke-virtual {v7}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-nez v7, :cond_6

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move-object v3, v7

    .line 86
    :goto_2
    invoke-static {v3}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-array v7, v0, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object v5, v7, v2

    .line 93
    .line 94
    aput-object v6, v7, v1

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    aput-object v3, v7, v1

    .line 98
    .line 99
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, "format(...)"

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public final I(Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lteam/opay/pay/wallet/NewAddMoneyViewModel$a;->a:[I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    aget p1, v1, p1

    .line 9
    .line 10
    const-string v1, "format(...)"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, ""

    .line 15
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :pswitch_0
    sget p1, Lteam/opay/pay/R$string;->amount_more_max_tips:I

    .line 22
    .line 23
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :cond_0
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v4, v3

    .line 41
    :goto_0
    invoke-static {v4}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object v1, v2, v0

    .line 48
    .line 49
    invoke-static {p1, v2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :pswitch_1
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->H()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    move-object v4, p1

    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :pswitch_2
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Q()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lteam/opay/pay/settings/AddMoneyTipsConfig;->getRechargeTip()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-wide v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->j:D

    .line 79
    .line 80
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v3}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-array v5, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v3, v5, v0

    .line 91
    .line 92
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    if-nez v3, :cond_4

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_4
    move-object v4, v3

    .line 108
    goto :goto_3

    .line 109
    :pswitch_3
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Q()Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/pay/settings/AddMoneyTipsConfig;->getInstrumentTip()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 122
    .line 123
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-nez v3, :cond_5

    .line 128
    .line 129
    move-object v3, v4

    .line 130
    :cond_5
    invoke-static {v3}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    new-array v5, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v3, v5, v0

    .line 137
    .line 138
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    if-nez v3, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :pswitch_4
    sget p1, Lteam/opay/pay/R$string;->amount_less_min_tips:I

    .line 153
    .line 154
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 155
    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    invoke-virtual {v1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    :cond_7
    if-nez v3, :cond_8

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    move-object v4, v3

    .line 172
    :goto_1
    invoke-static {v4}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object v1, v2, v0

    .line 179
    .line 180
    invoke-static {p1, v2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    goto :goto_3

    .line 185
    :pswitch_5
    sget p1, Lteam/opay/pay/R$string;->amount_no_more_remind:I

    .line 186
    .line 187
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->t:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 188
    .line 189
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-nez v1, :cond_9

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_9
    move-object v4, v1

    .line 197
    :goto_2
    invoke-static {v4}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-array v2, v2, [Ljava/lang/Object;

    .line 202
    .line 203
    aput-object v1, v2, v0

    .line 204
    .line 205
    invoke-static {p1, v2}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    :goto_3
    return-object v4

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->j:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final O()Lteam/opay/core/api/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->l:Lteam/opay/core/api/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Lteam/opay/pay/home/pay/Service;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Lteam/opay/pay/settings/AddMoneyTipsConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/settings/AddMoneyTipsConfig;

    .line 8
    .line 9
    return-object v0
.end method

.method public final R(Landroid/os/Bundle;Lag8;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "argment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "key_source_from"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->g:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "input_amount"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    :cond_0
    iput-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    :goto_0
    iput-wide v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->j:D

    .line 45
    .line 46
    const-string v0, "is_from_desk"

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->i:Z

    .line 54
    .line 55
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    new-instance v0, Lmn9;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lmn9;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->L(Lag8;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final T(Lteam/opay/core/api/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->l:Lteam/opay/core/api/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d0()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->D(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->u:Z

    .line 21
    .line 22
    return-void
.end method

.method public final U(Lag8;)V
    .locals 8

    .line 1
    new-instance v0, Lteam/opay/core/android/arch/RequestBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 11
    .line 12
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lteam/opay/pay/kyc/customer/EmptyReq;

    .line 21
    .line 22
    invoke-direct {v2}, Lteam/opay/pay/kyc/customer/EmptyReq;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lxt;->C(Lteam/opay/pay/kyc/customer/EmptyReq;)Lretrofit2/Call;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lln9;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lln9;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v5, Lteam/opay/pay/wallet/NewAddMoneyViewModel$queryUserRemainQuotal$2;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v5, v0, p1, p0, v1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$queryUserRemainQuotal$2;-><init>(Landroidx/lifecycle/LiveData;Lag8;Lteam/opay/pay/wallet/NewAddMoneyViewModel;Ljr2;)V

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x3

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final W(Lteam/opay/core/api/graphql/RemainQuotaResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RemainQuotaResponse;->b()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->t:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/RemainQuotaResponse;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toBigDecimal()Ljava/math/BigDecimal;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object p1, v1

    .line 27
    :goto_0
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 41
    .line 42
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 43
    .line 44
    const-string v1, "5000000"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    invoke-virtual {p0, p1, v1, v2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_4
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-gez p1, :cond_5

    .line 96
    .line 97
    iput-boolean v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 98
    .line 99
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    iget-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 110
    .line 111
    invoke-virtual {p0, p1, v0, v2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/pay/Service;->h(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    return-void
.end method

.method public final X(Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/wallet/view/NewAddMoneyUiIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Z(Lteam/opay/core/api/b;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->l:Lteam/opay/core/api/b;

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Lag8;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "1"

    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceId;->COINS_BIND:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "2"

    .line 17
    .line 18
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    sget-object p2, Lteam/opay/core/api/GraphQL$ServiceId;->COINS_TOPUP:Lteam/opay/core/api/GraphQL$ServiceId;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    move-object p2, v1

    .line 28
    :goto_0
    invoke-static {p0}, Ll0g;->a(Landroidx/lifecycle/ViewModel;)Lzr2;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v5, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;

    .line 37
    .line 38
    invoke-direct {v5, p0, p2, p1, v1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel$setServiceInfo$1;-><init>(Lteam/opay/pay/wallet/NewAddMoneyViewModel;Lteam/opay/core/api/GraphQL$ServiceId;Lag8;Ljr2;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-static/range {v2 .. v7}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final b0(Lteam/opay/pay/home/pay/Service;)V
    .locals 0
    .param p1    # Lteam/opay/pay/home/pay/Service;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 2
    .line 3
    return-void
.end method

.method public final d0()V
    .locals 13

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/pay/home/pay/Service;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string v2, "10"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    move-object v2, v1

    .line 26
    :cond_1
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Lteam/opay/pay/home/pay/Service;->d()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    :cond_2
    const-string v3, "9999"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    move-object v3, v1

    .line 45
    :cond_3
    iput-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    iput-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 48
    .line 49
    iput-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 50
    .line 51
    iput-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->l:Lteam/opay/core/api/b;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-interface {v0}, Lteam/opay/core/api/b;->getType()Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-object v0, v4

    .line 64
    :goto_0
    sget-object v5, Lteam/opay/core/api/GraphQL$PaymentInstrumentType;->ACCOUNT:Lteam/opay/core/api/GraphQL$PaymentInstrumentType;

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    const/4 v7, 0x0

    .line 68
    if-eq v0, v5, :cond_5

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/4 v0, 0x0

    .line 73
    :goto_1
    iget-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->n:Lteam/opay/pay/settings/BankLimitData;

    .line 74
    .line 75
    const-string v8, ""

    .line 76
    .line 77
    if-eqz v5, :cond_e

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v5}, Lteam/opay/pay/settings/BankLimitData;->b()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    invoke-virtual {v5}, Lteam/opay/pay/settings/BankLimitData;->a()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    :goto_2
    if-eqz v5, :cond_e

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_d

    .line 101
    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    move-object v10, v9

    .line 107
    check-cast v10, Lteam/opay/pay/settings/BankLimitInfo;

    .line 108
    .line 109
    iget-object v11, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->l:Lteam/opay/core/api/b;

    .line 110
    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    if-eqz v11, :cond_8

    .line 114
    .line 115
    invoke-interface {v11}, Lteam/opay/core/api/b;->getCardNumber()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    goto :goto_3

    .line 120
    :cond_8
    move-object v11, v4

    .line 121
    :goto_3
    if-nez v11, :cond_b

    .line 122
    .line 123
    :goto_4
    move-object v11, v8

    .line 124
    goto :goto_6

    .line 125
    :cond_9
    if-eqz v11, :cond_a

    .line 126
    .line 127
    invoke-interface {v11}, Lteam/opay/core/api/b;->getBankCode()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    goto :goto_5

    .line 132
    :cond_a
    move-object v11, v4

    .line 133
    :goto_5
    if-nez v11, :cond_b

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_b
    :goto_6
    invoke-virtual {v10}, Lteam/opay/pay/settings/BankLimitInfo;->b()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-nez v10, :cond_c

    .line 141
    .line 142
    move-object v10, v8

    .line 143
    :cond_c
    const/4 v12, 0x2

    .line 144
    invoke-static {v11, v10, v7, v12, v4}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_7

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_d
    move-object v9, v4

    .line 152
    :goto_7
    check-cast v9, Lteam/opay/pay/settings/BankLimitInfo;

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_e
    move-object v9, v4

    .line 156
    :goto_8
    sget-object v0, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 157
    .line 158
    if-eqz v9, :cond_f

    .line 159
    .line 160
    invoke-virtual {v9}, Lteam/opay/pay/settings/BankLimitInfo;->c()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    goto :goto_9

    .line 165
    :cond_f
    move-object v5, v4

    .line 166
    :goto_9
    if-nez v5, :cond_10

    .line 167
    .line 168
    move-object v5, v8

    .line 169
    :cond_10
    invoke-virtual {v0, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-nez v5, :cond_11

    .line 174
    .line 175
    move-object v5, v1

    .line 176
    :cond_11
    iput-object v5, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 177
    .line 178
    if-eqz v9, :cond_12

    .line 179
    .line 180
    invoke-virtual {v9}, Lteam/opay/pay/settings/BankLimitInfo;->d()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :cond_12
    if-nez v4, :cond_13

    .line 185
    .line 186
    move-object v4, v8

    .line 187
    :cond_13
    invoke-virtual {v0, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-nez v4, :cond_14

    .line 192
    .line 193
    move-object v4, v1

    .line 194
    :cond_14
    iput-object v4, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->r:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 195
    .line 196
    invoke-virtual {p0, v2, v4, v7}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iput-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 201
    .line 202
    iget-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->s:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 203
    .line 204
    invoke-virtual {p0, v3, v2, v6}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iput-object v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 209
    .line 210
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 211
    .line 212
    if-eqz v3, :cond_15

    .line 213
    .line 214
    invoke-virtual {v3, v2}, Lteam/opay/pay/home/pay/Service;->h(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 215
    .line 216
    .line 217
    :cond_15
    new-instance v2, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$INIT;

    .line 218
    .line 219
    iget-object v3, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->k:Lteam/opay/pay/home/pay/Service;

    .line 220
    .line 221
    invoke-direct {v2, v3}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$INIT;-><init>(Lteam/opay/pay/home/pay/Service;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->G()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v3, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_LIMIT;

    .line 232
    .line 233
    invoke-direct {v3, v2}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_LIMIT;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v3}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 237
    .line 238
    .line 239
    iget-boolean v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->w:Z

    .line 240
    .line 241
    if-eqz v2, :cond_16

    .line 242
    .line 243
    sget-object v2, Lteam/opay/pay/wallet/TopupAmountLimitStatus;->maxLessThanMin:Lteam/opay/pay/wallet/TopupAmountLimitStatus;

    .line 244
    .line 245
    new-instance v3, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;

    .line 246
    .line 247
    invoke-virtual {p0, v2}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->I(Lteam/opay/pay/wallet/TopupAmountLimitStatus;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-direct {v3, v4, v2}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$AMOUNT_TIPS;-><init>(Ljava/lang/String;Lteam/opay/pay/wallet/TopupAmountLimitStatus;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v3}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 255
    .line 256
    .line 257
    :cond_16
    iget-boolean v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->u:Z

    .line 258
    .line 259
    if-nez v2, :cond_1a

    .line 260
    .line 261
    iget-wide v2, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->j:D

    .line 262
    .line 263
    const-wide/16 v4, 0x0

    .line 264
    .line 265
    cmpl-double v9, v2, v4

    .line 266
    .line 267
    if-lez v9, :cond_1a

    .line 268
    .line 269
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v0, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->b(Ljava/lang/String;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-nez v0, :cond_17

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_17
    move-object v1, v0

    .line 281
    :goto_a
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 282
    .line 283
    invoke-virtual {p0, v1, v0, v7}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->q:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 288
    .line 289
    invoke-virtual {p0, v0, v1, v6}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->F(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Z)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-nez v1, :cond_18

    .line 298
    .line 299
    move-object v1, v8

    .line 300
    :cond_18
    iput-object v1, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->h:Ljava/lang/String;

    .line 301
    .line 302
    new-instance v1, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$UPDATE_AMOUNT_VALUE;

    .line 303
    .line 304
    invoke-virtual {v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-nez v0, :cond_19

    .line 309
    .line 310
    goto :goto_b

    .line 311
    :cond_19
    move-object v8, v0

    .line 312
    :goto_b
    invoke-static {v8}, Ljmf;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-direct {v1, v0}, Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState$UPDATE_AMOUNT_VALUE;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v1}, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->Y(Lteam/opay/pay/wallet/view/NewAddMoneyInputUiState;)V

    .line 320
    .line 321
    .line 322
    :cond_1a
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/wallet/NewAddMoneyViewModel;->d:Lteam/opay/core/api/e;

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
