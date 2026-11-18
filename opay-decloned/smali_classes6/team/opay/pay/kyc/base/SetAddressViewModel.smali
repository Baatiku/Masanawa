.class public final Lteam/opay/pay/kyc/base/SetAddressViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SetAddressViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/base/SetAddressViewModel$AddressResult;,
        Lteam/opay/pay/kyc/base/SetAddressViewModel$ChildAddressInfo;,
        Lteam/opay/pay/kyc/base/SetAddressViewModel$ChildListAddressInfo;,
        Lteam/opay/pay/kyc/base/SetAddressViewModel$ListAddressInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0007\u0018\u00002\u00020\u0001:\u00046789B+\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R(\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0017\u001a\u0004\u0008\u001f\u0010\u0019R#\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0017\u001a\u0004\u0008$\u0010\u0019R\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020&0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0017\u001a\u0004\u0008(\u0010\u0019R\u001d\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u0017\u001a\u0004\u0008+\u0010\u0019R#\u0010/\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0017\u001a\u0004\u0008.\u0010\u0019R#\u00102\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u00080\u0010\u0017\u001a\u0004\u00081\u0010\u0019R#\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!0\u00148\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010\u0017\u001a\u0004\u00084\u0010\u0019\u00a8\u0006:"
    }
    d2 = {
        "Lteam/opay/pay/kyc/base/SetAddressViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "appExecutors",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "kycSceneRepository",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "kycRepository",
        "Lteam/opay/pay/address/AddressDao;",
        "addressDao",
        "<init>",
        "(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/base/KycSceneRepository;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/pay/address/AddressDao;)V",
        "a",
        "Lteam/opay/core/android/arch/AppExecutors;",
        "b",
        "Lteam/opay/pay/kyc/base/KycSceneRepository;",
        "c",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "d",
        "Lteam/opay/pay/address/AddressDao;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLoading",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setLoading",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loading",
        "",
        "f",
        "getRequestErrorLiveData",
        "requestErrorLiveData",
        "",
        "Lteam/opay/pay/address/Address;",
        "g",
        "getAddressNewList",
        "addressNewList",
        "Lteam/opay/pay/kyc/base/BaseKycVerifyResult;",
        "h",
        "getAddressInfoLiveData",
        "addressInfoLiveData",
        "i",
        "getAddressUpgradeLiveData",
        "addressUpgradeLiveData",
        "j",
        "getStateList",
        "stateList",
        "k",
        "getLgaList",
        "lgaList",
        "l",
        "getAreaList",
        "areaList",
        "ChildAddressInfo",
        "ChildListAddressInfo",
        "ListAddressInfo",
        "AddressResult",
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
.field public final a:Lteam/opay/core/android/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/kyc/base/KycSceneRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/kyc/customer/KycRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/pay/address/AddressDao;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Landroidx/lifecycle/MutableLiveData;
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

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/BaseKycVerifyResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroidx/lifecycle/MutableLiveData;
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

.field public final j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
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
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lteam/opay/pay/address/Address;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/android/arch/AppExecutors;Lteam/opay/pay/kyc/base/KycSceneRepository;Lteam/opay/pay/kyc/customer/KycRepository;Lteam/opay/pay/address/AddressDao;)V
    .locals 1
    .param p1    # Lteam/opay/core/android/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/base/KycSceneRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/kyc/customer/KycRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/address/AddressDao;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "kycSceneRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "kycRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->a:Lteam/opay/core/android/arch/AppExecutors;

    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->b:Lteam/opay/pay/kyc/base/KycSceneRepository;

    .line 22
    .line 23
    iput-object p3, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->c:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 24
    .line 25
    iput-object p4, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->d:Lteam/opay/pay/address/AddressDao;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lteam/opay/pay/kyc/base/SetAddressViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    return-void
.end method
