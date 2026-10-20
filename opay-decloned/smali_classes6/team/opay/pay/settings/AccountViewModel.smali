.class public final Lteam/opay/pay/settings/AccountViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "AccountViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/settings/AccountViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00110\u00102\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00110\u00102\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010!J1\u0010\'\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00152\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u00a2\u0006\u0004\u0008\'\u0010(J!\u0010-\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020)2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008-\u0010.R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001f\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c078\u0006\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R\u001d\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u001c078\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u00109\u001a\u0004\u0008>\u0010;R\u001f\u0010B\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u0015078\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u00109\u001a\u0004\u0008A\u0010;R \u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020E0D0C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR)\u0010P\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u00020\u00150J0I8\u0006\u00a2\u0006\u000c\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010OR\u001d\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020E0D0\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010\u0014R\u0014\u0010V\u001a\u00020S8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0014\u0010Z\u001a\u00020W8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0016\u0010^\u001a\u0004\u0018\u00010[8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]\u00a8\u0006_"
    }
    d2 = {
        "Lteam/opay/pay/settings/AccountViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/e;",
        "Lteam/opay/core/account/AccountRepository;",
        "accountRepository",
        "Lteam/opay/pay/kyc/PosLevelRespository;",
        "posLevelResponse",
        "Lknf;",
        "verificationWebService",
        "Lteam/opay/pay/kyc/SignAgreementRepository;",
        "signAgreementRepository",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/PosLevelRespository;Lknf;Lteam/opay/pay/kyc/SignAgreementRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/Resource;",
        "Lteam/opay/core/account/AccountProfile;",
        "x",
        "()Landroidx/lifecycle/LiveData;",
        "",
        "scene",
        "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
        "C",
        "(Ljava/lang/String;)Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/account/ChangeEmailRequest;",
        "request",
        "",
        "u",
        "(Lteam/opay/core/account/ChangeEmailRequest;)Landroidx/lifecycle/LiveData;",
        "",
        "D",
        "()V",
        "Lteam/opay/pay/kyc/DownloadPosLevelRequest;",
        "destFileDir",
        "destFileName",
        "Lyi3;",
        "downloadListener",
        "v",
        "(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V",
        "Lag8;",
        "lifecycleOwner",
        "Lteam/opay/pay/kyc/SignAgreeRequest;",
        "req",
        "F",
        "(Lag8;Lteam/opay/pay/kyc/SignAgreeRequest;)V",
        "c",
        "Lteam/opay/core/account/AccountRepository;",
        "d",
        "Lteam/opay/pay/kyc/PosLevelRespository;",
        "e",
        "Lknf;",
        "f",
        "Lteam/opay/pay/kyc/SignAgreementRepository;",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "g",
        "Lteam/opay/pay/util/SingleLiveEvent;",
        "z",
        "()Lteam/opay/pay/util/SingleLiveEvent;",
        "signAgreementEvent",
        "h",
        "B",
        "signLoadingEvent",
        "i",
        "A",
        "signErrorEvent",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lteam/opay/core/android/arch/Event;",
        "Lteam/opay/core/api/LogoutEvent;",
        "j",
        "Landroidx/lifecycle/MediatorLiveData;",
        "_logoutEvents",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "Lteam/opay/odialog/net/AdDataItem;",
        "k",
        "Landroidx/lifecycle/MutableLiveData;",
        "y",
        "()Landroidx/lifecycle/MutableLiveData;",
        "showAdEvent",
        "w",
        "logoutEvents",
        "Lteam/opay/core/api/Country;",
        "o",
        "()Lteam/opay/core/api/Country;",
        "country",
        "Lteam/opay/core/api/GraphQL$Currency;",
        "p",
        "()Lteam/opay/core/api/GraphQL$Currency;",
        "currency",
        "Lteam/opay/core/api/GraphQL$User;",
        "m",
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
.field public final synthetic b:Lteam/opay/core/api/e;

.field public final c:Lteam/opay/core/account/AccountRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/kyc/PosLevelRespository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lknf;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lteam/opay/pay/kyc/SignAgreementRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lteam/opay/pay/util/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lteam/opay/core/android/arch/Event<",
            "Lteam/opay/core/api/LogoutEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/account/AccountRepository;Lteam/opay/pay/kyc/PosLevelRespository;Lknf;Lteam/opay/pay/kyc/SignAgreementRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Lteam/opay/core/account/AccountRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/PosLevelRespository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lknf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/kyc/SignAgreementRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lteam/opay/core/api/Features;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "accountRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "posLevelResponse"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "verificationWebService"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "signAgreementRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sessionProvider"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "features"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p6}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 32
    .line 33
    .line 34
    iput-object p5, p0, Lteam/opay/pay/settings/AccountViewModel;->b:Lteam/opay/core/api/e;

    .line 35
    .line 36
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 37
    .line 38
    iput-object p2, p0, Lteam/opay/pay/settings/AccountViewModel;->d:Lteam/opay/pay/kyc/PosLevelRespository;

    .line 39
    .line 40
    iput-object p3, p0, Lteam/opay/pay/settings/AccountViewModel;->e:Lknf;

    .line 41
    .line 42
    iput-object p4, p0, Lteam/opay/pay/settings/AccountViewModel;->f:Lteam/opay/pay/kyc/SignAgreementRepository;

    .line 43
    .line 44
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 45
    .line 46
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->g:Lteam/opay/pay/util/SingleLiveEvent;

    .line 50
    .line 51
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 52
    .line 53
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 57
    .line 58
    new-instance p1, Lteam/opay/pay/util/SingleLiveEvent;

    .line 59
    .line 60
    invoke-direct {p1}, Lteam/opay/pay/util/SingleLiveEvent;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 64
    .line 65
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    .line 66
    .line 67
    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 71
    .line 72
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lteam/opay/pay/settings/AccountViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    return-void
.end method

.method public static final E(Lteam/opay/pay/settings/AccountViewModel;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/settings/AccountViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 28
    .line 29
    sget-object v1, Lteam/opay/core/api/LogoutEvent;->ERROR:Lteam/opay/core/api/LogoutEvent;

    .line 30
    .line 31
    invoke-static {v0, v1}, Llp5;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 36
    .line 37
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 42
    .line 43
    sget-object v1, Lteam/opay/core/api/LogoutEvent;->SUCCESS:Lteam/opay/core/api/LogoutEvent;

    .line 44
    .line 45
    invoke-static {v0, v1}, Llp5;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 50
    .line 51
    sget-object v1, Lteam/opay/core/api/LogoutEvent;->LOADING:Lteam/opay/core/api/LogoutEvent;

    .line 52
    .line 53
    invoke-static {v0, v1}, Llp5;->a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p2}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    sget-object v0, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 61
    .line 62
    if-eq p2, v0, :cond_4

    .line 63
    .line 64
    iget-object p0, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->c(Landroidx/lifecycle/LiveData;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/settings/AccountViewModel;Lag8;Lteam/opay/pay/kyc/SignAgreeRequest;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/AccountViewModel;->F(Lag8;Lteam/opay/pay/kyc/SignAgreeRequest;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final H(Lteam/opay/pay/settings/AccountViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lteam/opay/pay/settings/AccountViewModel$a;->a:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lteam/opay/pay/settings/AccountViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 35
    .line 36
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 45
    .line 46
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->g:Lteam/opay/pay/util/SingleLiveEvent;

    .line 51
    .line 52
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lteam/opay/pay/settings/AccountViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 60
    .line 61
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/settings/AccountViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 68
    .line 69
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/settings/AccountViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/settings/AccountViewModel;->H(Lteam/opay/pay/settings/AccountViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/settings/AccountViewModel;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/settings/AccountViewModel;->E(Lteam/opay/pay/settings/AccountViewModel;Landroidx/lifecycle/LiveData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lteam/opay/pay/settings/AccountViewModel;)Lknf;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/settings/AccountViewModel;->e:Lknf;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final A()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->i:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->h:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/api/graphql/UserInfoAggregateRsp;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/account/AccountRepository;->p(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final D()V
    .locals 4

    .line 1
    sget-object v0, Lmrb;->a:Lmrb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmrb;->c()V

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
    new-instance v1, Lteam/opay/pay/settings/AccountViewModel$b;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lteam/opay/pay/settings/AccountViewModel$b;-><init>(Lteam/opay/pay/settings/AccountViewModel;Lteam/opay/core/android/arch/AppExecutors;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lteam/opay/core/android/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 21
    .line 22
    new-instance v2, Ldd;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0}, Ldd;-><init>(Lteam/opay/pay/settings/AccountViewModel;Landroidx/lifecycle/LiveData;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lteam/opay/pay/settings/AccountViewModel$c;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lteam/opay/pay/settings/AccountViewModel$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/MediatorLiveData;->b(Landroidx/lifecycle/LiveData;Lvfa;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final F(Lag8;Lteam/opay/pay/kyc/SignAgreeRequest;)V
    .locals 1
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/SignAgreeRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->f:Lteam/opay/pay/kyc/SignAgreementRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lteam/opay/pay/kyc/SignAgreementRepository;->f(Lteam/opay/pay/kyc/SignAgreeRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    new-instance v0, Lcd;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcd;-><init>(Lteam/opay/pay/settings/AccountViewModel;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->b:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->b:Lteam/opay/core/api/e;

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

.method public final u(Lteam/opay/core/account/ChangeEmailRequest;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p1    # Lteam/opay/core/account/ChangeEmailRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/account/ChangeEmailRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/core/account/AccountRepository;->m(Lteam/opay/core/account/ChangeEmailRequest;)Landroidx/lifecycle/LiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final v(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/DownloadPosLevelRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyi3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "destFileDir"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "destFileName"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->d:Lteam/opay/pay/kyc/PosLevelRespository;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lteam/opay/pay/kyc/PosLevelRespository;->k(Lteam/opay/pay/kyc/DownloadPosLevelRequest;Ljava/lang/String;Ljava/lang/String;Lyi3;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Event<",
            "Lteam/opay/core/api/LogoutEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->j:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/Resource<",
            "Lteam/opay/core/account/AccountProfile;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->c:Lteam/opay/core/account/AccountRepository;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lteam/opay/core/account/AccountRepository;->o(Z)Landroidx/lifecycle/LiveData;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final y()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Pair<",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Lteam/opay/pay/util/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/util/SingleLiveEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/settings/AccountViewModel;->g:Lteam/opay/pay/util/SingleLiveEvent;

    .line 2
    .line 3
    return-object v0
.end method
