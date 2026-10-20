.class public final Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "KycUpgrade2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J+\u0010\u000f\u001a\u00020\u000e2\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001f\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0015\u001a\u0004\u0008\u001b\u0010\u0017R\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0015\u001a\u0004\u0008\u001f\u0010\u0017R\u001d\u0010$\u001a\u0008\u0012\u0004\u0012\u00020!0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0015\u001a\u0004\u0008#\u0010\u0017R\u001f\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0015\u001a\u0004\u0008\'\u0010\u0017R\u001d\u0010,\u001a\u0008\u0012\u0004\u0012\u00020)0\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u0015\u001a\u0004\u0008+\u0010\u0017R\u001b\u00102\u001a\u00020-8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\"\u00109\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010=\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00104\u001a\u0004\u0008;\u00106\"\u0004\u0008<\u00108R\"\u0010A\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00104\u001a\u0004\u0008?\u00106\"\u0004\u0008@\u00108R\"\u0010E\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00104\u001a\u0004\u0008C\u00106\"\u0004\u0008D\u00108R\"\u0010I\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u00104\u001a\u0004\u0008G\u00106\"\u0004\u0008H\u00108R\"\u0010M\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u00104\u001a\u0004\u0008K\u00106\"\u0004\u0008L\u00108\u00a8\u0006N"
    }
    d2 = {
        "Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "kycRepository",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/kyc/customer/KycRepository;)V",
        "Lteam/opay/core/base/BaseFragmentV2;",
        "lifecycleOwner",
        "Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;",
        "request",
        "",
        "fromBankInfo",
        "",
        "x",
        "(Lteam/opay/core/base/BaseFragmentV2;Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;Z)V",
        "b",
        "Lteam/opay/pay/kyc/customer/KycRepository;",
        "Landroidx/lifecycle/MutableLiveData;",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "getLoading",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loading",
        "Lteam/opay/pay/kyc/base/NewKycTaskDataRsp;",
        "d",
        "getKyc2TaskListLiveData",
        "kyc2TaskListLiveData",
        "",
        "e",
        "getRequestErrorLiveData",
        "requestErrorLiveData",
        "Lteam/opay/pay/kyc/upgrade2/KycVerifyResult;",
        "f",
        "getKycVerifyResultEvent",
        "kycVerifyResultEvent",
        "Lteam/opay/pay/kyc/customer/Kyc2CheckResult;",
        "g",
        "v",
        "kyc2UpgradeResult",
        "Lteam/opay/pay/kyc/customer/UpgradeUserDataRsp;",
        "h",
        "getUpgradeUserInfo",
        "upgradeUserInfo",
        "Lteam/opay/core/settings/SettingsStorage;",
        "i",
        "Lid8;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "j",
        "Ljava/lang/String;",
        "u",
        "()Ljava/lang/String;",
        "setBizSecurityId",
        "(Ljava/lang/String;)V",
        "bizSecurityId",
        "k",
        "getOtpPhone",
        "setOtpPhone",
        "otpPhone",
        "l",
        "getScene",
        "setScene",
        "scene",
        "m",
        "getKyc2Bvn",
        "setKyc2Bvn",
        "kyc2Bvn",
        "n",
        "getTestGroup",
        "setTestGroup",
        "testGroup",
        "o",
        "getKycLevel",
        "setKycLevel",
        "kycLevel",
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
.field public final b:Lteam/opay/pay/kyc/customer/KycRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
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

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/base/NewKycTaskDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
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

.field public final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/upgrade2/KycVerifyResult;",
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
            "Lteam/opay/pay/kyc/customer/Kyc2CheckResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/UpgradeUserDataRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/kyc/customer/KycRepository;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/customer/KycRepository;
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
    const-string v0, "kycRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->b:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 15
    .line 16
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 43
    .line 44
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 50
    .line 51
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    new-instance p2, Lv78;

    .line 59
    .line 60
    invoke-direct {p2, p1}, Lv78;-><init>(Landroid/app/Application;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->i:Lid8;

    .line 68
    .line 69
    const-string p1, ""

    .line 70
    .line 71
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->j:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->k:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->l:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->m:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->n:Ljava/lang/String;

    .line 80
    .line 81
    iput-object p1, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->o:Ljava/lang/String;

    .line 82
    .line 83
    return-void
.end method

.method public static synthetic r(Landroid/app/Application;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->w(Landroid/app/Application;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->z()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;ZLteam/opay/core/base/BaseFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->y(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;ZLteam/opay/core/base/BaseFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(Landroid/app/Application;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final y(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;ZLteam/opay/core/base/BaseFragmentV2;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v4, v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    sget-object v6, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 18
    .line 19
    if-ne v5, v6, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v5, 0x0

    .line 24
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eq v4, v6, :cond_3

    .line 38
    .line 39
    sget-object v4, Lx7b;->a:Lx7b;

    .line 40
    .line 41
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 46
    .line 47
    if-ne v5, v6, :cond_2

    .line 48
    .line 49
    const-string v5, "0000"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string v6, "errorcode"

    .line 61
    .line 62
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "errormsg"

    .line 75
    .line 76
    invoke-static {v7, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    new-array v7, v1, [Lkotlin/Pair;

    .line 81
    .line 82
    aput-object v5, v7, v2

    .line 83
    .line 84
    aput-object v6, v7, v3

    .line 85
    .line 86
    const-string v5, "Bankaccount_enterBankaccount_click"

    .line 87
    .line 88
    invoke-virtual {v4, v5, v7}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    sget-object v5, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel$a;->a:[I

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    aget v4, v5, v4

    .line 102
    .line 103
    if-eq v4, v3, :cond_9

    .line 104
    .line 105
    if-eq v4, v1, :cond_4

    .line 106
    .line 107
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 108
    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_4
    iget-object v0, v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    sget-object v0, Lx7b;->a:Lx7b;

    .line 121
    .line 122
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string v5, "apiCode"

    .line 131
    .line 132
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    const-string v6, "apiErrorMsg"

    .line 145
    .line 146
    invoke-static {v6, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    new-array v1, v1, [Lkotlin/Pair;

    .line 151
    .line 152
    aput-object v4, v1, v2

    .line 153
    .line 154
    aput-object v5, v1, v3

    .line 155
    .line 156
    const-string v2, "upgrade_kyc2_verifybvn_window_show"

    .line 157
    .line 158
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->a()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v1, "2070008"

    .line 166
    .line 167
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    const-string v1, ""

    .line 172
    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-nez v0, :cond_6

    .line 180
    .line 181
    move-object v3, v1

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    move-object v3, v0

    .line 184
    :goto_2
    sget v0, Lteam/opay/pay/R$string;->osdk_validation_failed:I

    .line 185
    .line 186
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    sget v0, Lteam/opay/pay/R$string;->osdk_got_it:I

    .line 191
    .line 192
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const/16 v7, 0x8

    .line 197
    .line 198
    const/4 v8, 0x0

    .line 199
    const/4 v6, 0x0

    .line 200
    move-object/from16 v2, p2

    .line 201
    .line 202
    invoke-static/range {v2 .. v8}, Lteam/opay/core/base/BaseFragment;->J(Lteam/opay/core/base/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    sget-object v9, Lteam/opay/pay/settings/TipsDialogFragment;->u:Lteam/opay/pay/settings/TipsDialogFragment$Companion;

    .line 207
    .line 208
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-nez v0, :cond_8

    .line 213
    .line 214
    move-object v11, v1

    .line 215
    goto :goto_3

    .line 216
    :cond_8
    move-object v11, v0

    .line 217
    :goto_3
    sget v0, Lteam/opay/pay/R$string;->confirm:I

    .line 218
    .line 219
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    const/16 v18, 0xf9

    .line 224
    .line 225
    const/16 v19, 0x0

    .line 226
    .line 227
    const/4 v10, 0x0

    .line 228
    const/4 v13, 0x0

    .line 229
    const/4 v14, 0x0

    .line 230
    const/4 v15, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    invoke-static/range {v9 .. v19}, Lteam/opay/pay/settings/TipsDialogFragment$Companion;->b(Lteam/opay/pay/settings/TipsDialogFragment$Companion;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IIZZILjava/lang/Object;)Lteam/opay/pay/settings/TipsDialogFragment;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Lx78;

    .line 240
    .line 241
    invoke-direct {v1}, Lx78;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/TipsDialogFragment;->Z(Lkotlin/jvm/functions/Function0;)V

    .line 245
    .line 246
    .line 247
    move-object/from16 v1, p2

    .line 248
    .line 249
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_9
    iget-object v0, v0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 254
    .line 255
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 263
    .line 264
    return-object v0
.end method

.method public static final z()Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "upgrade_kyc2_verifybvn_window_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lteam/opay/pay/kyc/customer/Kyc2CheckResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Lteam/opay/core/base/BaseFragmentV2;Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;Z)V
    .locals 1
    .param p1    # Lteam/opay/core/base/BaseFragmentV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/base/BaseFragmentV2<",
            "*>;",
            "Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;",
            "Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;->b:Lteam/opay/pay/kyc/customer/KycRepository;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lteam/opay/pay/kyc/customer/KycRepository;->g(Lteam/opay/pay/kyc/customer/Kyc2UpgradeReq;)Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance v0, Lw78;

    .line 18
    .line 19
    invoke-direct {v0, p0, p3, p1}, Lw78;-><init>(Lteam/opay/pay/kyc/upgrade2/KycUpgrade2ViewModel;ZLteam/opay/core/base/BaseFragmentV2;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1, v0}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
