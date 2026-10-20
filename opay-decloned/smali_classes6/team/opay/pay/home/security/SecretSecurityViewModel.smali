.class public final Lteam/opay/pay/home/security/SecretSecurityViewModel;
.super Lteam/opay/core/api/BaseAndroidViewModel;
.source "SecretSecurityViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J-\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00160\u00152\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\u00a2\u0006\u0004\u0008\u001f\u0010 J-\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00152\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\u00a2\u0006\u0004\u0008!\u0010 J-\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u00160\u00152\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\u00a2\u0006\u0004\u0008#\u0010 J\u0019\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00160\u0015\u00a2\u0006\u0004\u0008%\u0010\u0019J\u0015\u0010(\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\"\u00106\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u001f\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\"\u0010=\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010A\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00108\u001a\u0004\u0008?\u0010:\"\u0004\u0008@\u0010<R\"\u0010E\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00108\u001a\u0004\u0008C\u0010:\"\u0004\u0008D\u0010<R\"\u0010I\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u00108\u001a\u0004\u0008G\u0010:\"\u0004\u0008H\u0010<R\"\u0010M\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u001f\u001a\u0004\u0008K\u00103\"\u0004\u0008L\u00105R\"\u0010R\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010.\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010\u0014R$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\"\u0010^\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u00108\u001a\u0004\u0008\\\u0010:\"\u0004\u0008]\u0010<R\'\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00100_8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\"\u0010h\u001a\u0002008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010\u001f\u001a\u0004\u0008f\u00103\"\u0004\u0008g\u00105R\u001a\u0010l\u001a\u0008\u0012\u0004\u0012\u00020\u00100i8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u001d\u0010p\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008m\u0010n\u001a\u0004\u0008o\u0010\u0019R\'\u0010t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0i8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008q\u0010a\u001a\u0004\u0008r\u0010sR\u001d\u0010w\u001a\u0008\u0012\u0004\u0012\u0002000i8\u0006\u00a2\u0006\u000c\n\u0004\u0008u\u0010k\u001a\u0004\u0008v\u0010s\u00a8\u0006x"
    }
    d2 = {
        "Lteam/opay/pay/home/security/SecretSecurityViewModel;",
        "Lteam/opay/core/api/BaseAndroidViewModel;",
        "Lteam/opay/pay/home/security/SecretSecurityRepository;",
        "secretSecurityRepository",
        "Lteam/opay/core/api/e;",
        "sessionProvider",
        "Landroid/app/Application;",
        "appLi",
        "<init>",
        "(Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V",
        "Lteam/opay/core/api/graphql/SettingsConfigData;",
        "data",
        "",
        "Lteam/opay/pay/home/security/SettingsItemData;",
        "R",
        "(Lteam/opay/core/api/graphql/SettingsConfigData;)Ljava/util/List;",
        "",
        "page",
        "",
        "h0",
        "(I)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/pay/home/security/SecretSecurityData;",
        "S",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "",
        "",
        "params",
        "Lteam/opay/pay/home/security/SecretSecurityResponse;",
        "Z",
        "(Ljava/util/Map;)Landroidx/lifecycle/LiveData;",
        "T",
        "Lteam/opay/pay/home/security/PayPinSetResultResponse;",
        "Y",
        "Lteam/opay/pay/home/security/CardSetting;",
        "B",
        "Lag8;",
        "owner",
        "M",
        "(Lag8;)V",
        "d",
        "Lteam/opay/pay/home/security/SecretSecurityRepository;",
        "e",
        "Lteam/opay/core/api/e;",
        "I",
        "()Lteam/opay/core/api/e;",
        "",
        "f",
        "P",
        "()Z",
        "e0",
        "(Z)V",
        "upgradeable",
        "g",
        "Ljava/lang/String;",
        "Q",
        "()Ljava/lang/String;",
        "f0",
        "(Ljava/lang/String;)V",
        "version",
        "h",
        "getTitle",
        "c0",
        "title",
        "i",
        "getContent",
        "U",
        "content",
        "j",
        "K",
        "b0",
        "setPinTips",
        "k",
        "J",
        "a0",
        "setNew",
        "l",
        "E",
        "()I",
        "W",
        "from",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "m",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "D",
        "()Lteam/opay/pay/account/verify/VerifyEvent;",
        "V",
        "(Lteam/opay/pay/account/verify/VerifyEvent;)V",
        "event",
        "n",
        "O",
        "d0",
        "type",
        "",
        "o",
        "Lid8;",
        "C",
        "()Ljava/util/Map;",
        "dotCodeMap",
        "p",
        "F",
        "X",
        "loading",
        "Landroidx/lifecycle/MutableLiveData;",
        "q",
        "Landroidx/lifecycle/MutableLiveData;",
        "_startFragment",
        "r",
        "Landroidx/lifecycle/LiveData;",
        "H",
        "observerStartFragment",
        "s",
        "L",
        "()Landroidx/lifecycle/MutableLiveData;",
        "settingConfigList",
        "t",
        "G",
        "loadingEvent",
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
.field public final d:Lteam/opay/pay/home/security/SecretSecurityRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Z

.field public l:I

.field public m:Lteam/opay/pay/account/verify/VerifyEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Z

.field public final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lid8;
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


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/security/SecretSecurityRepository;Lteam/opay/core/api/e;Landroid/app/Application;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/security/SecretSecurityRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "secretSecurityRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "appLi"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lteam/opay/core/api/BaseAndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->e:Lteam/opay/core/api/e;

    .line 22
    .line 23
    const-string p1, ""

    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->g:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->h:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->j:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->n:Ljava/lang/String;

    .line 34
    .line 35
    new-instance p1, Li8d;

    .line 36
    .line 37
    invoke-direct {p1}, Li8d;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->o:Lid8;

    .line 45
    .line 46
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 54
    .line 55
    new-instance p1, Lj8d;

    .line 56
    .line 57
    invoke-direct {p1}, Lj8d;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->s:Lid8;

    .line 65
    .line 66
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    return-void
.end method

.method public static final A()Ljava/util/Map;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "home_setting"

    .line 7
    .line 8
    invoke-static {v1, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "theme_setting"

    .line 18
    .line 19
    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [Lkotlin/Pair;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    aput-object v0, v3, v4

    .line 28
    .line 29
    aput-object v2, v3, v1

    .line 30
    .line 31
    invoke-static {v3}, Lkotlin/collections/e;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public static final N(Lteam/opay/pay/home/security/SecretSecurityViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lteam/opay/core/api/graphql/SettingsConfigData;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->R(Lteam/opay/core/api/graphql/SettingsConfigData;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final g0()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic x()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->g0()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->A()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic z(Lteam/opay/pay/home/security/SecretSecurityViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->N(Lteam/opay/pay/home/security/SecretSecurityViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final B()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/CardSetting;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityRepository;->b()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final C()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->o:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    return-object v0
.end method

.method public final D()Lteam/opay/pay/account/verify/VerifyEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->m:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->r:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Lteam/opay/core/api/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->e:Lteam/opay/core/api/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/security/SettingsItemData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->s:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

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
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lteam/opay/core/api/GraphQL;->a(Landroid/content/Context;)Lxt;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lteam/opay/pay/kyc/customer/EmptyReq;

    .line 26
    .line 27
    invoke-direct {v2}, Lteam/opay/pay/kyc/customer/EmptyReq;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Lxt;->X(Lteam/opay/pay/kyc/customer/EmptyReq;)Lretrofit2/Call;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lteam/opay/core/api/graphql/SettingsConfigData;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->c(Ljava/lang/Class;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "settingConfigPage.json"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->f(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "200"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lk8d;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lk8d;-><init>(Lteam/opay/pay/home/security/SecretSecurityViewModel;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final O()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R(Lteam/opay/core/api/graphql/SettingsConfigData;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/api/graphql/SettingsConfigData;",
            ")",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/security/SettingsItemData;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lteam/opay/core/api/graphql/SettingsConfigData;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_9

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_9

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/opay/team/newhome/bean/CommonPayData;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    add-int/lit8 v7, v5, 0x1

    .line 52
    .line 53
    if-gez v5, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 56
    .line 57
    .line 58
    :cond_1
    check-cast v6, Lcom/opay/team/newhome/bean/NewBusinessData;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/opay/team/newhome/bean/CommonPayData;->a()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-ne v8, v0, :cond_2

    .line 69
    .line 70
    sget-object v5, Lteam/opay/pay/home/security/SettingsItemPositon;->Single:Lteam/opay/pay/home/security/SettingsItemPositon;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    if-nez v5, :cond_3

    .line 74
    .line 75
    sget-object v5, Lteam/opay/pay/home/security/SettingsItemPositon;->Top:Lteam/opay/pay/home/security/SettingsItemPositon;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sub-int/2addr v8, v0

    .line 79
    if-ne v5, v8, :cond_4

    .line 80
    .line 81
    sget-object v5, Lteam/opay/pay/home/security/SettingsItemPositon;->Bottom:Lteam/opay/pay/home/security/SettingsItemPositon;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    sget-object v5, Lteam/opay/pay/home/security/SettingsItemPositon;->Middle:Lteam/opay/pay/home/security/SettingsItemPositon;

    .line 85
    .line 86
    :goto_1
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/NewBusinessData;->getServiceCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_6

    .line 91
    .line 92
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p0}, Lteam/opay/pay/home/security/SecretSecurityViewModel;->C()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/NewBusinessData;->getServiceCode()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Ljava/lang/Integer;

    .line 112
    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    sget-object v9, Llhc;->a:Llhc;

    .line 120
    .line 121
    invoke-virtual {v9, v8}, Llhc;->a(I)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    const/4 v8, 0x0

    .line 127
    :goto_3
    invoke-virtual {v6}, Lcom/opay/team/newhome/bean/NewBusinessData;->getServiceCode()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    const-string v10, "security_question"

    .line 132
    .line 133
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_8

    .line 138
    .line 139
    sget-object v9, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 140
    .line 141
    invoke-virtual {v9}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Lteam/opay/core/account/AccountInfoManager;->C()Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_7

    .line 150
    .line 151
    sget v9, Lteam/opay/pay/R$string;->osdk_setting_reset:I

    .line 152
    .line 153
    invoke-static {v9}, Ljmf;->k(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    goto :goto_4

    .line 158
    :cond_7
    sget v9, Lteam/opay/pay/R$string;->osdk_setting_not_set:I

    .line 159
    .line 160
    invoke-static {v9}, Ljmf;->k(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    goto :goto_4

    .line 165
    :cond_8
    const-string v9, ""

    .line 166
    .line 167
    :goto_4
    invoke-virtual {v6, v9}, Lcom/opay/team/newhome/bean/NewBusinessData;->setRich_desc(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 171
    .line 172
    new-instance v9, Lteam/opay/pay/home/security/SettingsItemData;

    .line 173
    .line 174
    invoke-direct {v9, v5, v6, v8}, Lteam/opay/pay/home/security/SettingsItemData;-><init>(Lteam/opay/pay/home/security/SettingsItemPositon;Lcom/opay/team/newhome/bean/NewBusinessData;Z)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move v5, v7

    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_9
    return-object v1
.end method

.method public final S()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/security/SecretSecurityRepository;->c()Landroidx/lifecycle/LiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final T(Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/SecretSecurityData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/SecretSecurityRepository;->d(Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final U(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->i:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Lteam/opay/pay/account/verify/VerifyEvent;)V
    .locals 0
    .param p1    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->m:Lteam/opay/pay/account/verify/VerifyEvent;

    .line 2
    .line 3
    return-void
.end method

.method public final W(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public final X(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/PayPinSetResultResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/SecretSecurityRepository;->e(Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final Z(Ljava/util/Map;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/pay/home/security/SecretSecurityResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->d:Lteam/opay/pay/home/security/SecretSecurityRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/security/SecretSecurityRepository;->f(Ljava/util/Map;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final a0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->j:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final c0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final d0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->n:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final e0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public final f0(Ljava/lang/String;)V
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
    iput-object p1, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final h0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/SecretSecurityViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
