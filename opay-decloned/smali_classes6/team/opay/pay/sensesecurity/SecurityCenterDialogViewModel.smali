.class public final Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SecurityCenterDialogViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001f\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010\u001cR\u001f\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001a\u001a\u0004\u0008$\u0010\u001cR\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0013\u001a\u0004\u0008(\u0010)R\u001b\u0010.\u001a\u00020\"8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u0013\u001a\u0004\u0008,\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Landroid/app/Application;",
        "app",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "<init>",
        "(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "act",
        "",
        "D",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "b",
        "Landroid/app/Application;",
        "c",
        "Lteam/opay/core/settings/SettingsStorage;",
        "Lfv;",
        "d",
        "Lid8;",
        "x",
        "()Lfv;",
        "api",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "e",
        "Landroidx/lifecycle/MutableLiveData;",
        "z",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadingEvent",
        "Lteam/opay/pay/sensesecurity/SecurityCenterDialogRsp;",
        "f",
        "B",
        "securityHomeCardSuccessEvent",
        "",
        "g",
        "A",
        "securityHomeCardFailEvent",
        "Lteam/opay/pay/biometric/BiometricPromptManager;",
        "h",
        "y",
        "()Lteam/opay/pay/biometric/BiometricPromptManager;",
        "biometricManager",
        "i",
        "getHost",
        "()Ljava/lang/String;",
        "host",
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

.field public final c:Lteam/opay/core/settings/SettingsStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/lifecycle/MutableLiveData;
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
            "Lteam/opay/pay/sensesecurity/SecurityCenterDialogRsp;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/core/settings/SettingsStorage;
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
    const-string v0, "settingsStorage"

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
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->b:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->c:Lteam/opay/core/settings/SettingsStorage;

    .line 17
    .line 18
    new-instance p1, Liad;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Liad;-><init>(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->d:Lid8;

    .line 28
    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    new-instance p1, Ljad;

    .line 51
    .line 52
    invoke-direct {p1}, Ljad;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->h:Lid8;

    .line 60
    .line 61
    new-instance p1, Lkad;

    .line 62
    .line 63
    invoke-direct {p1}, Lkad;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->i:Lid8;

    .line 71
    .line 72
    return-void
.end method

.method public static final C()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "rewardsH5Host"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type kotlin.String"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public static final E(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

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
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->f()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogRsp;

    .line 31
    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogRsp;->c()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object p0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    .line 56
    .line 57
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->g()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method

.method public static synthetic r(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;)Lfv;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->v(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;)Lfv;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->w()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->E(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->C()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final v(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;)Lfv;
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/core/api/GraphQL;->a:Lteam/opay/core/api/GraphQL;

    .line 2
    .line 3
    iget-object p0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->b:Landroid/app/Application;

    .line 4
    .line 5
    const-class v1, Lfv;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lteam/opay/core/api/GraphQL;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lfv;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final w()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/biometric/BiometricPromptManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final x()Lfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->d:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfv;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->g:Landroidx/lifecycle/MutableLiveData;

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
            "Lteam/opay/pay/sensesecurity/SecurityCenterDialogRsp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final D(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->y()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lteam/opay/pay/biometric/BiometricPromptManager;->p(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->y()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Lteam/opay/pay/biometric/BiometricPromptManager;->m(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sget-object v2, Ldfa;->a:Ldfa;

    .line 21
    .line 22
    iget-object v3, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->c:Lteam/opay/core/settings/SettingsStorage;

    .line 23
    .line 24
    invoke-virtual {v3}, Lteam/opay/core/settings/SettingsStorage;->K()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ldfa;->c(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    :goto_0
    sget-object v2, Lb62;->a:Lb62;

    .line 38
    .line 39
    invoke-virtual {v2}, Lb62;->c()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const-string v0, "NON"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-eqz v1, :cond_4

    .line 49
    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    :cond_3
    const-string v0, "Y"

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string v0, "N"

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->y()Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lteam/opay/pay/biometric/BiometricPromptManager;->l(Landroid/app/Activity;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lteam/opay/core/android/arch/RequestBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Lteam/opay/core/android/arch/RequestBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "00000"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lteam/opay/core/android/arch/RequestBuilder;->e(Ljava/lang/String;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, p0}, Lteam/opay/core/android/arch/RequestBuilder;->v(Landroidx/lifecycle/AndroidViewModel;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {p0}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->x()Lfv;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Lteam/opay/pay/sensesecurity/SecurityCenterReq;

    .line 87
    .line 88
    invoke-direct {v4, v0, v1}, Lteam/opay/pay/sensesecurity/SecurityCenterReq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v4}, Lfv;->X0(Lteam/opay/pay/sensesecurity/SecurityCenterReq;)Lretrofit2/Call;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Lteam/opay/core/android/arch/RequestBuilder;->a(Lretrofit2/Call;)Lteam/opay/core/android/arch/RequestBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lteam/opay/core/android/arch/RequestBuilder;->b()Landroidx/lifecycle/LiveData;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Llad;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Llad;-><init>(Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel$a;

    .line 109
    .line 110
    invoke-direct {v2, v1}, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final y()Lteam/opay/pay/biometric/BiometricPromptManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->h:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/biometric/BiometricPromptManager;

    .line 8
    .line 9
    return-object v0
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
    iget-object v0, p0, Lteam/opay/pay/sensesecurity/SecurityCenterDialogViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method
