.class public final Lteam/opay/pay/home/security/BiometricSettingViewModel;
.super Lteam/opay/pay/android/arch/BaseViewModel;
.source "BiometricSettingViewModel.kt"

# interfaces
.implements Lteam/opay/core/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/security/BiometricSettingViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0010JG\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u001d\u00102\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001d\u00105\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010/\u001a\u0004\u00084\u00101R\u001d\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u00086\u0010/\u001a\u0004\u00087\u00101R\u001f\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010/\u001a\u0004\u0008:\u00101R\u001f\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140,8\u0006\u00a2\u0006\u000c\n\u0004\u0008<\u0010/\u001a\u0004\u0008=\u00101R\u001d\u0010A\u001a\u0008\u0012\u0004\u0012\u00020-0,8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010/\u001a\u0004\u0008@\u00101R\u0014\u0010E\u001a\u00020B8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010DR\u0014\u0010I\u001a\u00020F8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0016\u0010M\u001a\u0004\u0018\u00010J8\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010L\u00a8\u0006N"
    }
    d2 = {
        "Lteam/opay/pay/home/security/BiometricSettingViewModel;",
        "Lteam/opay/pay/android/arch/BaseViewModel;",
        "Lteam/opay/core/api/e;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "biometricRepository",
        "sessionProvider",
        "Lteam/opay/core/api/Features;",
        "features",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/pay/biometric/BiometricRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V",
        "Lag8;",
        "lifecycleOwner",
        "",
        "v",
        "(Lag8;)V",
        "x",
        "Lteam/opay/pay/biometric/FingerData;",
        "fingerData",
        "",
        "fingerprintType",
        "Lteam/opay/pay/account/verify/VerifyEvent;",
        "verifyEvent",
        "userPwd",
        "source",
        "H",
        "(Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;)V",
        "K",
        "(Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/pay/biometric/BiometricRepository;",
        "d",
        "Lteam/opay/core/api/e;",
        "F",
        "()Lteam/opay/core/api/e;",
        "Lteam/opay/core/settings/SettingsStorage;",
        "e",
        "Lid8;",
        "G",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "z",
        "()Landroidx/lifecycle/MutableLiveData;",
        "deleteLoginEvent",
        "g",
        "A",
        "deletePaymentEvent",
        "h",
        "D",
        "resultEvent",
        "i",
        "B",
        "errorEvent",
        "j",
        "E",
        "saveBiometricErrorEvent",
        "k",
        "C",
        "loadingEvent",
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
.field public final b:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/biometric/BiometricRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/lifecycle/MutableLiveData;
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

.field public final g:Landroidx/lifecycle/MutableLiveData;
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

.field public final h:Landroidx/lifecycle/MutableLiveData;
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

.field public final i:Landroidx/lifecycle/MutableLiveData;
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

.field public final j:Landroidx/lifecycle/MutableLiveData;
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

.field public final k:Landroidx/lifecycle/MutableLiveData;
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
.method public constructor <init>(Landroid/app/Application;Lteam/opay/pay/biometric/BiometricRepository;Lteam/opay/core/api/e;Lteam/opay/core/api/Features;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/biometric/BiometricRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/core/api/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/core/api/Features;
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
    const-string v0, "biometricRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "features"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p4}, Lteam/opay/pay/android/arch/BaseViewModel;-><init>(Lteam/opay/core/api/Features;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->b:Landroid/app/Application;

    .line 25
    .line 26
    iput-object p2, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->c:Lteam/opay/pay/biometric/BiometricRepository;

    .line 27
    .line 28
    iput-object p3, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->d:Lteam/opay/core/api/e;

    .line 29
    .line 30
    new-instance p1, Lpc1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lpc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingViewModel;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->e:Lid8;

    .line 40
    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 47
    .line 48
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 68
    .line 69
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 82
    .line 83
    return-void
.end method

.method private final G()Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/SettingsStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic I(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v8, p6

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-virtual/range {v2 .. v8}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->H(Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final J(Lteam/opay/pay/home/security/BiometricSettingViewModel;Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lteam/opay/pay/home/security/BiometricSettingViewModel$a;->a:[I

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    aget v0, v1, v0

    .line 38
    .line 39
    if-eq v0, v3, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    if-eq v0, p1, :cond_2

    .line 43
    .line 44
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Ljava/lang/Boolean;

    .line 63
    .line 64
    if-eqz p3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->K(Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method public static final L(Lteam/opay/pay/home/security/BiometricSettingViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static synthetic r(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->y(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/home/security/BiometricSettingViewModel;Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->J(Lteam/opay/pay/home/security/BiometricSettingViewModel;Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lteam/opay/pay/home/security/BiometricSettingViewModel;)Lteam/opay/core/settings/SettingsStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->L(Lteam/opay/pay/home/security/BiometricSettingViewModel;)Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->w(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v1, Lteam/opay/pay/home/security/BiometricSettingViewModel$a;->a:[I

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
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static final y(Lteam/opay/pay/home/security/BiometricSettingViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
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
    sget-object v1, Lteam/opay/pay/home/security/BiometricSettingViewModel$a;->a:[I

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
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 59
    .line 60
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final B()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Lteam/opay/core/api/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->d:Lteam/opay/core/api/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H(Lag8;Lteam/opay/pay/biometric/FingerData;Ljava/lang/String;Lteam/opay/pay/account/verify/VerifyEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/biometric/FingerData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/account/verify/VerifyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    move-object/from16 v15, p3

    .line 8
    .line 9
    const-string v3, "lifecycleOwner"

    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "fingerData"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "fingerprintType"

    .line 20
    .line 21
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 25
    .line 26
    const-class v4, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    move-object v5, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v5, v4

    .line 44
    :goto_0
    if-eqz v5, :cond_6

    .line 45
    .line 46
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/biometric/FingerData;->c()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    new-instance v14, Lteam/opay/pay/biometric/SaveFingerReq;

    .line 66
    .line 67
    sget-object v3, Lteam/opay/swarmfoundation/device/AuthUtil;->a:Lteam/opay/swarmfoundation/device/AuthUtil;

    .line 68
    .line 69
    iget-object v6, v0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->b:Landroid/app/Application;

    .line 70
    .line 71
    invoke-virtual {v3, v6}, Lteam/opay/swarmfoundation/device/AuthUtil;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/biometric/FingerData;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-eqz p4, :cond_3

    .line 82
    .line 83
    invoke-virtual/range {p4 .. p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getValChainId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v10, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v10, v4

    .line 90
    :goto_1
    if-eqz p4, :cond_4

    .line 91
    .line 92
    invoke-virtual/range {p4 .. p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getSecurityId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    move-object v11, v3

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object v11, v4

    .line 99
    :goto_2
    if-eqz p4, :cond_5

    .line 100
    .line 101
    invoke-virtual/range {p4 .. p4}, Lteam/opay/pay/account/verify/VerifyEvent;->getRefreshToken()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v12, v3

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    move-object v12, v4

    .line 108
    :goto_3
    const/16 v16, 0x400

    .line 109
    .line 110
    const/16 v17, 0x0

    .line 111
    .line 112
    const/16 v18, 0x0

    .line 113
    .line 114
    move-object v3, v14

    .line 115
    move-object v4, v5

    .line 116
    move-object v5, v6

    .line 117
    move-object v6, v7

    .line 118
    move-object/from16 v7, p5

    .line 119
    .line 120
    move-object/from16 v9, p3

    .line 121
    .line 122
    move-object/from16 v13, p6

    .line 123
    .line 124
    move-object v1, v14

    .line 125
    move-object/from16 v14, v18

    .line 126
    .line 127
    move/from16 v15, v16

    .line 128
    .line 129
    move-object/from16 v16, v17

    .line 130
    .line 131
    invoke-direct/range {v3 .. v16}, Lteam/opay/pay/biometric/SaveFingerReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->c:Lteam/opay/pay/biometric/BiometricRepository;

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Lteam/opay/pay/biometric/BiometricRepository;->g(Lteam/opay/pay/biometric/SaveFingerReq;)Landroidx/lifecycle/LiveData;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v3, Lqc1;

    .line 141
    .line 142
    move-object/from16 v4, p3

    .line 143
    .line 144
    invoke-direct {v3, v0, v4, v2}, Lqc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingViewModel;Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;)V

    .line 145
    .line 146
    .line 147
    move-object/from16 v2, p1

    .line 148
    .line 149
    invoke-static {v1, v2, v3}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_4
    return-void
.end method

.method public final K(Ljava/lang/String;Lteam/opay/pay/biometric/FingerData;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/biometric/FingerData;->b()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/biometric/FingerData;->a()[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v1, "LOGIN_FINGERPRINT"

    .line 20
    .line 21
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object p1, Ldfa;->a:Ldfa;

    .line 28
    .line 29
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->G()Lteam/opay/core/settings/SettingsStorage;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1, v0}, Ldfa;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->G()Lteam/opay/core/settings/SettingsStorage;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Ldfa;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->G()Lteam/opay/core/settings/SettingsStorage;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, p2, v0}, Ldfa;->v(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "PAY_FINGERPRINT"

    .line 68
    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    sget-object p1, Lb62;->a:Lb62;

    .line 76
    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lb62;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Ldfa;->a:Ldfa;

    .line 84
    .line 85
    invoke-direct {p0}, Lteam/opay/pay/home/security/BiometricSettingViewModel;->G()Lteam/opay/core/settings/SettingsStorage;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, p2}, Ldfa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public m()Lteam/opay/core/api/GraphQL$User;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->d:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->d:Lteam/opay/core/api/e;

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
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->d:Lteam/opay/core/api/e;

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

.method public final v(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string v1, ""

    .line 25
    .line 26
    invoke-static {v0, v1}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lteam/opay/pay/biometric/DeleteFingerReq;

    .line 47
    .line 48
    const-string v2, "LOGIN_FINGERPRINT"

    .line 49
    .line 50
    invoke-direct {v1, v0, v2}, Lteam/opay/pay/biometric/DeleteFingerReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->c:Lteam/opay/pay/biometric/BiometricRepository;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricRepository;->e(Lteam/opay/pay/biometric/DeleteFingerReq;)Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lrc1;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lrc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingViewModel;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final x(Lag8;)V
    .locals 3
    .param p1    # Lag8;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Lteam/opay/swarmfoundation/data/IUserDataGenerator;->uid()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const-string v1, ""

    .line 25
    .line 26
    invoke-static {v0, v1}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lteam/opay/pay/biometric/DeleteFingerReq;

    .line 47
    .line 48
    const-string v2, "PAY_FINGERPRINT"

    .line 49
    .line 50
    invoke-direct {v1, v0, v2}, Lteam/opay/pay/biometric/DeleteFingerReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->c:Lteam/opay/pay/biometric/BiometricRepository;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lteam/opay/pay/biometric/BiometricRepository;->e(Lteam/opay/pay/biometric/DeleteFingerReq;)Landroidx/lifecycle/LiveData;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lsc1;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lsc1;-><init>(Lteam/opay/pay/home/security/BiometricSettingViewModel;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1, v1}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final z()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/home/security/BiometricSettingViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
